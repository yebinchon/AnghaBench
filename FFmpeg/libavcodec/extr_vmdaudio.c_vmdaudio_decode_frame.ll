; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdaudio.c_vmdaudio_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdaudio.c_vmdaudio_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, i32** }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"skipping small junk packet\0A\00", align 1
@BLOCK_TYPE_AUDIO = common dso_local global i32 0, align 4
@BLOCK_TYPE_SILENCE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown block type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLOCK_TYPE_INITIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @vmdaudio_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmdaudio_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %14, align 8
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = load i32, i32* @AV_LOG_WARNING, align 4
  %39 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %255

42:                                               ; preds = %4
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @BLOCK_TYPE_AUDIO, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @BLOCK_TYPE_SILENCE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %42
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %54, i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %255

60:                                               ; preds = %49
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 16
  store i32* %62, i32** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, 16
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @BLOCK_TYPE_INITIAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %72, i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %5, align 4
  br label %255

77:                                               ; preds = %68
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @AV_RB32(i32* %78)
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = call i32 @av_popcount(i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32* %83, i32** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 4
  store i32 %85, i32* %13, align 4
  br label %92

86:                                               ; preds = %60
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @BLOCK_TYPE_SILENCE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %77
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %93, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %105, %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %109, %112
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %118 = call i32 @ff_get_buffer(%struct.TYPE_13__* %116, %struct.TYPE_12__* %117, i32 0)
  store i32 %118, i32* %18, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %92
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %5, align 4
  br label %255

122:                                              ; preds = %92
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %19, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %20, align 8
  %133 = load i32, i32* %16, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %122
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %22, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = icmp sle i32 %145, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @av_assert0(i32 %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %169

160:                                              ; preds = %135
  %161 = load i32*, i32** %20, align 8
  %162 = load i32, i32* %22, align 4
  %163 = mul nsw i32 %162, 2
  %164 = call i32 @memset(i32* %161, i32 0, i32 %163)
  %165 = load i32, i32* %22, align 4
  %166 = load i32*, i32** %20, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %20, align 8
  br label %177

169:                                              ; preds = %135
  %170 = load i32*, i32** %19, align 8
  %171 = load i32, i32* %22, align 4
  %172 = call i32 @memset(i32* %170, i32 128, i32 %171)
  %173 = load i32, i32* %22, align 4
  %174 = load i32*, i32** %19, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %19, align 8
  br label %177

177:                                              ; preds = %169, %160
  br label %178

178:                                              ; preds = %177, %122
  %179 = load i32, i32* %17, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %250

181:                                              ; preds = %178
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32* %185, i32** %12, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 1
  %191 = zext i1 %190 to i32
  %192 = and i32 %186, %191
  %193 = icmp eq i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @av_assert0(i32 %194)
  br label %196

196:                                              ; preds = %242, %181
  %197 = load i32*, i32** %12, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = ptrtoint i32* %197 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = icmp sge i64 %202, %206
  br i1 %207, label %208, label %249

208:                                              ; preds = %196
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %229

213:                                              ; preds = %208
  %214 = load i32*, i32** %20, align 8
  %215 = load i32*, i32** %11, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @decode_audio_s16(i32* %214, i32* %215, i32 %218, i32 %221)
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %20, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %20, align 8
  br label %242

229:                                              ; preds = %208
  %230 = load i32*, i32** %19, align 8
  %231 = load i32*, i32** %11, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @memcpy(i32* %230, i32* %231, i32 %234)
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %19, align 8
  br label %242

242:                                              ; preds = %229, %213
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %11, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32* %248, i32** %11, align 8
  br label %196

249:                                              ; preds = %196
  br label %250

250:                                              ; preds = %249, %178
  %251 = load i32*, i32** %8, align 8
  store i32 1, i32* %251, align 4
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %250, %120, %71, %53, %36
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_popcount(i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_audio_s16(i32*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
