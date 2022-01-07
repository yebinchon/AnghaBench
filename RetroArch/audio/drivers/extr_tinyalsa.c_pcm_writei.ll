; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_writei.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_writei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm = type { i32, i32, i32, i64, i32 }
%struct.snd_xferi = type { i32, i32, i8* }

@PCM_IN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_WRITEI_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[TINYALSA]: Cannot write initial data.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PCM_NORESTART = common dso_local global i32 0, align 4
@TINYALSA_FRAMES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm*, i8*, i32)* @pcm_writei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_writei(%struct.pcm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_xferi, align 8
  %9 = alloca i32, align 4
  store %struct.pcm* %0, %struct.pcm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pcm*, %struct.pcm** %5, align 8
  %11 = getelementptr inbounds %struct.pcm, %struct.pcm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCM_IN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %90

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @INT_MAX, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds %struct.snd_xferi, %struct.snd_xferi* %8, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.snd_xferi, %struct.snd_xferi* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.snd_xferi, %struct.snd_xferi* %8, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %85, %26
  %33 = load %struct.pcm*, %struct.pcm** %5, align 8
  %34 = getelementptr inbounds %struct.pcm, %struct.pcm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = load %struct.pcm*, %struct.pcm** %5, align 8
  %39 = call i32 @pcm_prepare(%struct.pcm* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %90

44:                                               ; preds = %37
  %45 = load %struct.pcm*, %struct.pcm** %5, align 8
  %46 = getelementptr inbounds %struct.pcm, %struct.pcm* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SNDRV_PCM_IOCTL_WRITEI_FRAMES, align 4
  %49 = call i64 @ioctl(i32 %47, i32 %48, %struct.snd_xferi* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %90

53:                                               ; preds = %44
  %54 = load %struct.pcm*, %struct.pcm** %5, align 8
  %55 = getelementptr inbounds %struct.pcm, %struct.pcm* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %90

56:                                               ; preds = %32
  %57 = load %struct.pcm*, %struct.pcm** %5, align 8
  %58 = getelementptr inbounds %struct.pcm, %struct.pcm* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SNDRV_PCM_IOCTL_WRITEI_FRAMES, align 4
  %61 = call i64 @ioctl(i32 %59, i32 %60, %struct.snd_xferi* %8)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %56
  %64 = load %struct.pcm*, %struct.pcm** %5, align 8
  %65 = getelementptr inbounds %struct.pcm, %struct.pcm* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.pcm*, %struct.pcm** %5, align 8
  %67 = getelementptr inbounds %struct.pcm, %struct.pcm* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = load i32, i32* @EPIPE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load %struct.pcm*, %struct.pcm** %5, align 8
  %73 = getelementptr inbounds %struct.pcm, %struct.pcm* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.pcm*, %struct.pcm** %5, align 8
  %77 = getelementptr inbounds %struct.pcm, %struct.pcm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PCM_NORESTART, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EPIPE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %71
  br label %32

86:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %90

87:                                               ; preds = %56
  %88 = getelementptr inbounds %struct.snd_xferi, %struct.snd_xferi* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %86, %82, %53, %51, %42, %23, %16
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @pcm_prepare(%struct.pcm*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.snd_xferi*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
