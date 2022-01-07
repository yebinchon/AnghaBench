; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_wait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_SYNC_PTR = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm*, i32)* @pcm_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_wait(%struct.pcm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pollfd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcm* %0, %struct.pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pcm*, %struct.pcm** %4, align 8
  %10 = getelementptr inbounds %struct.pcm, %struct.pcm* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @POLLIN, align 4
  %14 = load i32, i32* @POLLOUT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @POLLERR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @POLLNVAL, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %89, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @poll(%struct.pollfd* %6, i32 1, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @errno, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %99

33:                                               ; preds = %29
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @EINTR, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %89

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @POLLERR, align 4
  %43 = load i32, i32* @POLLNVAL, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  %48 = load %struct.pcm*, %struct.pcm** %4, align 8
  %49 = getelementptr inbounds %struct.pcm, %struct.pcm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.pcm*, %struct.pcm** %4, align 8
  %54 = getelementptr inbounds %struct.pcm, %struct.pcm* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.pcm*, %struct.pcm** %4, align 8
  %58 = getelementptr inbounds %struct.pcm, %struct.pcm* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SNDRV_PCM_IOCTL_SYNC_PTR, align 4
  %61 = load %struct.pcm*, %struct.pcm** %4, align 8
  %62 = getelementptr inbounds %struct.pcm, %struct.pcm* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i64 @ioctl(i32 %59, i32 %60, %struct.TYPE_4__* %63)
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load %struct.pcm*, %struct.pcm** %4, align 8
  %68 = getelementptr inbounds %struct.pcm, %struct.pcm* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %52
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %84 [
    i32 128, label %75
    i32 129, label %78
    i32 130, label %81
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* @EPIPE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %99

78:                                               ; preds = %73
  %79 = load i32, i32* @ESTRPIPE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %99

81:                                               ; preds = %73
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %99

88:                                               ; preds = %39
  br label %89

89:                                               ; preds = %88, %38
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @POLLIN, align 4
  %93 = load i32, i32* @POLLOUT, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %21, label %98

98:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %85, %81, %78, %75, %32, %26
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
