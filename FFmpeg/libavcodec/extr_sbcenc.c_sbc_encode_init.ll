; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_encode_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_encode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__, %struct.sbc_frame }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.sbc_frame = type { i64, i32, i32, i32, i32, i32, i32, i32, i8* }

@FF_PROFILE_SBC_MSBC = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mSBC require mono channel.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mSBC require 16 kHz samplerate.\0A\00", align 1
@SBC_MODE_MONO = common dso_local global i8* null, align 8
@MSBC_BLOCKS = common dso_local global i32 0, align 4
@SBC_AM_LOUDNESS = common dso_local global i8* null, align 8
@FF_QP2LAMBDA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"bitpool > 255 is not allowed.\0A\00", align 1
@SBC_MODE_JOINT_STEREO = common dso_local global i64 0, align 8
@SBC_MODE_STEREO = common dso_local global i64 0, align 8
@SBC_MODE_DUAL_CHANNEL = common dso_local global i64 0, align 8
@AV_CRC_8_EBU = common dso_local global i32 0, align 4
@SBC_X_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @sbc_encode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_encode_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.sbc_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store %struct.sbc_frame* %12, %struct.sbc_frame** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FF_PROFILE_SBC_MSBC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(%struct.TYPE_9__* %32, i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %329

37:                                               ; preds = %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 16000
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 @av_log(%struct.TYPE_9__* %43, i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %329

48:                                               ; preds = %37
  %49 = load i8*, i8** @SBC_MODE_MONO, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %52 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %54 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %53, i32 0, i32 1
  store i32 8, i32* %54, align 8
  %55 = load i32, i32* @MSBC_BLOCKS, align 4
  %56 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %57 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** @SBC_AM_LOUDNESS, align 8
  %59 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %60 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %62 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %61, i32 0, i32 3
  store i32 26, i32* %62, align 8
  %63 = load i32, i32* @MSBC_BLOCKS, align 4
  %64 = mul nsw i32 8, %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  br label %244

67:                                               ; preds = %21
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FF_QP2LAMBDA, align 4
  %72 = mul nsw i32 255, %71
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 @av_log(%struct.TYPE_9__* %75, i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %329

80:                                               ; preds = %67
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %106

85:                                               ; preds = %80
  %86 = load i8*, i8** @SBC_MODE_MONO, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %89 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %92, 3000
  br i1 %93, label %99, label %94

94:                                               ; preds = %85
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 270000
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %85
  %100 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %101 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %100, i32 0, i32 1
  store i32 4, i32* %101, align 8
  br label %105

102:                                              ; preds = %94
  %103 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %104 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %103, i32 0, i32 1
  store i32 8, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %141

106:                                              ; preds = %80
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 180000
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 420000
  br i1 %115, label %116, label %120

116:                                              ; preds = %111, %106
  %117 = load i64, i64* @SBC_MODE_JOINT_STEREO, align 8
  %118 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %119 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %124

120:                                              ; preds = %111
  %121 = load i64, i64* @SBC_MODE_STEREO, align 8
  %122 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %123 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %116
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp sle i32 %127, 4000
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 420000
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %124
  %135 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %136 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %135, i32 0, i32 1
  store i32 4, i32* %136, align 8
  br label %140

137:                                              ; preds = %129
  %138 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %139 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %138, i32 0, i32 1
  store i32 8, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %105
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %144, %147
  %149 = add nsw i32 %148, 2
  %150 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %151 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 1000000, %152
  %154 = sdiv i32 %149, %153
  %155 = sub nsw i32 %154, 10
  %156 = call i32 @av_clip(i32 %155, i32 4, i32 16)
  %157 = and i32 %156, -4
  %158 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %159 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load i8*, i8** @SBC_AM_LOUDNESS, align 8
  %161 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %162 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %164 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %167 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SBC_MODE_DUAL_CHANNEL, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = add nsw i32 %171, 1
  %173 = mul nsw i32 %165, %172
  store i32 %173, i32* %6, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %178 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %182 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %184, %187
  %189 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %190 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 4, %191
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %192, %195
  %197 = sub nsw i32 %188, %196
  %198 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %199 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @SBC_MODE_JOINT_STEREO, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %205 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %203, %206
  %208 = sub nsw i32 %197, %207
  %209 = sub nsw i32 %208, 32
  %210 = load i32, i32* %6, align 4
  %211 = sdiv i32 %210, 2
  %212 = add nsw i32 %209, %211
  %213 = load i32, i32* %6, align 4
  %214 = sdiv i32 %212, %213
  %215 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %216 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %141
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @FF_QP2LAMBDA, align 4
  %226 = sdiv i32 %224, %225
  %227 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %228 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %221, %141
  %230 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %231 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = ashr i32 %232, 3
  %234 = add nsw i32 %233, 1
  %235 = mul nsw i32 4, %234
  %236 = mul nsw i32 %235, 4
  %237 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %238 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 2
  %241 = mul nsw i32 %236, %240
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %229, %48
  store i32 0, i32* %7, align 4
  br label %245

245:                                              ; preds = %276, %244
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 6
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %279

256:                                              ; preds = %245
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 6
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %260, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %256
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %274 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %271, %256
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %7, align 4
  br label %245

279:                                              ; preds = %245
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %284 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 8
  %285 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %286 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %289 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %287, %290
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %291, %294
  %296 = mul nsw i32 %295, 2
  %297 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %298 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %297, i32 0, i32 6
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* @AV_CRC_8_EBU, align 4
  %300 = call i32 @av_crc_get_table(i32 %299)
  %301 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %302 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 2
  %306 = call i32 @memset(i32* %305, i32 0, i32 4)
  %307 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %308 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %309 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = mul nsw i32 %310, 9
  %312 = sub nsw i32 %307, %311
  %313 = and i32 %312, -8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  store i32 %313, i32* %316, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 1, i32 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 1
  store i32 %322, i32* %325, align 4
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  %328 = call i32 @ff_sbcdsp_init(%struct.TYPE_10__* %327)
  store i32 0, i32* %2, align 4
  br label %329

329:                                              ; preds = %279, %74, %42, %31
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ff_sbcdsp_init(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
