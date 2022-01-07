; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_move.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32*, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32*, i32** }
%struct.TYPE_11__ = type { i32*, i32** }
%struct.TYPE_14__ = type { i32* }

@INT32_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"compression %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @decode_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_move(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @bytestream2_tell(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @bytestream2_skip(i32* %41, i32 8)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @bytestream2_get_le32(i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @bytestream2_skip(i32* %45, i32 8)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @bytestream2_get_le32(i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @INT32_MAX, align 4
  %51 = sdiv i32 %50, 16
  %52 = icmp ugt i32 %49, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %3
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %57, %60
  %62 = icmp ugt i32 %54, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53, %3
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %4, align 4
  br label %498

65:                                               ; preds = %53
  %66 = load i32, i32* %13, align 4
  %67 = mul i32 16, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @bytestream2_tell(i32* %74)
  %76 = load i32, i32* %11, align 4
  %77 = sub i32 %75, %76
  %78 = sub i32 %73, %77
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @decode_zlib(%struct.TYPE_15__* %71, %struct.TYPE_14__* %72, i32 %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %4, align 4
  br label %498

85:                                               ; preds = %70
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @bytestream2_init(i32* %10, i32* %88, i32 %89)
  br label %116

91:                                               ; preds = %65
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @bytestream2_tell(i32* %98)
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @bytestream2_get_bytes_left(i32* %102)
  %104 = call i32 @bytestream2_init(i32* %10, i32* %101, i32 %103)
  br label %115

105:                                              ; preds = %91
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %112, i32* %4, align 4
  br label %498

113:                                              ; preds = %105
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %4, align 4
  br label %498

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %85
  %117 = call i32 @bytestream2_get_bytes_left(i32* %10)
  %118 = load i32, i32* %14, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %121, i32* %4, align 4
  br label %498

122:                                              ; preds = %116
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %486, %122
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %489

127:                                              ; preds = %123
  %128 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %128, i32* %17, align 4
  %129 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %129, i32* %18, align 4
  %130 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %130, i32* %19, align 4
  %131 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %131, i32* %20, align 4
  %132 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %132, i32* %21, align 4
  %133 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %133, i32* %22, align 4
  %134 = call i32 @bytestream2_get_le16(i32* %10)
  store i32 %134, i32* %23, align 4
  %135 = call i32 @bytestream2_skip(i32* %10, i32 2)
  %136 = load i32, i32* %18, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp uge i32 %136, %139
  br i1 %140, label %171, label %141

141:                                              ; preds = %127
  %142 = load i32, i32* %19, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp uge i32 %142, %145
  br i1 %146, label %171, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %20, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp uge i32 %148, %151
  br i1 %152, label %171, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %21, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp uge i32 %154, %157
  br i1 %158, label %171, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %22, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp uge i32 %160, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* %23, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp uge i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165, %159, %153, %147, %141, %127
  br label %486

172:                                              ; preds = %165
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %20, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %21, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176, %172
  br label %486

181:                                              ; preds = %176
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %18, align 4
  %184 = sub nsw i32 %182, %183
  store i32 %184, i32* %27, align 4
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %19, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %28, align 4
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %27, align 4
  %190 = add nsw i32 %188, %189
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ugt i32 %190, %193
  br i1 %194, label %203, label %195

195:                                              ; preds = %181
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %196, %197
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ugt i32 %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195, %181
  br label %486

204:                                              ; preds = %195
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i32**, i32*** %208, align 8
  %210 = getelementptr inbounds i32*, i32** %209, i64 0
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %204
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i32**, i32*** %217, align 8
  %219 = getelementptr inbounds i32*, i32** %218, i64 0
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %213, %204
  %223 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %223, i32* %4, align 4
  br label %498

224:                                              ; preds = %213
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %28, align 4
  %241 = add nsw i32 %239, %240
  %242 = sub nsw i32 %241, 1
  %243 = mul nsw i32 %238, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %231, i64 %244
  %246 = load i32, i32* %18, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %246, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %245, i64 %251
  store i32* %252, i32** %25, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i32**, i32*** %256, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 0
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* %28, align 4
  %269 = add nsw i32 %267, %268
  %270 = sub nsw i32 %269, 1
  %271 = mul nsw i32 %266, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %259, i64 %272
  %274 = load i32, i32* %18, align 4
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = mul nsw i32 %274, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %273, i64 %279
  store i32* %280, i32** %26, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i32**, i32*** %284, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 0
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %23, align 4
  %296 = load i32, i32* %28, align 4
  %297 = add nsw i32 %295, %296
  %298 = sub nsw i32 %297, 1
  %299 = mul nsw i32 %294, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %287, i64 %300
  %302 = load i32, i32* %22, align 4
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = mul nsw i32 %302, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %301, i64 %307
  store i32* %308, i32** %24, align 8
  %309 = load i32, i32* %17, align 4
  %310 = icmp eq i32 %309, 2
  br i1 %310, label %311, label %351

311:                                              ; preds = %224
  store i32 0, i32* %29, align 4
  br label %312

312:                                              ; preds = %347, %311
  %313 = load i32, i32* %29, align 4
  %314 = load i32, i32* %28, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %350

316:                                              ; preds = %312
  %317 = load i32*, i32** %25, align 8
  %318 = load i32*, i32** %26, align 8
  %319 = load i32, i32* %27, align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = mul nsw i32 %319, %322
  %324 = call i32 @memcpy(i32* %317, i32* %318, i32 %323)
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %25, align 8
  %333 = sext i32 %331 to i64
  %334 = sub i64 0, %333
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32* %335, i32** %25, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %26, align 8
  %344 = sext i32 %342 to i64
  %345 = sub i64 0, %344
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32* %346, i32** %26, align 8
  br label %347

347:                                              ; preds = %316
  %348 = load i32, i32* %29, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %29, align 4
  br label %312

350:                                              ; preds = %312
  br label %485

351:                                              ; preds = %224
  %352 = load i32, i32* %17, align 4
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %382

354:                                              ; preds = %351
  store i32 0, i32* %30, align 4
  br label %355

355:                                              ; preds = %378, %354
  %356 = load i32, i32* %30, align 4
  %357 = load i32, i32* %28, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %381

359:                                              ; preds = %355
  %360 = load i32*, i32** %26, align 8
  %361 = load i32, i32* %27, align 4
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = mul nsw i32 %361, %364
  %366 = call i32 @memset(i32* %360, i32 0, i32 %365)
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32*, i32** %26, align 8
  %375 = sext i32 %373 to i64
  %376 = sub i64 0, %375
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  store i32* %377, i32** %26, align 8
  br label %378

378:                                              ; preds = %359
  %379 = load i32, i32* %30, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %30, align 4
  br label %355

381:                                              ; preds = %355
  br label %484

382:                                              ; preds = %351
  %383 = load i32, i32* %17, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %481

385:                                              ; preds = %382
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 2
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 3
  %390 = load i32, i32* %27, align 4
  %391 = load i32, i32* %28, align 4
  %392 = mul nsw i32 %390, %391
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = mul nsw i32 %392, %395
  %397 = call i32 @av_fast_padded_malloc(i32** %387, i32* %389, i32 %396)
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 2
  %400 = load i32*, i32** %399, align 8
  store i32* %400, i32** %31, align 8
  %401 = load i32*, i32** %31, align 8
  %402 = icmp ne i32* %401, null
  br i1 %402, label %406, label %403

403:                                              ; preds = %385
  %404 = load i32, i32* @ENOMEM, align 4
  %405 = call i32 @AVERROR(i32 %404)
  store i32 %405, i32* %4, align 4
  br label %498

406:                                              ; preds = %385
  store i32 0, i32* %32, align 4
  br label %407

407:                                              ; preds = %440, %406
  %408 = load i32, i32* %32, align 4
  %409 = load i32, i32* %28, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %443

411:                                              ; preds = %407
  %412 = load i32*, i32** %31, align 8
  %413 = load i32, i32* %32, align 4
  %414 = load i32, i32* %27, align 4
  %415 = mul nsw i32 %413, %414
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = mul nsw i32 %415, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %412, i64 %420
  %422 = load i32*, i32** %24, align 8
  %423 = load i32, i32* %27, align 4
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = mul nsw i32 %423, %426
  %428 = call i32 @memcpy(i32* %421, i32* %422, i32 %427)
  %429 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32*, i32** %24, align 8
  %437 = sext i32 %435 to i64
  %438 = sub i64 0, %437
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  store i32* %439, i32** %24, align 8
  br label %440

440:                                              ; preds = %411
  %441 = load i32, i32* %32, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %32, align 4
  br label %407

443:                                              ; preds = %407
  store i32 0, i32* %33, align 4
  br label %444

444:                                              ; preds = %477, %443
  %445 = load i32, i32* %33, align 4
  %446 = load i32, i32* %28, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %480

448:                                              ; preds = %444
  %449 = load i32*, i32** %26, align 8
  %450 = load i32*, i32** %31, align 8
  %451 = load i32, i32* %33, align 4
  %452 = load i32, i32* %27, align 4
  %453 = mul nsw i32 %451, %452
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = mul nsw i32 %453, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %450, i64 %458
  %460 = load i32, i32* %27, align 4
  %461 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = mul nsw i32 %460, %463
  %465 = call i32 @memcpy(i32* %449, i32* %459, i32 %464)
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 0
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 0
  %472 = load i32, i32* %471, align 4
  %473 = load i32*, i32** %26, align 8
  %474 = sext i32 %472 to i64
  %475 = sub i64 0, %474
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  store i32* %476, i32** %26, align 8
  br label %477

477:                                              ; preds = %448
  %478 = load i32, i32* %33, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %33, align 4
  br label %444

480:                                              ; preds = %444
  br label %483

481:                                              ; preds = %382
  %482 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %482, i32* %4, align 4
  br label %498

483:                                              ; preds = %480
  br label %484

484:                                              ; preds = %483, %381
  br label %485

485:                                              ; preds = %484, %350
  br label %486

486:                                              ; preds = %485, %203, %180, %171
  %487 = load i32, i32* %16, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %16, align 4
  br label %123

489:                                              ; preds = %123
  %490 = load i32*, i32** %9, align 8
  %491 = load i32, i32* %7, align 4
  %492 = load i32*, i32** %9, align 8
  %493 = call i32 @bytestream2_tell(i32* %492)
  %494 = load i32, i32* %11, align 4
  %495 = sub i32 %493, %494
  %496 = sub i32 %491, %495
  %497 = call i32 @bytestream2_skip(i32* %490, i32 %496)
  store i32 0, i32* %4, align 4
  br label %498

498:                                              ; preds = %489, %481, %403, %222, %120, %113, %108, %83, %63
  %499 = load i32, i32* %4, align 4
  ret i32 %499
}

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @decode_zlib(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
