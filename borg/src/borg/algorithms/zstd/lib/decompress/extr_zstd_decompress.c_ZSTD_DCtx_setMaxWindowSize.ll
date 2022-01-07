; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_DCtx_setMaxWindowSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_DCtx_setMaxWindowSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@ZSTD_d_windowLogMax = common dso_local global i32 0, align 4
@zdss_init = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@parameter_outOfBound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_DCtx_setMaxWindowSize(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @ZSTD_d_windowLogMax, align 4
  %10 = call { i64, i64 } @ZSTD_dParam_getBounds(i32 %9)
  %11 = bitcast %struct.TYPE_5__* %6 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %10, 0
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = shl i64 1, %17
  store i64 %18, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 1, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @zdss_init, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @stage_wrong, align 4
  %29 = call i64 @ERROR(i32 %28)
  store i64 %29, i64* %3, align 8
  br label %48

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @parameter_outOfBound, align 4
  %36 = call i64 @ERROR(i32 %35)
  store i64 %36, i64* %3, align 8
  br label %48

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @parameter_outOfBound, align 4
  %43 = call i64 @ERROR(i32 %42)
  store i64 %43, i64* %3, align 8
  br label %48

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %44, %41, %34, %27
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local { i64, i64 } @ZSTD_dParam_getBounds(i32) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
