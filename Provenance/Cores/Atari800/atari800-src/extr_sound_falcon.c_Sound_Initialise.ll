; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound_falcon.c_Sound_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound_falcon.c_Sound_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-sound\00", align 1
@TRUE = common dso_local global i32 0, align 4
@sound_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-nosound\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-dsprate\00", align 1
@dsprate = common dso_local global i64 0, align 8
@RATE50KHZ = common dso_local global i64 0, align 8
@SNDBUFSIZE = common dso_local global i32 0, align 4
@sndbufsize = common dso_local global i32 0, align 4
@RATE25KHZ = common dso_local global i64 0, align 8
@RATE12KHZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"\09-sound           Enable sound\0A\09-nosound         Disable sound\0A\09-dsprate <rate>  Set sample rate in Hz\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@dsp_buffer1 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"can't allocate sound buffer\0A\00", align 1
@dsp_endbuf1 = common dso_local global i8* null, align 8
@dsp_buffer2 = common dso_local global i8* null, align 8
@dsp_endbuf2 = common dso_local global i8* null, align 8
@POKEYSND_FREQ_17_EXACT = common dso_local global i32 0, align 4
@MFP_IRQ_on = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sound_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %122, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %125

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %20, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* @sound_enabled, align 4
  br label %109

35:                                               ; preds = %18
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* @sound_enabled, align 4
  br label %108

45:                                               ; preds = %35
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @Util_sscandec(i8* %62)
  store i64 %63, i64* @dsprate, align 8
  %64 = load i64, i64* @dsprate, align 8
  %65 = load i64, i64* @RATE50KHZ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @SNDBUFSIZE, align 4
  %69 = mul nsw i32 4, %68
  store i32 %69, i32* @sndbufsize, align 4
  br label %81

70:                                               ; preds = %56
  %71 = load i64, i64* @dsprate, align 8
  %72 = load i64, i64* @RATE25KHZ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @SNDBUFSIZE, align 4
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* @sndbufsize, align 4
  br label %80

77:                                               ; preds = %70
  %78 = load i64, i64* @RATE12KHZ, align 8
  store i64 %78, i64* @dsprate, align 8
  %79 = load i32, i32* @SNDBUFSIZE, align 4
  store i32 %79, i32* @sndbufsize, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %67
  br label %84

82:                                               ; preds = %53
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %81
  br label %107

85:                                               ; preds = %45
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %8, align 4
  %95 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %85
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* %101, i8** %106, align 8
  br label %107

107:                                              ; preds = %96, %84
  br label %108

108:                                              ; preds = %107, %43
  br label %109

109:                                              ; preds = %108, %33
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* @sound_enabled, align 4
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %3, align 4
  br label %184

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %13

125:                                              ; preds = %13
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %4, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* @sound_enabled, align 4
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %3, align 4
  br label %184

133:                                              ; preds = %125
  %134 = load i32, i32* @sound_enabled, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = call i64 @get_cookie(i8 signext 68, i64* %11)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i64, i64* %11, align 8
  %141 = and i64 %140, 2
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* @sound_enabled, align 4
  br label %145

145:                                              ; preds = %143, %139
  br label %148

146:                                              ; preds = %136
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* @sound_enabled, align 4
  br label %148

148:                                              ; preds = %146, %145
  br label %149

149:                                              ; preds = %148, %133
  %150 = load i32, i32* @sound_enabled, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %149
  %153 = load i32, i32* @sndbufsize, align 4
  %154 = mul nsw i32 2, %153
  %155 = call i64 @Mxalloc(i32 %154, i32 0)
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** @dsp_buffer1, align 8
  %157 = load i8*, i8** @dsp_buffer1, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %152
  %163 = load i8*, i8** @dsp_buffer1, align 8
  %164 = load i32, i32* @sndbufsize, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8* %166, i8** @dsp_endbuf1, align 8
  store i8* %166, i8** @dsp_buffer2, align 8
  %167 = load i8*, i8** @dsp_buffer2, align 8
  %168 = load i32, i32* @sndbufsize, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8* %170, i8** @dsp_endbuf2, align 8
  %171 = load i8*, i8** @dsp_buffer1, align 8
  %172 = load i32, i32* @sndbufsize, align 4
  %173 = call i32 @memset(i8* %171, i32 0, i32 %172)
  %174 = load i8*, i8** @dsp_buffer2, align 8
  %175 = load i32, i32* @sndbufsize, align 4
  %176 = call i32 @memset(i8* %174, i32 127, i32 %175)
  %177 = load i32, i32* @POKEYSND_FREQ_17_EXACT, align 4
  %178 = load i64, i64* @dsprate, align 8
  %179 = call i32 @POKEYSND_Init(i32 %177, i64 %178, i32 1, i32 0)
  %180 = load i32, i32* @MFP_IRQ_on, align 4
  %181 = call i32 @Supexec(i32 %180)
  br label %182

182:                                              ; preds = %162, %149
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %130, %112
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @Util_sscandec(i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i64 @get_cookie(i8 signext, i64*) #1

declare dso_local i64 @Mxalloc(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @POKEYSND_Init(i32, i64, i32, i32) #1

declare dso_local i32 @Supexec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
