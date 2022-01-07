; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bethsoftvideo.c_bethsoftvid_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bethsoftvideo.c_bethsoftvid_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32*, i32** }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32 }

@AV_PKT_DATA_PALETTE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error reading palette\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @bethsoftvid_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bethsoftvid_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %26, %struct.TYPE_16__* %29, i32 0)
  store i32 %30, i32* %17, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %5, align 4
  br label %261

34:                                               ; preds = %4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %34
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AV_PKT_DATA_PALETTE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %50
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bytestream2_init(i32* %61, i32 %67, i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = call i32 @set_palette(%struct.TYPE_13__* %75)
  store i32 %76, i32* %17, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %59
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %5, align 4
  br label %261

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %50, %34
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bytestream2_init(i32* %83, i32 %86, i32 %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %12, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %104, i64 %116
  store i32* %117, i32** %13, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = call i8* @bytestream2_get_byte(i32* %119)
  %121 = ptrtoint i8* %120 to i8
  store i8 %121, i8* %11, align 1
  %122 = sext i8 %121 to i32
  switch i32 %122, label %162 [
    i32 131, label %123
    i32 128, label %137
    i32 129, label %161
    i32 130, label %161
  ]

123:                                              ; preds = %81
  %124 = load i32*, i32** %8, align 8
  store i32 0, i32* %124, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = call i32 @set_palette(%struct.TYPE_13__* %125)
  store i32 %126, i32* %17, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 @av_log(%struct.TYPE_15__* %129, i32 %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %5, align 4
  br label %261

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = call i32 @bytestream2_tell(i32* %135)
  store i32 %136, i32* %5, align 4
  br label %261

137:                                              ; preds = %81
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = call i32 @bytestream2_get_le16(i32* %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %147, i32* %5, align 4
  br label %261

148:                                              ; preds = %137
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %18, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32*, i32** %12, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %12, align 8
  br label %161

161:                                              ; preds = %81, %81, %148
  br label %164

162:                                              ; preds = %81
  %163 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %163, i32* %5, align 4
  br label %261

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %238, %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = call i8* @bytestream2_get_byte(i32* %167)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %246

171:                                              ; preds = %165
  %172 = load i32, i32* %16, align 4
  %173 = and i32 %172, 127
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %216, %171
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %217

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %179, 128
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32*, i32** %12, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @bytestream2_get_buffer(i32* %183, i32* %184, i32 %185)
  br label %199

187:                                              ; preds = %178
  %188 = load i8, i8* %11, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 130
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i32*, i32** %12, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = call i8* @bytestream2_peek_byte(i32* %194)
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @memset(i32* %192, i8* %195, i32 %196)
  br label %198

198:                                              ; preds = %191, %187
  br label %199

199:                                              ; preds = %198, %181
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %19, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32*, i32** %12, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %12, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %14, align 4
  %212 = load i32*, i32** %12, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = icmp eq i32* %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %199
  br label %247

216:                                              ; preds = %199
  br label %174

217:                                              ; preds = %174
  %218 = load i32, i32* %16, align 4
  %219 = icmp slt i32 %218, 128
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = load i32*, i32** %12, align 8
  %224 = load i32, i32* %19, align 4
  %225 = call i32 @bytestream2_get_buffer(i32* %222, i32* %223, i32 %224)
  br label %238

226:                                              ; preds = %217
  %227 = load i8, i8* %11, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 130
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load i32*, i32** %12, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = call i8* @bytestream2_get_byte(i32* %233)
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @memset(i32* %231, i8* %234, i32 %235)
  br label %237

237:                                              ; preds = %230, %226
  br label %238

238:                                              ; preds = %237, %220
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %14, align 4
  %241 = sub nsw i32 %240, %239
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32*, i32** %12, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %12, align 8
  br label %165

246:                                              ; preds = %165
  br label %247

247:                                              ; preds = %246, %215
  %248 = load i8*, i8** %7, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %250, align 8
  %252 = call i32 @av_frame_ref(i8* %248, %struct.TYPE_16__* %251)
  store i32 %252, i32* %17, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = load i32, i32* %17, align 4
  store i32 %255, i32* %5, align 4
  br label %261

256:                                              ; preds = %247
  %257 = load i32*, i32** %8, align 8
  store i32 1, i32* %257, align 4
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %256, %254, %162, %146, %133, %128, %78, %32
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @set_palette(%struct.TYPE_13__*) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i8*, i32) #1

declare dso_local i8* @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
