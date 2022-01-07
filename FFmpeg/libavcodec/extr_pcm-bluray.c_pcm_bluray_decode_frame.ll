; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcm-bluray.c_pcm_bluray_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcm-bluray.c_pcm_bluray_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PCM packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@FF_DEBUG_BITSTREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"pcm_bluray_decode_frame: decoded %d -> %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @pcm_bluray_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_bluray_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(%struct.TYPE_13__* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %5, align 4
  br label %417

36:                                               ; preds = %4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @pcm_bluray_parse_header(%struct.TYPE_13__* %37, i32* %38)
  store i32 %39, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %5, align 4
  br label %417

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 4
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @bytestream2_init(i32* %13, i32* %48, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @FFALIGN(i32 %53, i32 2)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 16, i32 24
  %63 = mul nsw i32 %55, %62
  %64 = ashr i32 %63, 3
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = call i32 @ff_get_buffer(%struct.TYPE_13__* %71, %struct.TYPE_12__* %72, i32 0)
  store i32 %73, i32* %16, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %43
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %5, align 4
  br label %417

77:                                               ; preds = %43
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8**
  store i8** %83, i8*** %19, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %20, align 8
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %400

92:                                               ; preds = %77
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %399 [
    i32 129, label %96
    i32 135, label %96
    i32 136, label %96
    i32 130, label %127
    i32 128, label %127
    i32 137, label %127
    i32 134, label %127
    i32 133, label %175
    i32 132, label %242
    i32 131, label %318
  ]

96:                                               ; preds = %92, %92, %92
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %18, align 4
  %99 = mul nsw i32 %98, %97
  store i32 %99, i32* %18, align 4
  %100 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %110, %105
  %107 = call i8* @bytestream2_get_be16u(i32* %13)
  %108 = load i8**, i8*** %19, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %19, align 8
  store i8* %107, i8** %108, align 8
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %106, label %114

114:                                              ; preds = %110
  br label %126

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %121, %115
  %117 = call i32 @bytestream2_get_be24u(i32* %13)
  %118 = shl i32 %117, 8
  %119 = load i32*, i32** %20, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %20, align 8
  store i32 %118, i32* %119, align 4
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %116, label %125

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %114
  br label %399

127:                                              ; preds = %92, %92, %92, %92
  %128 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %148, %133
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %142, %134
  %139 = call i8* @bytestream2_get_be16u(i32* %13)
  %140 = load i8**, i8*** %19, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %19, align 8
  store i8* %139, i8** %140, align 8
  br label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %138, label %146

146:                                              ; preds = %142
  %147 = call i32 @bytestream2_skip(i32* %13, i32 2)
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %134, label %152

152:                                              ; preds = %148
  br label %174

153:                                              ; preds = %127
  br label %154

154:                                              ; preds = %169, %153
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %163, %154
  %159 = call i32 @bytestream2_get_be24u(i32* %13)
  %160 = shl i32 %159, 8
  %161 = load i32*, i32** %20, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %20, align 8
  store i32 %160, i32* %161, align 4
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %158, label %167

167:                                              ; preds = %163
  %168 = call i32 @bytestream2_skip(i32* %13, i32 3)
  br label %169

169:                                              ; preds = %167
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %154, label %173

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %152
  br label %399

175:                                              ; preds = %92
  %176 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  br i1 %180, label %181, label %208

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %203, %181
  %183 = call i8* @bytestream2_get_be16u(i32* %13)
  %184 = load i8**, i8*** %19, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  store i8* %183, i8** %185, align 8
  %186 = call i8* @bytestream2_get_be16u(i32* %13)
  %187 = load i8**, i8*** %19, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  store i8* %186, i8** %188, align 8
  %189 = call i8* @bytestream2_get_be16u(i32* %13)
  %190 = load i8**, i8*** %19, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 2
  store i8* %189, i8** %191, align 8
  %192 = call i8* @bytestream2_get_be16u(i32* %13)
  %193 = load i8**, i8*** %19, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 4
  store i8* %192, i8** %194, align 8
  %195 = call i8* @bytestream2_get_be16u(i32* %13)
  %196 = load i8**, i8*** %19, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 5
  store i8* %195, i8** %197, align 8
  %198 = call i8* @bytestream2_get_be16u(i32* %13)
  %199 = load i8**, i8*** %19, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 3
  store i8* %198, i8** %200, align 8
  %201 = load i8**, i8*** %19, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 6
  store i8** %202, i8*** %19, align 8
  br label %203

203:                                              ; preds = %182
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %182, label %207

207:                                              ; preds = %203
  br label %241

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %236, %208
  %210 = call i32 @bytestream2_get_be24u(i32* %13)
  %211 = shl i32 %210, 8
  %212 = load i32*, i32** %20, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %211, i32* %213, align 4
  %214 = call i32 @bytestream2_get_be24u(i32* %13)
  %215 = shl i32 %214, 8
  %216 = load i32*, i32** %20, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 %215, i32* %217, align 4
  %218 = call i32 @bytestream2_get_be24u(i32* %13)
  %219 = shl i32 %218, 8
  %220 = load i32*, i32** %20, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 %219, i32* %221, align 4
  %222 = call i32 @bytestream2_get_be24u(i32* %13)
  %223 = shl i32 %222, 8
  %224 = load i32*, i32** %20, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  store i32 %223, i32* %225, align 4
  %226 = call i32 @bytestream2_get_be24u(i32* %13)
  %227 = shl i32 %226, 8
  %228 = load i32*, i32** %20, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 5
  store i32 %227, i32* %229, align 4
  %230 = call i32 @bytestream2_get_be24u(i32* %13)
  %231 = shl i32 %230, 8
  %232 = load i32*, i32** %20, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  store i32 %231, i32* %233, align 4
  %234 = load i32*, i32** %20, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 6
  store i32* %235, i32** %20, align 8
  br label %236

236:                                              ; preds = %209
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %209, label %240

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %207
  br label %399

242:                                              ; preds = %92
  %243 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %243, %246
  br i1 %247, label %248, label %279

248:                                              ; preds = %242
  br label %249

249:                                              ; preds = %274, %248
  %250 = call i8* @bytestream2_get_be16u(i32* %13)
  %251 = load i8**, i8*** %19, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 0
  store i8* %250, i8** %252, align 8
  %253 = call i8* @bytestream2_get_be16u(i32* %13)
  %254 = load i8**, i8*** %19, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 1
  store i8* %253, i8** %255, align 8
  %256 = call i8* @bytestream2_get_be16u(i32* %13)
  %257 = load i8**, i8*** %19, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 2
  store i8* %256, i8** %258, align 8
  %259 = call i8* @bytestream2_get_be16u(i32* %13)
  %260 = load i8**, i8*** %19, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 5
  store i8* %259, i8** %261, align 8
  %262 = call i8* @bytestream2_get_be16u(i32* %13)
  %263 = load i8**, i8*** %19, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 3
  store i8* %262, i8** %264, align 8
  %265 = call i8* @bytestream2_get_be16u(i32* %13)
  %266 = load i8**, i8*** %19, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 4
  store i8* %265, i8** %267, align 8
  %268 = call i8* @bytestream2_get_be16u(i32* %13)
  %269 = load i8**, i8*** %19, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 6
  store i8* %268, i8** %270, align 8
  %271 = load i8**, i8*** %19, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 7
  store i8** %272, i8*** %19, align 8
  %273 = call i32 @bytestream2_skip(i32* %13, i32 2)
  br label %274

274:                                              ; preds = %249
  %275 = load i32, i32* %18, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %249, label %278

278:                                              ; preds = %274
  br label %317

279:                                              ; preds = %242
  br label %280

280:                                              ; preds = %312, %279
  %281 = call i32 @bytestream2_get_be24u(i32* %13)
  %282 = shl i32 %281, 8
  %283 = load i32*, i32** %20, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32 %282, i32* %284, align 4
  %285 = call i32 @bytestream2_get_be24u(i32* %13)
  %286 = shl i32 %285, 8
  %287 = load i32*, i32** %20, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 %286, i32* %288, align 4
  %289 = call i32 @bytestream2_get_be24u(i32* %13)
  %290 = shl i32 %289, 8
  %291 = load i32*, i32** %20, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  store i32 %290, i32* %292, align 4
  %293 = call i32 @bytestream2_get_be24u(i32* %13)
  %294 = shl i32 %293, 8
  %295 = load i32*, i32** %20, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 5
  store i32 %294, i32* %296, align 4
  %297 = call i32 @bytestream2_get_be24u(i32* %13)
  %298 = shl i32 %297, 8
  %299 = load i32*, i32** %20, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 3
  store i32 %298, i32* %300, align 4
  %301 = call i32 @bytestream2_get_be24u(i32* %13)
  %302 = shl i32 %301, 8
  %303 = load i32*, i32** %20, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 4
  store i32 %302, i32* %304, align 4
  %305 = call i32 @bytestream2_get_be24u(i32* %13)
  %306 = shl i32 %305, 8
  %307 = load i32*, i32** %20, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 6
  store i32 %306, i32* %308, align 4
  %309 = load i32*, i32** %20, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 7
  store i32* %310, i32** %20, align 8
  %311 = call i32 @bytestream2_skip(i32* %13, i32 3)
  br label %312

312:                                              ; preds = %280
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %18, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %280, label %316

316:                                              ; preds = %312
  br label %317

317:                                              ; preds = %316, %278
  br label %399

318:                                              ; preds = %92
  %319 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = icmp eq i64 %319, %322
  br i1 %323, label %324, label %357

324:                                              ; preds = %318
  br label %325

325:                                              ; preds = %352, %324
  %326 = call i8* @bytestream2_get_be16u(i32* %13)
  %327 = load i8**, i8*** %19, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i64 0
  store i8* %326, i8** %328, align 8
  %329 = call i8* @bytestream2_get_be16u(i32* %13)
  %330 = load i8**, i8*** %19, align 8
  %331 = getelementptr inbounds i8*, i8** %330, i64 1
  store i8* %329, i8** %331, align 8
  %332 = call i8* @bytestream2_get_be16u(i32* %13)
  %333 = load i8**, i8*** %19, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 2
  store i8* %332, i8** %334, align 8
  %335 = call i8* @bytestream2_get_be16u(i32* %13)
  %336 = load i8**, i8*** %19, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 6
  store i8* %335, i8** %337, align 8
  %338 = call i8* @bytestream2_get_be16u(i32* %13)
  %339 = load i8**, i8*** %19, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 4
  store i8* %338, i8** %340, align 8
  %341 = call i8* @bytestream2_get_be16u(i32* %13)
  %342 = load i8**, i8*** %19, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 5
  store i8* %341, i8** %343, align 8
  %344 = call i8* @bytestream2_get_be16u(i32* %13)
  %345 = load i8**, i8*** %19, align 8
  %346 = getelementptr inbounds i8*, i8** %345, i64 7
  store i8* %344, i8** %346, align 8
  %347 = call i8* @bytestream2_get_be16u(i32* %13)
  %348 = load i8**, i8*** %19, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 3
  store i8* %347, i8** %349, align 8
  %350 = load i8**, i8*** %19, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 8
  store i8** %351, i8*** %19, align 8
  br label %352

352:                                              ; preds = %325
  %353 = load i32, i32* %18, align 4
  %354 = add nsw i32 %353, -1
  store i32 %354, i32* %18, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %325, label %356

356:                                              ; preds = %352
  br label %398

357:                                              ; preds = %318
  br label %358

358:                                              ; preds = %393, %357
  %359 = call i32 @bytestream2_get_be24u(i32* %13)
  %360 = shl i32 %359, 8
  %361 = load i32*, i32** %20, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  store i32 %360, i32* %362, align 4
  %363 = call i32 @bytestream2_get_be24u(i32* %13)
  %364 = shl i32 %363, 8
  %365 = load i32*, i32** %20, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32 %364, i32* %366, align 4
  %367 = call i32 @bytestream2_get_be24u(i32* %13)
  %368 = shl i32 %367, 8
  %369 = load i32*, i32** %20, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  store i32 %368, i32* %370, align 4
  %371 = call i32 @bytestream2_get_be24u(i32* %13)
  %372 = shl i32 %371, 8
  %373 = load i32*, i32** %20, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 6
  store i32 %372, i32* %374, align 4
  %375 = call i32 @bytestream2_get_be24u(i32* %13)
  %376 = shl i32 %375, 8
  %377 = load i32*, i32** %20, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 4
  store i32 %376, i32* %378, align 4
  %379 = call i32 @bytestream2_get_be24u(i32* %13)
  %380 = shl i32 %379, 8
  %381 = load i32*, i32** %20, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 5
  store i32 %380, i32* %382, align 4
  %383 = call i32 @bytestream2_get_be24u(i32* %13)
  %384 = shl i32 %383, 8
  %385 = load i32*, i32** %20, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 7
  store i32 %384, i32* %386, align 4
  %387 = call i32 @bytestream2_get_be24u(i32* %13)
  %388 = shl i32 %387, 8
  %389 = load i32*, i32** %20, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 3
  store i32 %388, i32* %390, align 4
  %391 = load i32*, i32** %20, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 8
  store i32* %392, i32** %20, align 8
  br label %393

393:                                              ; preds = %358
  %394 = load i32, i32* %18, align 4
  %395 = add nsw i32 %394, -1
  store i32 %395, i32* %18, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %358, label %397

397:                                              ; preds = %393
  br label %398

398:                                              ; preds = %397, %356
  br label %399

399:                                              ; preds = %92, %398, %317, %241, %174, %126
  br label %400

400:                                              ; preds = %399, %77
  %401 = load i32*, i32** %8, align 8
  store i32 1, i32* %401, align 4
  %402 = call i32 @bytestream2_tell(i32* %13)
  store i32 %402, i32* %16, align 4
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @FF_DEBUG_BITSTREAM, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %400
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %12, align 4
  %413 = call i32 @ff_dlog(%struct.TYPE_13__* %410, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %411, i32 %412)
  br label %414

414:                                              ; preds = %409, %400
  %415 = load i32, i32* %16, align 4
  %416 = add nsw i32 %415, 4
  store i32 %416, i32* %5, align 4
  br label %417

417:                                              ; preds = %414, %75, %41, %31
  %418 = load i32, i32* %5, align 4
  ret i32 %418
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @pcm_bluray_parse_header(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i8* @bytestream2_get_be16u(i32*) #1

declare dso_local i32 @bytestream2_get_be24u(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_13__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
