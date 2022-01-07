; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_sndout_oss.c_sndout_oss_start.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_sndout_oss.c_sndout_oss_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sndout_oss_start.s_oldrate = internal global i32 0, align 4
@sndout_oss_start.s_oldstereo = internal global i32 0, align 4
@sounddev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"open(\22/dev/dsp\22)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/dsp1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"open(\22/dev/dsp1\22)\00", align 1
@sndout_oss_frag_frames = common dso_local global i32 0, align 4
@FRAG_COUNT = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFRAGMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"SNDCTL_DSP_SETFRAGMENT failed\00", align 1
@SNDCTL_DSP_STEREO = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to set audio format\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"sndout_oss_start: %d/%dbit/%s, %d buffers of %i bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@can_write_safe = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sndout_oss_start(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @sounddev, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @sndout_oss_start.s_oldrate, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @sndout_oss_start.s_oldstereo, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %100

21:                                               ; preds = %16, %12, %2
  %22 = call i32 (...) @sndout_oss_stop()
  %23 = load i32, i32* @O_WRONLY, align 4
  %24 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* @sounddev, align 4
  %25 = load i32, i32* @sounddev, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 %30, i32* @sounddev, align 4
  %31 = load i32, i32* @sounddev, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %100

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* @sndout_oss_frag_frames, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 50
  %41 = mul nsw i32 %40, 4
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %46, %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %42

51:                                               ; preds = %42
  %52 = load i32, i32* @FRAG_COUNT, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @sounddev, align 4
  %57 = load i32, i32* @SNDCTL_DSP_SETFRAGMENT, align 4
  %58 = call i32 @ioctl(i32 %56, i32 %57, i32* %6)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %51
  store i32 16, i32* %8, align 4
  %64 = load i32, i32* @sounddev, align 4
  %65 = load i32, i32* @SNDCTL_DSP_STEREO, align 4
  %66 = call i32 @ioctl(i32 %64, i32 %65, i32* %5)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @sounddev, align 4
  %71 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %72 = call i32 @ioctl(i32 %70, i32 %71, i32* %8)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @sounddev, align 4
  %78 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %79 = call i32 @ioctl(i32 %77, i32 %78, i32* %4)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, 16
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 65535
  %96 = shl i32 1, %95
  %97 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 %87, i8* %91, i32 %93, i32 %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* @sndout_oss_start.s_oldrate, align 4
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* @sndout_oss_start.s_oldstereo, align 4
  store i64 0, i64* @can_write_safe, align 8
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %85, %33, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @sndout_oss_stop(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
