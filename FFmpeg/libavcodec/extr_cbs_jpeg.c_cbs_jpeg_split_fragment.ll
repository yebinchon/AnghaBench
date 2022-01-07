; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_jpeg.c_cbs_jpeg_split_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_jpeg.c_cbs_jpeg_split_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32*, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Discarding %d bytes at beginning of image.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid JPEG image: no SOI marker found.\0A\00", align 1
@JPEG_MARKER_SOI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Invalid JPEG image: first marker is %02x, should be SOI.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid JPEG image: no image content found.\0A\00", align 1
@JPEG_MARKER_EOI = common dso_local global i32 0, align 4
@JPEG_MARKER_SOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Invalid JPEG image: truncated at %02x marker.\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Invalid JPEG image: truncated at %02x marker segment.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @cbs_jpeg_split_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_jpeg_split_fragment(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %4, align 4
  br label %500

27:                                               ; preds = %3
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %18, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 255
  br label %44

44:                                               ; preds = %35, %28
  %45 = phi i1 [ false, %28 ], [ %43, %35 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %18, align 4
  br label %28

50:                                               ; preds = %44
  %51 = load i32, i32* %18, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AV_LOG_WARNING, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 (i32, i32, i8*, ...) @av_log(i32 %56, i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %82, %60
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 255
  br label %79

79:                                               ; preds = %70, %63
  %80 = phi i1 [ false, %63 ], [ %78, %70 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %63

85:                                               ; preds = %79
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = call i32 (i32, i32, i8*, ...) @av_log(i32 %104, i32 %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %4, align 4
  br label %500

108:                                              ; preds = %92, %85
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @JPEG_MARKER_SOI, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %108
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 (i32, i32, i8*, ...) @av_log(i32 %122, i32 %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %4, align 4
  br label %500

127:                                              ; preds = %108
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %149, %127
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 255
  br label %146

146:                                              ; preds = %137, %130
  %147 = phi i1 [ false, %130 ], [ %145, %137 ]
  br i1 %147, label %148, label %152

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %18, align 4
  br label %130

152:                                              ; preds = %146
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %154, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = call i32 (i32, i32, i8*, ...) @av_log(i32 %162, i32 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %165, i32* %4, align 4
  br label %500

166:                                              ; preds = %152
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %496, %166
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @JPEG_MARKER_EOI, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %499

181:                                              ; preds = %176
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @JPEG_MARKER_SOS, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %263

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %259, %185
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %262

194:                                              ; preds = %187
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 255
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %259

204:                                              ; preds = %194
  %205 = load i32, i32* %18, align 4
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %227, %204
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 255
  br label %224

224:                                              ; preds = %215, %208
  %225 = phi i1 [ false, %208 ], [ %223, %215 ]
  br i1 %225, label %226, label %230

226:                                              ; preds = %224
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %18, align 4
  br label %208

230:                                              ; preds = %224
  %231 = load i32, i32* %18, align 4
  %232 = add nsw i32 %231, 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp sge i32 %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  store i32 -1, i32* %16, align 4
  br label %258

238:                                              ; preds = %230
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  br label %259

248:                                              ; preds = %238
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %16, align 4
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %258

258:                                              ; preds = %248, %237
  br label %262

259:                                              ; preds = %247, %203
  %260 = load i32, i32* %18, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %18, align 4
  br label %187

262:                                              ; preds = %258, %187
  br label %361

263:                                              ; preds = %181
  %264 = load i32, i32* %12, align 4
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %265, 2
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp sgt i32 %266, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %263
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @AV_LOG_ERROR, align 4
  %276 = load i32, i32* %14, align 4
  %277 = call i32 (i32, i32, i8*, ...) @av_log(i32 %274, i32 %275, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %278, i32* %4, align 4
  br label %500

279:                                              ; preds = %263
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %18, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = call i32 @AV_RB16(i32* %285)
  store i32 %286, i32* %20, align 4
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* %20, align 4
  %289 = add nsw i32 %287, %288
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp sgt i32 %289, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %279
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @AV_LOG_ERROR, align 4
  %299 = load i32, i32* %14, align 4
  %300 = call i32 (i32, i32, i8*, ...) @av_log(i32 %297, i32 %298, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %301, i32* %4, align 4
  br label %500

302:                                              ; preds = %279
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %20, align 4
  %305 = add nsw i32 %303, %304
  store i32 %305, i32* %13, align 4
  %306 = load i32, i32* %13, align 4
  store i32 %306, i32* %18, align 4
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %18, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 255
  br i1 %314, label %315, label %316

315:                                              ; preds = %302
  store i32 -1, i32* %16, align 4
  br label %360

316:                                              ; preds = %302
  %317 = load i32, i32* %18, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %18, align 4
  br label %319

319:                                              ; preds = %338, %316
  %320 = load i32, i32* %18, align 4
  %321 = add nsw i32 %320, 1
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %319
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %18, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 255
  br label %335

335:                                              ; preds = %326, %319
  %336 = phi i1 [ false, %319 ], [ %334, %326 ]
  br i1 %336, label %337, label %341

337:                                              ; preds = %335
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %18, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %18, align 4
  br label %319

341:                                              ; preds = %335
  %342 = load i32, i32* %18, align 4
  %343 = add nsw i32 %342, 1
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = icmp sge i32 %343, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %341
  store i32 -1, i32* %16, align 4
  br label %359

349:                                              ; preds = %341
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %18, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  store i32 %356, i32* %16, align 4
  %357 = load i32, i32* %18, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %15, align 4
  br label %359

359:                                              ; preds = %349, %348
  br label %360

360:                                              ; preds = %359, %315
  br label %361

361:                                              ; preds = %360, %262
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* @JPEG_MARKER_SOS, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %457

366:                                              ; preds = %362
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %12, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = call i32 @AV_RB16(i32* %372)
  store i32 %373, i32* %20, align 4
  store i32* null, i32** %8, align 8
  %374 = load i32, i32* %13, align 4
  %375 = load i32, i32* %12, align 4
  %376 = sub nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %379 = add nsw i64 %377, %378
  %380 = call i32* @av_malloc(i64 %379)
  store i32* %380, i32** %9, align 8
  %381 = load i32*, i32** %9, align 8
  %382 = icmp ne i32* %381, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %366
  %384 = load i32, i32* @ENOMEM, align 4
  %385 = call i32 @AVERROR(i32 %384)
  store i32 %385, i32* %4, align 4
  br label %500

386:                                              ; preds = %366
  %387 = load i32*, i32** %9, align 8
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %12, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %20, align 4
  %395 = call i32 @memcpy(i32* %387, i32* %393, i32 %394)
  %396 = load i32, i32* %12, align 4
  %397 = load i32, i32* %20, align 4
  %398 = add nsw i32 %396, %397
  store i32 %398, i32* %18, align 4
  %399 = load i32, i32* %20, align 4
  store i32 %399, i32* %19, align 4
  br label %400

400:                                              ; preds = %444, %386
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* %13, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %449

404:                                              ; preds = %400
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %18, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 255
  br i1 %412, label %413, label %431

413:                                              ; preds = %404
  br label %414

414:                                              ; preds = %423, %413
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 1
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %18, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %421, 255
  br i1 %422, label %423, label %426

423:                                              ; preds = %414
  %424 = load i32, i32* %18, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %18, align 4
  br label %414

426:                                              ; preds = %414
  %427 = load i32*, i32** %9, align 8
  %428 = load i32, i32* %19, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  store i32 255, i32* %430, align 4
  br label %443

431:                                              ; preds = %404
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 1
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %18, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load i32*, i32** %9, align 8
  %440 = load i32, i32* %19, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  store i32 %438, i32* %442, align 4
  br label %443

443:                                              ; preds = %431, %426
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %18, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %18, align 4
  %447 = load i32, i32* %19, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %19, align 4
  br label %400

449:                                              ; preds = %400
  %450 = load i32, i32* %19, align 4
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %10, align 8
  %452 = load i32*, i32** %9, align 8
  %453 = load i64, i64* %10, align 8
  %454 = getelementptr inbounds i32, i32* %452, i64 %453
  %455 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %456 = call i32 @memset(i32* %454, i32 0, i64 %455)
  br label %471

457:                                              ; preds = %362
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %12, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32* %463, i32** %9, align 8
  %464 = load i32, i32* %13, align 4
  %465 = load i32, i32* %12, align 4
  %466 = sub nsw i32 %464, %465
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %10, align 8
  %468 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 2
  %470 = load i32*, i32** %469, align 8
  store i32* %470, i32** %8, align 8
  br label %471

471:                                              ; preds = %457, %449
  %472 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %474 = load i32, i32* %11, align 4
  %475 = load i32, i32* %14, align 4
  %476 = load i32*, i32** %9, align 8
  %477 = load i64, i64* %10, align 8
  %478 = load i32*, i32** %8, align 8
  %479 = call i32 @ff_cbs_insert_unit_data(%struct.TYPE_8__* %472, %struct.TYPE_7__* %473, i32 %474, i32 %475, i32* %476, i64 %477, i32* %478)
  store i32 %479, i32* %17, align 4
  %480 = load i32, i32* %17, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %489

482:                                              ; preds = %471
  %483 = load i32*, i32** %8, align 8
  %484 = icmp ne i32* %483, null
  br i1 %484, label %487, label %485

485:                                              ; preds = %482
  %486 = call i32 @av_freep(i32** %9)
  br label %487

487:                                              ; preds = %485, %482
  %488 = load i32, i32* %17, align 4
  store i32 %488, i32* %4, align 4
  br label %500

489:                                              ; preds = %471
  %490 = load i32, i32* %16, align 4
  %491 = icmp eq i32 %490, -1
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  br label %499

493:                                              ; preds = %489
  %494 = load i32, i32* %16, align 4
  store i32 %494, i32* %14, align 4
  %495 = load i32, i32* %15, align 4
  store i32 %495, i32* %12, align 4
  br label %496

496:                                              ; preds = %493
  %497 = load i32, i32* %11, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %11, align 4
  br label %176

499:                                              ; preds = %492, %180
  store i32 0, i32* %4, align 4
  br label %500

500:                                              ; preds = %499, %487, %383, %294, %271, %159, %119, %101, %25
  %501 = load i32, i32* %4, align 4
  ret i32 %501
}

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ff_cbs_insert_unit_data(%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
