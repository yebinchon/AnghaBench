; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_DCtx_reset.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_DCtx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@ZSTD_reset_session_only = common dso_local global i64 0, align 8
@ZSTD_reset_session_and_parameters = common dso_local global i64 0, align 8
@ZSTD_reset_parameters = common dso_local global i64 0, align 8
@zdss_init = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@ZSTD_f_zstd1 = common dso_local global i32 0, align 4
@ZSTD_MAXWINDOWSIZE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_DCtx_reset(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ZSTD_reset_session_only, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ZSTD_reset_session_and_parameters, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i32 @ZSTD_initDStream(%struct.TYPE_4__* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ZSTD_reset_parameters, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ZSTD_reset_session_and_parameters, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20, %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @zdss_init, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @stage_wrong, align 4
  %32 = call i64 @ERROR(i32 %31)
  store i64 %32, i64* %3, align 8
  br label %41

33:                                               ; preds = %24
  %34 = load i32, i32* @ZSTD_f_zstd1, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ZSTD_MAXWINDOWSIZE_DEFAULT, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %20
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i32 @ZSTD_initDStream(%struct.TYPE_4__*) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
