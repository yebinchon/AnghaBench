; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_dParam_getBounds.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_dParam_getBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@ZSTD_WINDOWLOG_ABSOLUTEMIN = common dso_local global i32 0, align 4
@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_f_zstd1 = common dso_local global i64 0, align 8
@ZSTD_f_zstd1_magicless = common dso_local global i64 0, align 8
@parameter_unsupported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTD_dParam_getBounds(%struct.TYPE_3__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 24, i1 false)
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %23 [
    i32 128, label %6
    i32 129, label %11
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @ZSTD_WINDOWLOG_ABSOLUTEMIN, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load i64, i64* @ZSTD_f_zstd1, align 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i64, i64* @ZSTD_f_zstd1_magicless, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* @ZSTD_f_zstd1, align 8
  %19 = load i64, i64* @ZSTD_f_zstd1_magicless, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ZSTD_STATIC_ASSERT(i32 %21)
  br label %28

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @parameter_unsupported, align 4
  %26 = call i32 @ERROR(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %11, %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #2

declare dso_local i32 @ERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
