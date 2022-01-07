; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_CCtxParam_setMTCtxParameter.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_CCtxParam_setMTCtxParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ZSTDMT_CCtxParam_setMTCtxParameter\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"ZSTDMT_CCtxParam_setMTCtxParameter : set jobSize to %i\00", align 1
@ZSTDMT_JOBSIZE_MIN = common dso_local global i32 0, align 4
@ZSTDMT_JOBSIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ZSTDMT_p_overlapLog : %i\00", align 1
@ZSTD_OVERLAPLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_OVERLAPLOG_MAX = common dso_local global i32 0, align 4
@parameter_unsupported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDMT_CCtxParam_setMTCtxParameter(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %66 [
    i32 130, label %10
    i32 129, label %37
    i32 128, label %57
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ZSTDMT_JOBSIZE_MIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ZSTDMT_JOBSIZE_MIN, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %15, %10
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ZSTDMT_JOBSIZE_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @ZSTDMT_JOBSIZE_MAX, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  br label %69

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ZSTD_OVERLAPLOG_MIN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ZSTD_OVERLAPLOG_MIN, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ZSTD_OVERLAPLOG_MAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ZSTD_OVERLAPLOG_MAX, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %4, align 8
  br label %69

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %4, align 8
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @parameter_unsupported, align 4
  %68 = call i64 @ERROR(i32 %67)
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %66, %57, %51, %31
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
