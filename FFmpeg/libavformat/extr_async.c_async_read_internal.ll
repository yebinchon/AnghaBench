; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_async.c_async_read_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_async.c_async_read_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32 }

@AVERROR_EXIT = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32, void (i8*, i8*, i32)*)* @async_read_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_read_internal(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, void (i8*, i8*, i32)* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (i8*, i8*, i32)*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store void (i8*, i8*, i32)* %4, void (i8*, i8*, i32)** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %11, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  store i32* %21, i32** %12, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  br label %26

26:                                               ; preds = %99, %5
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %108

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i64 @async_check_interrupt(%struct.TYPE_5__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %34, i32* %14, align 4
  br label %108

35:                                               ; preds = %29
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @ring_size(i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @FFMIN(i32 %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %35
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %48 = call i32 @ring_generic_read(i32* %44, i8* %45, i32 %46, void (i8*, i8*, i32)* %47)
  %49 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %50 = icmp ne void (i8*, i8*, i32)* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %7, align 8
  br label %58

58:                                               ; preds = %51, %43
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %58
  br label %108

76:                                               ; preds = %72
  br label %99

77:                                               ; preds = %35
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %14, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96, %82
  br label %108

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = call i32 @pthread_cond_signal(i32* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = call i32 @pthread_cond_wait(i32* %104, i32* %106)
  br label %26

108:                                              ; preds = %97, %75, %33, %26
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = call i32 @pthread_cond_signal(i32* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = call i32 @pthread_mutex_unlock(i32* %113)
  %115 = load i32, i32* %14, align 4
  ret i32 %115
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @async_check_interrupt(%struct.TYPE_5__*) #1

declare dso_local i32 @ring_size(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ring_generic_read(i32*, i8*, i32, void (i8*, i8*, i32)*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
