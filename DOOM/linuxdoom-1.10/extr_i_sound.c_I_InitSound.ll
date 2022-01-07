; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_I_InitSound.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_I_InitSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"I_InitSound: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@audio_fd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not open /dev/dsp\0A\00", align 1
@SNDCTL_DSP_SETFRAGMENT = common dso_local global i32 0, align 4
@SNDCTL_DSP_RESET = common dso_local global i32 0, align 4
@SAMPLERATE = common dso_local global i32 0, align 4
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@SNDCTL_DSP_STEREO = common dso_local global i32 0, align 4
@SNDCTL_DSP_GETFMTS = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not play signed 16 data\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" configured audio device\0A\00", align 1
@NUMSFX = common dso_local global i32 0, align 4
@S_sfx = common dso_local global %struct.TYPE_2__* null, align 8
@lengths = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c" pre-cached all sound data\0A\00", align 1
@MIXBUFFERSIZE = common dso_local global i32 0, align 4
@mixbuffer = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"I_InitSound: sound module ready\0A\00", align 1
@SOUND_INTERVAL = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@sndserver = common dso_local global i32 0, align 4
@sndserver_filename = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_InitSound() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stderr, align 4
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @O_WRONLY, align 4
  %5 = call i64 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  store i64 %5, i64* @audio_fd, align 8
  %6 = load i64, i64* @audio_fd, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %0
  store i32 131083, i32* %1, align 4
  %12 = load i64, i64* @audio_fd, align 8
  %13 = load i32, i32* @SNDCTL_DSP_SETFRAGMENT, align 4
  %14 = call i32 @myioctl(i64 %12, i32 %13, i32* %1)
  %15 = load i64, i64* @audio_fd, align 8
  %16 = load i32, i32* @SNDCTL_DSP_RESET, align 4
  %17 = call i32 @myioctl(i64 %15, i32 %16, i32* null)
  %18 = load i32, i32* @SAMPLERATE, align 4
  store i32 %18, i32* %1, align 4
  %19 = load i64, i64* @audio_fd, align 8
  %20 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %21 = call i32 @myioctl(i64 %19, i32 %20, i32* %1)
  store i32 1, i32* %1, align 4
  %22 = load i64, i64* @audio_fd, align 8
  %23 = load i32, i32* @SNDCTL_DSP_STEREO, align 4
  %24 = call i32 @myioctl(i64 %22, i32 %23, i32* %1)
  %25 = load i64, i64* @audio_fd, align 8
  %26 = load i32, i32* @SNDCTL_DSP_GETFMTS, align 4
  %27 = call i32 @myioctl(i64 %25, i32 %26, i32* %1)
  %28 = load i32, i32* @AFMT_S16_LE, align 4
  %29 = load i32, i32* %1, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load i64, i64* @audio_fd, align 8
  %34 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %35 = call i32 @myioctl(i64 %33, i32 %34, i32* %1)
  br label %39

36:                                               ; preds = %11
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %44

44:                                               ; preds = %107, %39
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @NUMSFX, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %44
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @lengths, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @getsfx(i32 %62, i32* %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %67, i32* %72, align 8
  br label %106

73:                                               ; preds = %48
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 8
  %87 = load i32*, i32** @lengths, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %95 = ptrtoint %struct.TYPE_2__* %93 to i64
  %96 = ptrtoint %struct.TYPE_2__* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 16
  %99 = udiv i64 %98, 4
  %100 = getelementptr inbounds i32, i32* %87, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @lengths, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %73, %56
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %44

110:                                              ; preds = %44
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %113

113:                                              ; preds = %122, %110
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* @MIXBUFFERSIZE, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i64*, i64** @mixbuffer, align 8
  %119 = load i32, i32* %1, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %1, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %1, align 4
  br label %113

125:                                              ; preds = %113
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @myioctl(i64, i32, i32*) #1

declare dso_local i32 @getsfx(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
