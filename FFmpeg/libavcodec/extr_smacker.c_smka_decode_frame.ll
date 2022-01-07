; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_smka_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_smka_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32** }
%struct.TYPE_15__ = type { i32, i32, i32*, i32*, i32*, i64, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"packet is too big\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Sound: no data\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"channels mismatch\0A\00", align 1
@AV_SAMPLE_FMT_U8 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"sample format mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"The buffer does not contain an integer number of samples\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SMKTREE_BITS = common dso_local global i32 0, align 4
@INIT_VLC_LE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Cannot build VLC table\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"invalid vlc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @smka_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smka_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x %struct.TYPE_15__], align 16
  %15 = alloca [4 x %struct.TYPE_14__], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i32], align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %10, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = bitcast [4 x %struct.TYPE_15__]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 192, i1 false)
  %35 = bitcast [4 x %struct.TYPE_14__]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 64, i1 false)
  %36 = bitcast [2 x i32]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 8, i1 false)
  %37 = load i32, i32* %12, align 4
  %38 = icmp sle i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 @av_log(%struct.TYPE_18__* %40, i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %5, align 4
  br label %607

44:                                               ; preds = %4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @AV_RL32(i32* %45)
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp ugt i32 %47, 16777216
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 @av_log(%struct.TYPE_18__* %50, i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %607

54:                                               ; preds = %44
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 4
  %59 = call i32 @init_get_bits8(i32* %13, i32* %56, i32 %58)
  store i32 %59, i32* %21, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %21, align 4
  store i32 %62, i32* %5, align 4
  br label %607

63:                                               ; preds = %54
  %64 = call i32 @get_bits1(i32* %13)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = load i32, i32* @AV_LOG_INFO, align 4
  %69 = call i32 @av_log(%struct.TYPE_18__* %67, i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %8, align 8
  store i32 0, i32* %70, align 4
  store i32 1, i32* %5, align 4
  br label %607

71:                                               ; preds = %63
  %72 = call i32 @get_bits1(i32* %13)
  store i32 %72, i32* %24, align 4
  %73 = call i32 @get_bits1(i32* %13)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %24, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = xor i32 %74, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 @av_log(%struct.TYPE_18__* %83, i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %5, align 4
  br label %607

87:                                               ; preds = %71
  %88 = load i32, i32* %23, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV_SAMPLE_FMT_U8, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = icmp eq i32 %88, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(%struct.TYPE_18__* %97, i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %607

101:                                              ; preds = %87
  %102 = load i32, i32* %22, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 %105, %107
  %109 = sdiv i32 %102, %108
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %22, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %23, align 4
  %117 = add nsw i32 %116, 1
  %118 = mul nsw i32 %115, %117
  %119 = srem i32 %112, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %101
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_18__* %122, i32 %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %5, align 4
  br label %607

126:                                              ; preds = %101
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %129 = call i32 @ff_get_buffer(%struct.TYPE_18__* %127, %struct.TYPE_17__* %128, i32 0)
  store i32 %129, i32* %21, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %21, align 4
  store i32 %132, i32* %5, align 4
  br label %607

133:                                              ; preds = %126
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 0
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %16, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %17, align 8
  store i32 0, i32* %19, align 4
  br label %144

144:                                              ; preds = %253, %133
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* %24, align 4
  %148 = add nsw i32 %146, %147
  %149 = shl i32 1, %148
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %256

151:                                              ; preds = %144
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 256, i32* %155, align 16
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 5
  store i64 0, i64* %159, align 16
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = call i8* @av_mallocz(i32 1024)
  %165 = bitcast i8* %164 to i32*
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  store i32* %165, i32** %169, align 8
  %170 = call i8* @av_mallocz(i32 1024)
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  store i32* %171, i32** %175, align 16
  %176 = call i8* @av_mallocz(i32 1024)
  %177 = bitcast i8* %176 to i32*
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 4
  store i32* %177, i32** %181, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %151
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 16
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load i32, i32* %19, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %195, %188, %151
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = call i32 @AVERROR(i32 %203)
  store i32 %204, i32* %21, align 4
  br label %567

205:                                              ; preds = %195
  %206 = call i32 @skip_bits1(i32* %13)
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %208
  %210 = call i64 @smacker_decode_tree(i32* %13, %struct.TYPE_15__* %209, i32 0, i32 0)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %213, i32* %21, align 4
  br label %567

214:                                              ; preds = %205
  %215 = call i32 @skip_bits1(i32* %13)
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp sgt i32 %220, 1
  br i1 %221, label %222, label %252

222:                                              ; preds = %214
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 %224
  %226 = load i32, i32* @SMKTREE_BITS, align 4
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 16
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 16
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* @INIT_VLC_LE, align 4
  %243 = call i32 @init_vlc(%struct.TYPE_14__* %225, i32 %226, i32 %231, i32* %236, i32 4, i32 4, i32* %241, i32 4, i32 4, i32 %242)
  store i32 %243, i32* %20, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %222
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %248 = load i32, i32* @AV_LOG_ERROR, align 4
  %249 = call i32 @av_log(%struct.TYPE_18__* %247, i32 %248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %250 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %250, i32* %21, align 4
  br label %567

251:                                              ; preds = %222
  br label %252

252:                                              ; preds = %251, %214
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %19, align 4
  br label %144

256:                                              ; preds = %144
  %257 = load i32, i32* %23, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %444

259:                                              ; preds = %256
  %260 = load i32, i32* %24, align 4
  store i32 %260, i32* %19, align 4
  br label %261

261:                                              ; preds = %271, %259
  %262 = load i32, i32* %19, align 4
  %263 = icmp sge i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %261
  %265 = call i32 @get_bits(i32* %13, i32 16)
  %266 = call i32 @av_bswap16(i32 %265)
  %267 = call i32 @sign_extend(i32 %266, i32 16)
  %268 = load i32, i32* %19, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %269
  store i32 %267, i32* %270, align 4
  br label %271

271:                                              ; preds = %264
  %272 = load i32, i32* %19, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %19, align 4
  br label %261

274:                                              ; preds = %261
  store i32 0, i32* %19, align 4
  br label %275

275:                                              ; preds = %286, %274
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %24, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %275
  %280 = load i32, i32* %19, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %16, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** %16, align 8
  store i32 %283, i32* %284, align 4
  br label %286

286:                                              ; preds = %279
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  br label %275

289:                                              ; preds = %275
  br label %290

290:                                              ; preds = %440, %289
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %22, align 4
  %293 = sdiv i32 %292, 2
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %443

295:                                              ; preds = %290
  %296 = call i64 @get_bits_left(i32* %13)
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %299, i32* %21, align 4
  br label %567

300:                                              ; preds = %295
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %24, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %372

305:                                              ; preds = %300
  %306 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 2
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 16
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %305
  %311 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 2
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 16
  %314 = load i32, i32* @SMKTREE_BITS, align 4
  %315 = call i32 @get_vlc2(i32* %13, i64 %313, i32 %314, i32 3)
  store i32 %315, i32* %20, align 4
  br label %317

316:                                              ; preds = %305
  store i32 0, i32* %20, align 4
  br label %317

317:                                              ; preds = %316, %310
  %318 = load i32, i32* %20, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %317
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %322 = load i32, i32* @AV_LOG_ERROR, align 4
  %323 = call i32 @av_log(%struct.TYPE_18__* %321, i32 %322, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %324 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %324, i32* %21, align 4
  br label %567

325:                                              ; preds = %317
  %326 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 2
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 4
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %20, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %18, align 4
  %333 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 3
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 16
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %325
  %338 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 3
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 16
  %341 = load i32, i32* @SMKTREE_BITS, align 4
  %342 = call i32 @get_vlc2(i32* %13, i64 %340, i32 %341, i32 3)
  store i32 %342, i32* %20, align 4
  br label %344

343:                                              ; preds = %325
  store i32 0, i32* %20, align 4
  br label %344

344:                                              ; preds = %343, %337
  %345 = load i32, i32* %20, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %349 = load i32, i32* @AV_LOG_ERROR, align 4
  %350 = call i32 @av_log(%struct.TYPE_18__* %348, i32 %349, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %351 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %351, i32* %21, align 4
  br label %567

352:                                              ; preds = %344
  %353 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 3
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 4
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %20, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = shl i32 %359, 8
  %361 = load i32, i32* %18, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %18, align 4
  %364 = call i32 @sign_extend(i32 %363, i32 16)
  %365 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, %364
  store i32 %367, i32* %365, align 4
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %16, align 8
  %371 = getelementptr inbounds i32, i32* %370, i32 1
  store i32* %371, i32** %16, align 8
  store i32 %369, i32* %370, align 4
  br label %439

372:                                              ; preds = %300
  %373 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 16
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 16
  %381 = load i32, i32* @SMKTREE_BITS, align 4
  %382 = call i32 @get_vlc2(i32* %13, i64 %380, i32 %381, i32 3)
  store i32 %382, i32* %20, align 4
  br label %384

383:                                              ; preds = %372
  store i32 0, i32* %20, align 4
  br label %384

384:                                              ; preds = %383, %377
  %385 = load i32, i32* %20, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %384
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %389 = load i32, i32* @AV_LOG_ERROR, align 4
  %390 = call i32 @av_log(%struct.TYPE_18__* %388, i32 %389, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %391 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %391, i32* %21, align 4
  br label %567

392:                                              ; preds = %384
  %393 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 4
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %20, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %18, align 4
  %400 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 1
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 16
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %392
  %405 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 1
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 16
  %408 = load i32, i32* @SMKTREE_BITS, align 4
  %409 = call i32 @get_vlc2(i32* %13, i64 %407, i32 %408, i32 3)
  store i32 %409, i32* %20, align 4
  br label %411

410:                                              ; preds = %392
  store i32 0, i32* %20, align 4
  br label %411

411:                                              ; preds = %410, %404
  %412 = load i32, i32* %20, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %416 = load i32, i32* @AV_LOG_ERROR, align 4
  %417 = call i32 @av_log(%struct.TYPE_18__* %415, i32 %416, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %418 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %418, i32* %21, align 4
  br label %567

419:                                              ; preds = %411
  %420 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 1
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i32 0, i32 4
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %20, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 %426, 8
  %428 = load i32, i32* %18, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %18, align 4
  %430 = load i32, i32* %18, align 4
  %431 = call i32 @sign_extend(i32 %430, i32 16)
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, %431
  store i32 %434, i32* %432, align 4
  %435 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %436 = load i32, i32* %435, align 4
  %437 = load i32*, i32** %16, align 8
  %438 = getelementptr inbounds i32, i32* %437, i32 1
  store i32* %438, i32** %16, align 8
  store i32 %436, i32* %437, align 4
  br label %439

439:                                              ; preds = %419, %352
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %19, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %19, align 4
  br label %290

443:                                              ; preds = %290
  br label %564

444:                                              ; preds = %256
  %445 = load i32, i32* %24, align 4
  store i32 %445, i32* %19, align 4
  br label %446

446:                                              ; preds = %454, %444
  %447 = load i32, i32* %19, align 4
  %448 = icmp sge i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %446
  %450 = call i32 @get_bits(i32* %13, i32 8)
  %451 = load i32, i32* %19, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %452
  store i32 %450, i32* %453, align 4
  br label %454

454:                                              ; preds = %449
  %455 = load i32, i32* %19, align 4
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %19, align 4
  br label %446

457:                                              ; preds = %446
  store i32 0, i32* %19, align 4
  br label %458

458:                                              ; preds = %469, %457
  %459 = load i32, i32* %19, align 4
  %460 = load i32, i32* %24, align 4
  %461 = icmp sle i32 %459, %460
  br i1 %461, label %462, label %472

462:                                              ; preds = %458
  %463 = load i32, i32* %19, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = load i32*, i32** %17, align 8
  %468 = getelementptr inbounds i32, i32* %467, i32 1
  store i32* %468, i32** %17, align 8
  store i32 %466, i32* %467, align 4
  br label %469

469:                                              ; preds = %462
  %470 = load i32, i32* %19, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %19, align 4
  br label %458

472:                                              ; preds = %458
  br label %473

473:                                              ; preds = %560, %472
  %474 = load i32, i32* %19, align 4
  %475 = load i32, i32* %22, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %563

477:                                              ; preds = %473
  %478 = call i64 @get_bits_left(i32* %13)
  %479 = icmp slt i64 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %477
  %481 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %481, i32* %21, align 4
  br label %567

482:                                              ; preds = %477
  %483 = load i32, i32* %19, align 4
  %484 = load i32, i32* %24, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %523

487:                                              ; preds = %482
  %488 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 1
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 16
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %487
  %493 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 1
  %494 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 16
  %496 = load i32, i32* @SMKTREE_BITS, align 4
  %497 = call i32 @get_vlc2(i32* %13, i64 %495, i32 %496, i32 3)
  store i32 %497, i32* %20, align 4
  br label %499

498:                                              ; preds = %487
  store i32 0, i32* %20, align 4
  br label %499

499:                                              ; preds = %498, %492
  %500 = load i32, i32* %20, align 4
  %501 = icmp slt i32 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %499
  %503 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %504 = load i32, i32* @AV_LOG_ERROR, align 4
  %505 = call i32 @av_log(%struct.TYPE_18__* %503, i32 %504, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %506 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %506, i32* %21, align 4
  br label %567

507:                                              ; preds = %499
  %508 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 1
  %509 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %508, i32 0, i32 4
  %510 = load i32*, i32** %509, align 8
  %511 = load i32, i32* %20, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @sign_extend(i32 %514, i32 8)
  %516 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %517 = load i32, i32* %516, align 4
  %518 = add nsw i32 %517, %515
  store i32 %518, i32* %516, align 4
  %519 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %520 = load i32, i32* %519, align 4
  %521 = load i32*, i32** %17, align 8
  %522 = getelementptr inbounds i32, i32* %521, i32 1
  store i32* %522, i32** %17, align 8
  store i32 %520, i32* %521, align 4
  br label %559

523:                                              ; preds = %482
  %524 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %525 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 16
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %523
  %529 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %530 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 16
  %532 = load i32, i32* @SMKTREE_BITS, align 4
  %533 = call i32 @get_vlc2(i32* %13, i64 %531, i32 %532, i32 3)
  store i32 %533, i32* %20, align 4
  br label %535

534:                                              ; preds = %523
  store i32 0, i32* %20, align 4
  br label %535

535:                                              ; preds = %534, %528
  %536 = load i32, i32* %20, align 4
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %535
  %539 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %540 = load i32, i32* @AV_LOG_ERROR, align 4
  %541 = call i32 @av_log(%struct.TYPE_18__* %539, i32 %540, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %542 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %542, i32* %21, align 4
  br label %567

543:                                              ; preds = %535
  %544 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %545 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %544, i32 0, i32 4
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %20, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @sign_extend(i32 %550, i32 8)
  %552 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %553 = load i32, i32* %552, align 4
  %554 = add nsw i32 %553, %551
  store i32 %554, i32* %552, align 4
  %555 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** %17, align 8
  %558 = getelementptr inbounds i32, i32* %557, i32 1
  store i32* %558, i32** %17, align 8
  store i32 %556, i32* %557, align 4
  br label %559

559:                                              ; preds = %543, %507
  br label %560

560:                                              ; preds = %559
  %561 = load i32, i32* %19, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %19, align 4
  br label %473

563:                                              ; preds = %473
  br label %564

564:                                              ; preds = %563, %443
  %565 = load i32*, i32** %8, align 8
  store i32 1, i32* %565, align 4
  %566 = load i32, i32* %12, align 4
  store i32 %566, i32* %21, align 4
  br label %567

567:                                              ; preds = %564, %538, %502, %480, %414, %387, %347, %320, %298, %246, %212, %202
  store i32 0, i32* %19, align 4
  br label %568

568:                                              ; preds = %602, %567
  %569 = load i32, i32* %19, align 4
  %570 = icmp slt i32 %569, 4
  br i1 %570, label %571, label %605

571:                                              ; preds = %568
  %572 = load i32, i32* %19, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 %573
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 16
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %583

578:                                              ; preds = %571
  %579 = load i32, i32* %19, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %15, i64 0, i64 %580
  %582 = call i32 @ff_free_vlc(%struct.TYPE_14__* %581)
  br label %583

583:                                              ; preds = %578, %571
  %584 = load i32, i32* %19, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %586, i32 0, i32 2
  %588 = load i32*, i32** %587, align 8
  %589 = call i32 @av_free(i32* %588)
  %590 = load i32, i32* %19, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %592, i32 0, i32 3
  %594 = load i32*, i32** %593, align 16
  %595 = call i32 @av_free(i32* %594)
  %596 = load i32, i32* %19, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %598, i32 0, i32 4
  %600 = load i32*, i32** %599, align 8
  %601 = call i32 @av_free(i32* %600)
  br label %602

602:                                              ; preds = %583
  %603 = load i32, i32* %19, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %19, align 4
  br label %568

605:                                              ; preds = %568
  %606 = load i32, i32* %21, align 4
  store i32 %606, i32* %5, align 4
  br label %607

607:                                              ; preds = %605, %131, %121, %96, %82, %66, %61, %49, %39
  %608 = load i32, i32* %5, align 4
  ret i32 %608
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #2

declare dso_local i32 @AV_RL32(i32*) #2

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #2

declare dso_local i8* @av_mallocz(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @skip_bits1(i32*) #2

declare dso_local i64 @smacker_decode_tree(i32*, %struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @init_vlc(%struct.TYPE_14__*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @sign_extend(i32, i32) #2

declare dso_local i32 @av_bswap16(i32) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i64 @get_bits_left(i32*) #2

declare dso_local i32 @get_vlc2(i32*, i64, i32, i32) #2

declare dso_local i32 @ff_free_vlc(%struct.TYPE_14__*) #2

declare dso_local i32 @av_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
