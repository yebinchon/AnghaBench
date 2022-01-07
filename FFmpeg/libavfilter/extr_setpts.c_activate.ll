; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_setpts.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_setpts.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__**, %struct.TYPE_17__**, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { double* }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"N:EOF PTS:%s T:%f POS:%s -> PTS:%s T:%f\0A\00", align 1
@VAR_PTS = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@VAR_POS = common dso_local global i64 0, align 8
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %5, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %22, i64 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %6, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_17__* %25, %struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @ff_inlink_consume_frame(%struct.TYPE_17__* %28, i32** %7)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %1
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @filter_frame(%struct.TYPE_17__* %38, i32* %39)
  store i32 %40, i32* %2, align 4
  br label %90

41:                                               ; preds = %34
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = call i64 @ff_inlink_acknowledge_status(%struct.TYPE_17__* %42, i32* %8, i32* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call double @eval_pts(%struct.TYPE_16__* %46, %struct.TYPE_17__* %47, i32* null, i32 %48)
  store double %49, double* %11, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = load i32, i32* @AV_LOG_TRACE, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = load i64, i64* @VAR_PTS, align 8
  %56 = getelementptr inbounds double, double* %54, i64 %55
  %57 = load double, double* %56, align 8
  %58 = call i32 @d2istr(double %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = load i64, i64* @VAR_T, align 8
  %63 = getelementptr inbounds double, double* %61, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load double*, double** %66, align 8
  %68 = load i64, i64* @VAR_POS, align 8
  %69 = getelementptr inbounds double, double* %67, i64 %68
  %70 = load double, double* %69, align 8
  %71 = call i32 @d2istr(double %70)
  %72 = load double, double* %11, align 8
  %73 = call i32 @d2istr(double %72)
  %74 = load double, double* %11, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TS2T(double %74, i32 %77)
  %79 = call i32 @av_log(%struct.TYPE_18__* %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, double %64, i32 %71, i32 %73, i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load double, double* %11, align 8
  %83 = call i32 @D2TS(double %82)
  %84 = call i32 @ff_outlink_set_status(%struct.TYPE_17__* %80, i32 %81, i32 %83)
  store i32 0, i32* %2, align 4
  br label %90

85:                                               ; preds = %41
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = call i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_17__* %86, %struct.TYPE_17__* %87)
  %89 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %45, %37, %32
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_17__*, i32**) #1

declare dso_local i32 @filter_frame(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @ff_inlink_acknowledge_status(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local double @eval_pts(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32, double, i32, i32, i32) #1

declare dso_local i32 @d2istr(double) #1

declare dso_local i32 @TS2T(double, i32) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @D2TS(double) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
