; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound_oss.c_PLATFORM_SoundSetup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound_oss.c_PLATFORM_SoundSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@Sound_enabled = common dso_local global i64 0, align 8
@dsp_fd = common dso_local global i32 0, align 4
@dspname = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: SNDCTL_DSP_SETFRAGMENT(%.8x) failed\00", align 1
@AFMT_S16_NE = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: SNDCTL_DSP_SETFMT(%i) failed\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: Obtained format %i not supported\00", align 1
@SNDCTL_DSP_CHANNELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: SNDCTL_DSP_CHANNELS(%u) failed\00", align 1
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: SNDCTL_DSP_SPEED(%u) failed\00", align 1
@SNDCTL_DSP_GETBLKSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: SNDCTL_DSP_GETBLKSIZE failed\00", align 1
@SNDCTL_DSP_GETOSPACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: cannot retrieve ospace\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_SoundSetup(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load i64, i64* @Sound_enabled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @dsp_fd, align 4
  %14 = call i32 @close(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @dspname, align 4
  %17 = load i32, i32* @O_WRONLY, align 4
  %18 = call i32 @open(i32 %16, i32 %17)
  store i32 %18, i32* @dsp_fd, align 4
  %19 = load i32, i32* @dsp_fd, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @dspname, align 4
  %23 = call i32 @perror(i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %186

25:                                               ; preds = %15
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 50
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  store i32 2147418112, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %54, %39
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %50

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* @dsp_fd, align 4
  %68 = load i32, i32* @SNDCTL_DSP_SETFRAGMENT, align 4
  %69 = call i32 @ioctl(i32 %67, i32 %68, i32* %6)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @dspname, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @dsp_fd, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %2, align 4
  br label %186

78:                                               ; preds = %66
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @AFMT_S16_NE, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @AFMT_U8, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @dsp_fd, align 4
  %90 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %91 = call i32 @ioctl(i32 %89, i32 %90, i32* %4)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i32, i32* @dspname, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @dsp_fd, align 4
  %98 = call i32 @close(i32 %97)
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %2, align 4
  br label %186

100:                                              ; preds = %87
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @AFMT_S16_NE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i32 2, i32* %106, align 4
  br label %122

107:                                              ; preds = %100
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @AFMT_U8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i32 1, i32* %113, align 4
  br label %121

114:                                              ; preds = %107
  %115 = load i32, i32* @dspname, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* @dsp_fd, align 4
  %119 = call i32 @close(i32 %118)
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %2, align 4
  br label %186

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i32, i32* @dsp_fd, align 4
  %124 = load i32, i32* @SNDCTL_DSP_CHANNELS, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = call i32 @ioctl(i32 %123, i32 %124, i32* %126)
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32, i32* @dspname, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %133)
  %135 = load i32, i32* @dsp_fd, align 4
  %136 = call i32 @close(i32 %135)
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %2, align 4
  br label %186

138:                                              ; preds = %122
  %139 = load i32, i32* @dsp_fd, align 4
  %140 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = call i32 @ioctl(i32 %139, i32 %140, i32* %142)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load i32, i32* @dspname, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %149)
  %151 = load i32, i32* @dsp_fd, align 4
  %152 = call i32 @close(i32 %151)
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %2, align 4
  br label %186

154:                                              ; preds = %138
  %155 = load i32, i32* @dsp_fd, align 4
  %156 = load i32, i32* @SNDCTL_DSP_GETBLKSIZE, align 4
  %157 = call i32 @ioctl(i32 %155, i32 %156, i32* %5)
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* @dspname, align 4
  %161 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @dsp_fd, align 4
  %163 = call i32 @close(i32 %162)
  %164 = load i32, i32* @FALSE, align 4
  store i32 %164, i32* %2, align 4
  br label %186

165:                                              ; preds = %154
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %166, %169
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %170, %173
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @dsp_fd, align 4
  %178 = load i32, i32* @SNDCTL_DSP_GETOSPACE, align 4
  %179 = call i32 @ioctl(i32 %177, i32 %178, i32* %9)
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %184

181:                                              ; preds = %165
  %182 = load i32, i32* @dspname, align 4
  %183 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  store i32 0, i32* %2, align 4
  br label %186

184:                                              ; preds = %165
  %185 = load i32, i32* @TRUE, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %184, %181, %159, %145, %129, %114, %93, %71, %21
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @Log_print(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
