; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_async.c_async_buffer_task.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_async.c_async_buffer_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32 }

@AVERROR_EXIT = common dso_local global i64 0, align 8
@wrapped_url_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @async_buffer_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @async_buffer_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 12
  store i32* %16, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %1, %61, %85, %128
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = call i32 @pthread_mutex_lock(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = call i64 @async_check_interrupt(%struct.TYPE_4__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i64, i64* @AVERROR_EXIT, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = call i32 @pthread_cond_signal(i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  br label %135

36:                                               ; preds = %17
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ffurl_seek(i32 %44, i32 %47, i32 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ring_reset(i32* %59)
  br label %61

61:                                               ; preds = %54, %41
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = call i32 @pthread_cond_signal(i32* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = call i32 @pthread_mutex_unlock(i32* %73)
  br label %17

75:                                               ; preds = %36
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ring_space(i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82, %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = call i32 @pthread_cond_signal(i32* %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = call i32 @pthread_cond_wait(i32* %90, i32* %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  br label %17

97:                                               ; preds = %82
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = call i32 @pthread_mutex_unlock(i32* %99)
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @FFMIN(i32 4096, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = bitcast %struct.TYPE_4__* %104 to i8*
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @wrapped_url_read, align 4
  %108 = call i32 @ring_generic_write(i32* %103, i8* %105, i32 %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = call i32 @pthread_mutex_lock(i32* %110)
  %112 = load i32, i32* %6, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %97
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %114
  br label %128

128:                                              ; preds = %127, %97
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  %131 = call i32 @pthread_cond_signal(i32* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = call i32 @pthread_mutex_unlock(i32* %133)
  br label %17

135:                                              ; preds = %24
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @async_check_interrupt(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @ffurl_seek(i32, i32, i32) #1

declare dso_local i32 @ring_reset(i32*) #1

declare dso_local i32 @ring_space(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ring_generic_write(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
