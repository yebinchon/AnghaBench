; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_alloc_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_alloc_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__**, i64, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error initializing threading: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @avfilter_graph_alloc_filter(%struct.TYPE_13__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  br label %47

35:                                               ; preds = %22
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = call i32 @ff_graph_thread_init(%struct.TYPE_13__* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @av_err2str(i32 %43)
  %45 = call i32 @av_log(%struct.TYPE_13__* %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %90

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %27
  br label %48

48:                                               ; preds = %47, %15, %3
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call %struct.TYPE_14__* @ff_filter_alloc(i32* %49, i8* %50)
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %9, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %90

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call %struct.TYPE_14__** @av_realloc(%struct.TYPE_14__** %58, i32 %65)
  store %struct.TYPE_14__** %66, %struct.TYPE_14__*** %8, align 8
  %67 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %68 = icmp ne %struct.TYPE_14__** %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %55
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = call i32 @avfilter_free(%struct.TYPE_14__* %70)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %90

72:                                               ; preds = %55
  %73 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store %struct.TYPE_14__** %73, %struct.TYPE_14__*** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %79, i64 %84
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %4, align 8
  br label %90

90:                                               ; preds = %72, %69, %54, %40
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %91
}

declare dso_local i32 @ff_graph_thread_init(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local %struct.TYPE_14__* @ff_filter_alloc(i32*, i8*) #1

declare dso_local %struct.TYPE_14__** @av_realloc(%struct.TYPE_14__**, i32) #1

declare dso_local i32 @avfilter_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
