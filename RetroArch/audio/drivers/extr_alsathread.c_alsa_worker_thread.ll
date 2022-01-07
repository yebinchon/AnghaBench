; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsathread.c_alsa_worker_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsathread.c_alsa_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to allocate audio buffer\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"[ALSA]: (#2) Failed to recover from error (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"[ALSA]: Unknown error occurred (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @alsa_worker_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alsa_worker_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @calloc(i32 1, i64 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %107

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %105, %96, %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %106

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @slock_lock(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @fifo_read_avail(i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @MIN(i64 %37, i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @fifo_read(i32 %42, i32* %43, i64 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @scond_signal(i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @slock_unlock(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %59, %60
  %62 = call i32 @memset(i32* %56, i32 0, i64 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @snd_pcm_writei(i32 %65, i32* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @EPIPE, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %26
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @EINTR, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @ESTRPIPE, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %80, %75, %26
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @snd_pcm_recover(i32 %88, i32 %89, i32 1)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @snd_strerror(i32 %93)
  %95 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %106

96:                                               ; preds = %85
  br label %20

97:                                               ; preds = %80
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @snd_strerror(i32 %101)
  %103 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %106

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  br label %20

106:                                              ; preds = %100, %92, %20
  br label %107

107:                                              ; preds = %106, %17
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @slock_lock(i32 %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @scond_signal(i32 %116)
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @slock_unlock(i32 %120)
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @free(i32* %122)
  ret void
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i64 @fifo_read_avail(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @fifo_read(i32, i32*, i64) #1

declare dso_local i32 @scond_signal(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @snd_pcm_writei(i32, i32*, i32) #1

declare dso_local i64 @snd_pcm_recover(i32, i32, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
