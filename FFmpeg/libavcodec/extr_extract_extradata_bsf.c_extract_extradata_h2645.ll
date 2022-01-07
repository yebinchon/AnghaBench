; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_h2645.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_h2645.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }

@extract_extradata_h2645.extradata_nal_types_hevc = internal constant [3 x i32] [i32 128, i32 129, i32 130], align 4
@extract_extradata_h2645.extradata_nal_types_h264 = internal constant [2 x i32] [i32 131, i32 132], align 4
@AV_CODEC_ID_HEVC = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*, i32**, i32*)* @extract_extradata_h2645 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata_h2645(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @extract_extradata_h2645.extradata_nal_types_hevc, i64 0, i64 0), i32** %13, align 8
  %35 = call i32 @FF_ARRAY_ELEMS(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @extract_extradata_h2645.extradata_nal_types_hevc, i64 0, i64 0))
  store i32 %35, i32* %14, align 4
  br label %38

36:                                               ; preds = %4
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @extract_extradata_h2645.extradata_nal_types_h264, i64 0, i64 0), i32** %13, align 8
  %37 = call i32 @FF_ARRAY_ELEMS(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @extract_extradata_h2645.extradata_nal_types_h264, i64 0, i64 0))
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ff_h2645_packet_split(%struct.TYPE_19__* %40, i32* %43, i32 %46, %struct.TYPE_18__* %47, i32 0, i32 0, i32 %52, i32 1, i32 0)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %5, align 4
  br label %306

58:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %134, %58
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %59
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %19, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @val_in_array(i32* %74, i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %66
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 3
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %81
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 129
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %97
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 1, i32* %17, align 4
  br label %109

109:                                              ; preds = %108, %103
  br label %117

110:                                              ; preds = %81
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 131
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 1, i32* %16, align 4
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116, %109
  br label %133

118:                                              ; preds = %66
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 3
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %123, %118
  br label %133

133:                                              ; preds = %132, %117
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %59

137:                                              ; preds = %59
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %305

140:                                              ; preds = %137
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %151, %148, %140
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %305

162:                                              ; preds = %154
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %305

165:                                              ; preds = %162, %151
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %174 = add nsw i64 %172, %173
  %175 = call %struct.TYPE_17__* @av_buffer_alloc(i64 %174)
  store %struct.TYPE_17__* %175, %struct.TYPE_17__** %20, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %177 = icmp ne %struct.TYPE_17__* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %170
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = call i32 @AVERROR(i32 %179)
  store i32 %180, i32* %5, align 4
  br label %306

181:                                              ; preds = %170
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %189 = call i32 @memset(i32* %187, i32 0, i64 %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %22, align 8
  br label %193

193:                                              ; preds = %181, %165
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32* @av_malloc(i64 %197)
  store i32* %198, i32** %21, align 8
  %199 = load i32*, i32** %21, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = call i32 @av_buffer_unref(%struct.TYPE_17__** %20)
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = call i32 @AVERROR(i32 %203)
  store i32 %204, i32* %5, align 4
  br label %306

205:                                              ; preds = %193
  %206 = load i32*, i32** %21, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %211 = call i32 @memset(i32* %209, i32 0, i64 %210)
  %212 = load i32*, i32** %21, align 8
  %213 = load i32**, i32*** %8, align 8
  store i32* %212, i32** %213, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32*, i32** %9, align 8
  store i32 %214, i32* %215, align 4
  store i32 0, i32* %15, align 4
  br label %216

216:                                              ; preds = %281, %205
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %217, %221
  br i1 %222, label %223, label %284

223:                                              ; preds = %216
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %229
  store %struct.TYPE_14__* %230, %struct.TYPE_14__** %23, align 8
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @val_in_array(i32* %231, i32 %232, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %256

238:                                              ; preds = %223
  %239 = load i32*, i32** %21, align 8
  %240 = call i32 @AV_WB24(i32* %239, i32 1)
  %241 = load i32*, i32** %21, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @memcpy(i32* %242, i32 %245, i64 %248)
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 3, %252
  %254 = load i32*, i32** %21, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 %253
  store i32* %255, i32** %21, align 8
  br label %280

256:                                              ; preds = %223
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %279

261:                                              ; preds = %256
  %262 = load i32*, i32** %22, align 8
  %263 = call i32 @AV_WB24(i32* %262, i32 1)
  %264 = load i32*, i32** %22, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @memcpy(i32* %265, i32 %268, i64 %271)
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 3, %275
  %277 = load i32*, i32** %22, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 %276
  store i32* %278, i32** %22, align 8
  br label %279

279:                                              ; preds = %261, %256
  br label %280

280:                                              ; preds = %279, %238
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %15, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %15, align 4
  br label %216

284:                                              ; preds = %216
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %304

289:                                              ; preds = %284
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 2
  %292 = call i32 @av_buffer_unref(%struct.TYPE_17__** %291)
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 2
  store %struct.TYPE_17__* %293, %struct.TYPE_17__** %295, align 8
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 1
  store i32* %298, i32** %300, align 8
  %301 = load i32, i32* %12, align 4
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %289, %284
  br label %305

305:                                              ; preds = %304, %162, %154, %137
  store i32 0, i32* %5, align 4
  br label %306

306:                                              ; preds = %305, %201, %178, %56
  %307 = load i32, i32* %5, align 4
  ret i32 %307
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @ff_h2645_packet_split(%struct.TYPE_19__*, i32*, i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @val_in_array(i32*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @av_buffer_alloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_17__**) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
