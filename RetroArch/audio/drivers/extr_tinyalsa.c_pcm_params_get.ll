; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_params_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_params_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_params = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"/dev/snd/pcmC%uD%u%c\00", align 1
@PCM_IN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot open device '%s'\0A\00", align 1
@SNDRV_PCM_IOCTL_HW_REFINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SNDRV_PCM_IOCTL_HW_REFINE error (%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcm_params* (i32, i32, i32)* @pcm_params_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcm_params* @pcm_params_get(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcm_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_hw_params*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PCM_IN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 99, i32 112
  %20 = trunc i32 %19 to i8
  %21 = call i32 @snprintf(i8* %11, i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i8 signext %20)
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i8* %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @stderr, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %62

33:                                               ; preds = %3
  %34 = call i64 @calloc(i32 1, i32 4)
  %35 = inttoptr i64 %34 to %struct.snd_pcm_hw_params*
  store %struct.snd_pcm_hw_params* %35, %struct.snd_pcm_hw_params** %8, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %37 = icmp ne %struct.snd_pcm_hw_params* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %59

39:                                               ; preds = %33
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %41 = call i32 @param_init(%struct.snd_pcm_hw_params* %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @SNDRV_PCM_IOCTL_HW_REFINE, align 4
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %45 = call i64 @ioctl(i32 %42, i32 %43, %struct.snd_pcm_hw_params* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %56

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %55 = bitcast %struct.snd_pcm_hw_params* %54 to %struct.pcm_params*
  store %struct.pcm_params* %55, %struct.pcm_params** %4, align 8
  br label %63

56:                                               ; preds = %47
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %58 = call i32 @free(%struct.snd_pcm_hw_params* %57)
  br label %59

59:                                               ; preds = %56, %38
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %59, %29
  store %struct.pcm_params* null, %struct.pcm_params** %4, align 8
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.pcm_params*, %struct.pcm_params** %4, align 8
  ret %struct.pcm_params* %64
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8 signext) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @param_init(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
