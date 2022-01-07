; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_slice.c_ff_slice_thread_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_slice.c_ff_slice_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ff_slice_thread_init.mainfunc = internal global void (i8*)* null, align 8
@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i64 0, align 8
@MAX_AUTO_THREADS = common dso_local global i32 0, align 4
@FF_CODEC_CAP_SLICE_THREAD_HAS_MF = common dso_local global i32 0, align 4
@worker_func = common dso_local global i32 0, align 4
@thread_execute = common dso_local global i32 0, align 4
@thread_execute2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_slice_thread_init(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = call i64 @av_codec_is_encoder(%struct.TYPE_12__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AV_CODEC_ID_MPEG1VIDEO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 2800
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %21, %15, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29
  %33 = call i32 (...) @av_cpu_count()
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 15
  %44 = sdiv i32 %43, 16
  %45 = call i8* @FFMIN(i32 %39, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %32
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @MAX_AUTO_THREADS, align 4
  %54 = call i8* @FFMIN(i32 %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 %55, i32* %5, align 4
  br label %61

58:                                               ; preds = %47
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  store i32 0, i32* %2, align 4
  br label %122

68:                                               ; preds = %62
  %69 = call %struct.TYPE_10__* @av_mallocz(i32 4)
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %4, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FF_CODEC_CAP_SLICE_THREAD_HAS_MF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, void (i8*)* @main_function, void (i8*)* null
  store void (i8*)* %83, void (i8*)** @ff_slice_thread_init.mainfunc, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %68
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = load i32, i32* @worker_func, align 4
  %91 = load void (i8*)*, void (i8*)** @ff_slice_thread_init.mainfunc, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @avpriv_slicethread_create(i32* %88, %struct.TYPE_11__* %89, i32 %90, void (i8*)* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = icmp sle i32 %93, 1
  br i1 %94, label %95, label %112

95:                                               ; preds = %86, %68
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = icmp ne %struct.TYPE_10__* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = call i32 @avpriv_slicethread_free(i32* %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = call i32 @av_freep(%struct.TYPE_10__** %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  store i64 0, i64* %111, align 8
  store i32 0, i32* %2, align 4
  br label %122

112:                                              ; preds = %86
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @thread_execute, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @thread_execute2, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %112, %102, %65
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @av_codec_is_encoder(%struct.TYPE_12__*) #1

declare dso_local i32 @av_cpu_count(...) #1

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local %struct.TYPE_10__* @av_mallocz(i32) #1

declare dso_local void @main_function(i8*) #1

declare dso_local i32 @avpriv_slicethread_create(i32*, %struct.TYPE_11__*, i32, void (i8*)*, i32) #1

declare dso_local i32 @avpriv_slicethread_free(i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
