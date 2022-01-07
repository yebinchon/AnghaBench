; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_pixel_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_pixel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__*)* @image_pixel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_pixel_init(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_7__* %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %28

26:                                               ; preds = %7
  %27 = load i32, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 8, %25 ], [ %27, %26 ]
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = shl i32 1, %30
  %32 = sub i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %28
  %41 = phi i1 [ false, %28 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %17, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %18, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ false, %50 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i8* @sample(i32 %63, i32 %64, i32 %65, i32 %66, i32 0, i32 %67, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %70, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %70, i32* %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 7
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 6
  store i32 %82, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  store i32 %82, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %133

93:                                               ; preds = %60
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %95 = icmp ne %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %132

96:                                               ; preds = %93
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %20, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %101 = load i32, i32* %20, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = load i32, i32* %20, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %117 = load i32, i32* %20, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %125 = load i32, i32* %20, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %96, %93
  br label %280

133:                                              ; preds = %60
  store i32 0, i32* %21, align 4
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %133
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %140, label %167

140:                                              ; preds = %137
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 17
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %140
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = call i8* @sample(i32 %151, i32 %152, i32 %153, i32 %154, i32 1, i32 %155, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  store i32 %158, i32* %162, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 %158, i32* %164, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 %158, i32* %166, align 8
  store i32 1, i32* %21, align 4
  br label %167

167:                                              ; preds = %145, %140, %137, %133
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 2
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %218

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %21, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i8* @sample(i32 %172, i32 %173, i32 %174, i32 %175, i32 %177, i32 %178, i32 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %185 = icmp ne %struct.TYPE_8__* %184, null
  br i1 %185, label %186, label %204

186:                                              ; preds = %171
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 18
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %21, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %18, align 4
  %200 = call i8* @sample(i32 %192, i32 %193, i32 %194, i32 %195, i32 %197, i32 %198, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %217

204:                                              ; preds = %186, %171
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %21, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %18, align 4
  %213 = call i8* @sample(i32 %205, i32 %206, i32 %207, i32 %208, i32 %210, i32 %211, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %204, %191
  br label %239

218:                                              ; preds = %167
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %220 = icmp ne %struct.TYPE_8__* %219, null
  br i1 %220, label %221, label %238

221:                                              ; preds = %218
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 15
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %16, align 4
  %231 = xor i32 %229, %230
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  store i32 %231, i32* %235, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  store i32 %231, i32* %237, align 4
  br label %238

238:                                              ; preds = %226, %221, %218
  br label %239

239:                                              ; preds = %238, %217
  %240 = load i32, i32* %10, align 4
  %241 = and i32 %240, 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %279

243:                                              ; preds = %239
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %245 = icmp eq %struct.TYPE_8__* %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %243
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 17
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %264, label %251

251:                                              ; preds = %246, %243
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %21, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %21, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %18, align 4
  %260 = call i8* @sample(i32 %252, i32 %253, i32 %254, i32 %255, i32 %257, i32 %258, i32 %259)
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %251, %246
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %266 = icmp ne %struct.TYPE_8__* %265, null
  br i1 %266, label %267, label %278

267:                                              ; preds = %264
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 16
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load i32, i32* %16, align 4
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = xor i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %272, %267, %264
  br label %279

279:                                              ; preds = %278, %239
  br label %280

280:                                              ; preds = %279, %132
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %282 = load i32, i32* %19, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 1, %287
  %289 = sub i32 %288, 1
  br label %292

290:                                              ; preds = %280
  %291 = load i32, i32* %16, align 4
  br label %292

292:                                              ; preds = %290, %284
  %293 = phi i32 [ %289, %284 ], [ %291, %290 ]
  %294 = load i32, i32* %19, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = shl i32 1, %299
  %301 = sub i32 %300, 1
  br label %304

302:                                              ; preds = %292
  %303 = load i32, i32* %16, align 4
  br label %304

304:                                              ; preds = %302, %296
  %305 = phi i32 [ %301, %296 ], [ %303, %302 ]
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 4
  %312 = shl i32 1, %311
  %313 = sub i32 %312, 1
  br label %316

314:                                              ; preds = %304
  %315 = load i32, i32* %16, align 4
  br label %316

316:                                              ; preds = %314, %308
  %317 = phi i32 [ %313, %308 ], [ %315, %314 ]
  %318 = load i32, i32* %19, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %316
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 8
  %323 = load i32, i32* %322, align 8
  %324 = shl i32 1, %323
  %325 = sub i32 %324, 1
  br label %328

326:                                              ; preds = %316
  %327 = load i32, i32* %16, align 4
  br label %328

328:                                              ; preds = %326, %320
  %329 = phi i32 [ %325, %320 ], [ %327, %326 ]
  %330 = call i32 @image_pixel_setf(%struct.TYPE_8__* %281, i32 %293, i32 %305, i32 %317, i32 %329)
  %331 = load i32, i32* %10, align 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 9
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 10
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* %15, align 4
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 11
  store i32 %337, i32* %339, align 4
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 19
  store i64 0, i64* %341, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 18
  store i64 0, i64* %343, align 8
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 17
  store i64 0, i64* %345, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 16
  store i64 0, i64* %347, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 15
  store i64 0, i64* %349, align 8
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 14
  store i32 0, i32* %351, align 8
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 13
  store i32 0, i32* %353, align 4
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 12
  store i32 0, i32* %355, align 8
  ret void
}

declare dso_local i8* @sample(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @image_pixel_setf(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
