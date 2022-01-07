; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_SPEC2_MakeStatus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_SPEC2_MakeStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__pad_analogmode = common dso_local global i32 0, align 4
@__pad_origin = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_3__*)* @SPEC2_MakeStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SPEC2_MakeStatus(i32 %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @_SHIFTR(i32 %10, i32 16, i32 14)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @__pad_analogmode, align 4
  %26 = and i32 %25, 1792
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %71

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 240
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 240
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 4
  %68 = and i32 %67, 240
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  br label %244

71:                                               ; preds = %3
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 512
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 240
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 20
  %86 = and i32 %85, 240
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 240
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 12
  %100 = and i32 %99, 240
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 255
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  br label %243

116:                                              ; preds = %71
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 768
  br i1 %118, label %119, label %151

119:                                              ; preds = %116
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 24
  %124 = and i32 %123, 255
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 255
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 6
  store i32 0, i32* %148, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 7
  store i32 0, i32* %150, align 4
  br label %242

151:                                              ; preds = %116
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 1024
  br i1 %153, label %154, label %186

154:                                              ; preds = %151
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 24
  %159 = and i32 %158, 255
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 16
  %166 = and i32 %165, 255
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  store i32 0, i32* %170, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 5
  store i32 0, i32* %172, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 8
  %177 = and i32 %176, 255
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 255
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  br label %241

186:                                              ; preds = %151
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, 1280
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 1536
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %7, align 4
  %197 = icmp eq i32 %196, 1792
  br i1 %197, label %198, label %240

198:                                              ; preds = %195, %192, %189, %186
  %199 = load i32*, i32** %5, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %201, 24
  %203 = and i32 %202, 255
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = ashr i32 %208, 16
  %210 = and i32 %209, 255
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 8
  %217 = and i32 %216, 240
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 4
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 4
  %224 = and i32 %223, 240
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  %227 = load i32*, i32** %5, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 240
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %5, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 4
  %237 = and i32 %236, 240
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 7
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %198, %195
  br label %241

241:                                              ; preds = %240, %154
  br label %242

242:                                              ; preds = %241, %119
  br label %243

243:                                              ; preds = %242, %74
  br label %244

244:                                              ; preds = %243, %29
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %247, 128
  store i32 %248, i32* %246, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %251, 128
  store i32 %252, i32* %250, align 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 128
  store i32 %256, i32* %254, align 4
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, 128
  store i32 %260, i32* %258, align 4
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32**, i32*** @__pad_origin, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @__pad_clampS8(i32 %263, i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 4
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32**, i32*** @__pad_origin, align 8
  %279 = load i32, i32* %4, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 3
  %284 = load i32, i32* %283, align 4
  %285 = call i8* @__pad_clampS8(i32 %277, i32 %284)
  %286 = ptrtoint i8* %285 to i32
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32**, i32*** @__pad_origin, align 8
  %293 = load i32, i32* %4, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 4
  %298 = load i32, i32* %297, align 4
  %299 = call i8* @__pad_clampS8(i32 %291, i32 %298)
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 4
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32**, i32*** @__pad_origin, align 8
  %307 = load i32, i32* %4, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 5
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @__pad_clampS8(i32 %305, i32 %312)
  %314 = ptrtoint i8* %313 to i32
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 4
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = load i32**, i32*** @__pad_origin, align 8
  %321 = load i32, i32* %4, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32*, i32** %320, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 6
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @__pad_clampU8(i32 %319, i32 %326)
  %328 = ptrtoint i8* %327 to i32
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 4
  store i32 %328, i32* %330, align 4
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = load i32**, i32*** @__pad_origin, align 8
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32*, i32** %334, i64 %336
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 7
  %340 = load i32, i32* %339, align 4
  %341 = call i8* @__pad_clampU8(i32 %333, i32 %340)
  %342 = ptrtoint i8* %341 to i32
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 5
  store i32 %342, i32* %344, align 4
  ret void
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i8* @__pad_clampS8(i32, i32) #1

declare dso_local i8* @__pad_clampU8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
