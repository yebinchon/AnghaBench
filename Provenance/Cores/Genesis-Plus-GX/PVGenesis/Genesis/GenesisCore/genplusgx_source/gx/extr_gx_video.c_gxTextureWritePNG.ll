; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxTextureWritePNG.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxTextureWritePNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4
@PNG_INTERLACE_NONE = common dso_local global i32 0, align 4
@PNG_COMPRESSION_TYPE_DEFAULT = common dso_local global i32 0, align 4
@PNG_FILTER_TYPE_DEFAULT = common dso_local global i32 0, align 4
@PNG_TRANSFORM_IDENTITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gxTextureWritePNG(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*****, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*****, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = mul nsw i32 %25, 4
  %27 = call i64 @memalign(i32 32, i32 %26)
  %28 = inttoptr i64 %27 to i32*****
  store i32***** %28, i32****** %5, align 8
  %29 = load i32*****, i32****** %5, align 8
  %30 = icmp ne i32***** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %307

32:                                               ; preds = %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 32
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %7, align 8
  %42 = load i32*****, i32****** %5, align 8
  %43 = bitcast i32***** %42 to i32*
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %215, %32
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %218

68:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %192, %68
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %195

75:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 255
  %83 = shl i32 %82, 24
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %83, %86
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 65280
  %91 = ashr i32 %90, 8
  %92 = or i32 %87, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %7, align 8
  br label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %76

103:                                              ; preds = %76
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %128, %103
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = shl i32 %110, 24
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = or i32 %111, %114
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 65280
  %119 = ashr i32 %118, 8
  %120 = or i32 %115, %119
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %7, align 8
  br label %128

128:                                              ; preds = %107
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %104

131:                                              ; preds = %104
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %12, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %159

135:                                              ; preds = %132
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 255
  %139 = shl i32 %138, 24
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %139, %142
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 65280
  %147 = ashr i32 %146, 8
  %148 = or i32 %143, %147
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %10, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %6, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %7, align 8
  br label %156

156:                                              ; preds = %135
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %132

159:                                              ; preds = %132
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %184, %159
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 4
  br i1 %162, label %163, label %187

163:                                              ; preds = %160
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 255
  %167 = shl i32 %166, 24
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 8
  %171 = or i32 %167, %170
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 65280
  %175 = ashr i32 %174, 8
  %176 = or i32 %171, %175
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32*, i32** %11, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %11, align 8
  store i32 %177, i32* %178, align 4
  %180 = load i32*, i32** %6, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %7, align 8
  br label %184

184:                                              ; preds = %163
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %160

187:                                              ; preds = %160
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 16
  store i32* %189, i32** %6, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 16
  store i32* %191, i32** %7, align 8
  br label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 4
  store i32 %194, i32* %14, align 4
  br label %69

195:                                              ; preds = %69
  %196 = load i32*, i32** %11, align 8
  store i32* %196, i32** %8, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  store i32* %202, i32** %9, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  store i32* %208, i32** %10, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  store i32* %214, i32** %11, align 8
  br label %215

215:                                              ; preds = %195
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 4
  store i32 %217, i32* %13, align 4
  br label %62

218:                                              ; preds = %62
  %219 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %220 = call i32 @png_create_write_struct(i32 %219, i32* null, i32* null, i32* null)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load i32*****, i32****** %5, align 8
  %225 = call i32 @free(i32***** %224)
  br label %307

226:                                              ; preds = %218
  %227 = load i32, i32* %16, align 4
  %228 = call i32 @png_create_info_struct(i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %226
  %232 = load i32*****, i32****** %5, align 8
  %233 = call i32 @free(i32***** %232)
  %234 = call i32 @png_destroy_write_struct(i32* %16, i32* null)
  br label %307

235:                                              ; preds = %226
  %236 = load i32, i32* %16, align 4
  %237 = load i32*, i32** %4, align 8
  %238 = call i32 @png_init_io(i32 %236, i32* %237)
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %248 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  %249 = load i32, i32* @PNG_COMPRESSION_TYPE_DEFAULT, align 4
  %250 = load i32, i32* @PNG_FILTER_TYPE_DEFAULT, align 4
  %251 = call i32 @png_set_IHDR(i32 %239, i32 %240, i32 %243, i32 %246, i32 8, i32 %247, i32 %248, i32 %249, i32 %250)
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 8, %255
  %257 = trunc i64 %256 to i32
  %258 = call i64 @memalign(i32 32, i32 %257)
  %259 = inttoptr i64 %258 to i32*****
  store i32***** %259, i32****** %18, align 8
  %260 = load i32*****, i32****** %18, align 8
  %261 = icmp ne i32***** %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %235
  %263 = load i32*****, i32****** %5, align 8
  %264 = call i32 @free(i32***** %263)
  %265 = call i32 @png_destroy_write_struct(i32* %16, i32* %17)
  br label %307

266:                                              ; preds = %235
  store i32 0, i32* %12, align 4
  br label %267

267:                                              ; preds = %288, %266
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %291

273:                                              ; preds = %267
  %274 = load i32*****, i32****** %5, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = mul nsw i32 %275, %278
  %280 = mul nsw i32 %279, 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32****, i32***** %274, i64 %281
  %283 = bitcast i32***** %282 to i32****
  %284 = load i32*****, i32****** %18, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32****, i32***** %284, i64 %286
  store i32**** %283, i32***** %287, align 8
  br label %288

288:                                              ; preds = %273
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  br label %267

291:                                              ; preds = %267
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %17, align 4
  %294 = load i32*****, i32****** %18, align 8
  %295 = call i32 @png_set_rows(i32 %292, i32 %293, i32***** %294)
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* %17, align 4
  %298 = load i32, i32* @PNG_TRANSFORM_IDENTITY, align 4
  %299 = call i32 @png_write_png(i32 %296, i32 %297, i32 %298, i32* null)
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @png_write_end(i32 %300, i32* null)
  %302 = load i32*****, i32****** %18, align 8
  %303 = call i32 @free(i32***** %302)
  %304 = load i32*****, i32****** %5, align 8
  %305 = call i32 @free(i32***** %304)
  %306 = call i32 @png_destroy_write_struct(i32* %16, i32* %17)
  br label %307

307:                                              ; preds = %291, %262, %231, %223, %31
  ret void
}

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @png_create_write_struct(i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*****) #1

declare dso_local i32 @png_create_info_struct(i32) #1

declare dso_local i32 @png_destroy_write_struct(i32*, i32*) #1

declare dso_local i32 @png_init_io(i32, i32*) #1

declare dso_local i32 @png_set_IHDR(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @png_set_rows(i32, i32, i32*****) #1

declare dso_local i32 @png_write_png(i32, i32, i32, i32*) #1

declare dso_local i32 @png_write_end(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
