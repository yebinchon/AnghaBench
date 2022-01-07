; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_InitSB.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_InitSB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hbusy = common dso_local global i32 0, align 4
@hsmode = common dso_local global i32 0, align 4
@whichbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Initializing Sound Blaster...\00", align 1
@format = common dso_local global i32 0, align 4
@frags = common dso_local global i32 0, align 4
@fragsize = common dso_local global i32 0, align 4
@fragtotal = common dso_local global i32 0, align 4
@WaveBuffer = common dso_local global i32 0, align 4
@ReadPtr = common dso_local global i64 0, align 8
@WritePtr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c" Unsupported playback rate: %d samples per second\0A\00", align 1
@SBIRQ = common dso_local global i32 0, align 4
@PICMask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c" Error resetting the DSP.\00", align 1
@DSPV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c" Error getting the DSP version.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" DSP Version: %d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c" DSP version number is too low.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c" Error creating low-memory DMA buffer.\00", align 1
@IVector = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c" Error setting interrupt vectors.\00", align 1
@SBDMA16 = common dso_local global i32 0, align 4
@SBDMA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c" %d hz, %d-bit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitSB(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @hbusy, align 4
  store i32 0, i32* @hsmode, align 4
  store i32 1, i32* @whichbuf, align 4
  %8 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* @format, align 4
  store i32 8, i32* @frags, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 11025
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 32, i32* @fragsize, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 22050
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 64, i32* @fragsize, align 4
  br label %21

20:                                               ; preds = %16
  store i32 128, i32* @fragsize, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* @frags, align 4
  %24 = load i32, i32* @fragsize, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* @fragtotal, align 4
  %26 = load i32, i32* @fragtotal, align 4
  %27 = load i32, i32* @format, align 4
  %28 = shl i32 %26, %27
  %29 = call i32 @malloc(i32 %28)
  store i32 %29, i32* @WaveBuffer, align 4
  %30 = load i32, i32* @format, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @WaveBuffer, align 4
  %34 = load i32, i32* @fragtotal, align 4
  %35 = mul nsw i32 %34, 2
  %36 = call i32 @memset(i32 %33, i32 0, i32 %35)
  br label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @WaveBuffer, align 4
  %39 = load i32, i32* @fragtotal, align 4
  %40 = call i32 @memset(i32 %38, i32 128, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  store i64 0, i64* @ReadPtr, align 8
  store i64 0, i64* @WritePtr, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 8192
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 65535
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %214

50:                                               ; preds = %44
  %51 = call i32 (...) @GetBLASTER()
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %214

54:                                               ; preds = %50
  %55 = load i32, i32* @SBIRQ, align 4
  %56 = icmp sgt i32 %55, 7
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = call i32 @inportb(i32 161)
  store i32 %58, i32* @PICMask, align 4
  %59 = load i32, i32* @PICMask, align 4
  %60 = load i32, i32* @SBIRQ, align 4
  %61 = and i32 %60, 7
  %62 = shl i32 1, %61
  %63 = or i32 %59, %62
  %64 = call i32 @outportb(i32 161, i32 %63)
  br label %72

65:                                               ; preds = %54
  %66 = call i32 @inportb(i32 33)
  store i32 %66, i32* @PICMask, align 4
  %67 = load i32, i32* @PICMask, align 4
  %68 = load i32, i32* @SBIRQ, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = call i32 @outportb(i32 33, i32 %70)
  br label %72

72:                                               ; preds = %65, %57
  %73 = call i32 (...) @ResetDSP()
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %214

77:                                               ; preds = %72
  %78 = call i32 (...) @GetDSPVersion()
  store i32 %78, i32* @DSPV, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %214

82:                                               ; preds = %77
  %83 = load i32, i32* @DSPV, align 4
  %84 = ashr i32 %83, 8
  %85 = load i32, i32* @DSPV, align 4
  %86 = and i32 %85, 255
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i32, i32* @DSPV, align 4
  %89 = icmp slt i32 %88, 513
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %214

92:                                               ; preds = %82
  %93 = load i32, i32* @DSPV, align 4
  %94 = icmp slt i32 %93, 1024
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* @format, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = call i32 (...) @MakeDMABuffer()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %214

101:                                              ; preds = %96
  %102 = load i32, i32* @SBIRQ, align 4
  %103 = icmp sgt i32 %102, 7
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @SBIRQ, align 4
  %106 = add nsw i32 %105, 104
  store i32 %106, i32* @IVector, align 4
  br label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @SBIRQ, align 4
  %109 = add nsw i32 %108, 8
  store i32 %109, i32* @IVector, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = call i32 (...) @SetVectors()
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 (...) @KillDMABuffer()
  store i32 0, i32* %3, align 4
  br label %214

116:                                              ; preds = %110
  %117 = load i32, i32* @SBIRQ, align 4
  %118 = icmp sgt i32 %117, 7
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* @PICMask, align 4
  %121 = load i32, i32* @SBIRQ, align 4
  %122 = and i32 %121, 7
  %123 = shl i32 1, %122
  %124 = xor i32 %123, -1
  %125 = and i32 %120, %124
  %126 = call i32 @outportb(i32 161, i32 %125)
  br label %134

127:                                              ; preds = %116
  %128 = load i32, i32* @PICMask, align 4
  %129 = load i32, i32* @SBIRQ, align 4
  %130 = shl i32 1, %129
  %131 = xor i32 %130, -1
  %132 = and i32 %128, %131
  %133 = call i32 @outportb(i32 33, i32 %132)
  br label %134

134:                                              ; preds = %127, %119
  %135 = call i32 (...) @ProgramDMA()
  %136 = call i32 @WriteDSP(i32 209)
  %137 = load i32, i32* @DSPV, align 4
  %138 = icmp sge i32 %137, 1024
  br i1 %138, label %139, label %164

139:                                              ; preds = %134
  %140 = call i32 @WriteDSP(i32 65)
  %141 = load i32, i32* %4, align 4
  %142 = ashr i32 %141, 8
  %143 = call i32 @WriteDSP(i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = and i32 %144, 255
  %146 = call i32 @WriteDSP(i32 %145)
  %147 = load i32, i32* @format, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %139
  %150 = call i32 @WriteDSP(i32 198)
  %151 = call i32 @WriteDSP(i32 0)
  br label %155

152:                                              ; preds = %139
  %153 = call i32 @WriteDSP(i32 182)
  %154 = call i32 @WriteDSP(i32 16)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* @fragsize, align 4
  %157 = sub nsw i32 %156, 1
  %158 = and i32 %157, 255
  %159 = call i32 @WriteDSP(i32 %158)
  %160 = load i32, i32* @fragsize, align 4
  %161 = sub nsw i32 %160, 1
  %162 = ashr i32 %161, 8
  %163 = call i32 @WriteDSP(i32 %162)
  br label %198

164:                                              ; preds = %134
  %165 = load i32, i32* %4, align 4
  %166 = icmp sgt i32 %165, 22050
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i32, i32* %4, align 4
  %169 = sdiv i32 256000000, %168
  %170 = sub nsw i32 65536, %169
  %171 = ashr i32 %170, 8
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = shl i32 %172, 8
  %174 = sub nsw i32 65536, %173
  %175 = sdiv i32 256000000, %174
  store i32 %175, i32* %4, align 4
  store i32 144, i32* %7, align 4
  store i32 1, i32* @hsmode, align 4
  br label %183

176:                                              ; preds = %164
  %177 = load i32, i32* %4, align 4
  %178 = sdiv i32 1000000, %177
  %179 = sub nsw i32 256, %178
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = sub nsw i32 256, %180
  %182 = sdiv i32 1000000, %181
  store i32 %182, i32* %4, align 4
  store i32 28, i32* %7, align 4
  br label %183

183:                                              ; preds = %176, %167
  %184 = call i32 @WriteDSP(i32 64)
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @WriteDSP(i32 %185)
  %187 = call i32 @WriteDSP(i32 72)
  %188 = load i32, i32* @fragsize, align 4
  %189 = sub nsw i32 %188, 1
  %190 = and i32 %189, 255
  %191 = call i32 @WriteDSP(i32 %190)
  %192 = load i32, i32* @fragsize, align 4
  %193 = sub nsw i32 %192, 1
  %194 = ashr i32 %193, 8
  %195 = call i32 @WriteDSP(i32 %194)
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @WriteDSP(i32 %196)
  br label %198

198:                                              ; preds = %183, %155
  %199 = load i32, i32* @format, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32, i32* @SBDMA16, align 4
  %203 = and i32 %202, 3
  %204 = call i32 @outportb(i32 212, i32 %203)
  br label %208

205:                                              ; preds = %198
  %206 = load i32, i32* @SBDMA, align 4
  %207 = call i32 @outportb(i32 10, i32 %206)
  br label %208

208:                                              ; preds = %205, %201
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @format, align 4
  %211 = shl i32 8, %210
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %209, i32 %211)
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %208, %113, %99, %90, %80, %75, %53, %47
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @GetBLASTER(...) #1

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @outportb(i32, i32) #1

declare dso_local i32 @ResetDSP(...) #1

declare dso_local i32 @GetDSPVersion(...) #1

declare dso_local i32 @MakeDMABuffer(...) #1

declare dso_local i32 @SetVectors(...) #1

declare dso_local i32 @KillDMABuffer(...) #1

declare dso_local i32 @ProgramDMA(...) #1

declare dso_local i32 @WriteDSP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
