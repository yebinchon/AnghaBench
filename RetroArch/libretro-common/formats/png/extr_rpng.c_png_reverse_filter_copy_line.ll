; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_png_reverse_filter_copy_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_png_reverse_filter_copy_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_ihdr = type { i32, i32, i32 }
%struct.rpng_process = type { i32*, i32*, i32, i32, i32*, i32 }

@IMAGE_PROCESS_ERROR_END = common dso_local global i32 0, align 4
@IMAGE_PROCESS_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.png_ihdr*, %struct.rpng_process*, i32)* @png_reverse_filter_copy_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_reverse_filter_copy_line(i32* %0, %struct.png_ihdr* %1, %struct.rpng_process* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.png_ihdr*, align 8
  %8 = alloca %struct.rpng_process*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.png_ihdr* %1, %struct.png_ihdr** %7, align 8
  store %struct.rpng_process* %2, %struct.rpng_process** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %310 [
    i32 136, label %14
    i32 134, label %25
    i32 133, label %89
    i32 137, label %122
    i32 135, label %214
  ]

14:                                               ; preds = %4
  %15 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %16 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %19 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %22 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32* %17, i32* %20, i32 %23)
  br label %312

25:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %29 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %34 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %41 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %51 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %85, %49
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %56 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %53
  %60 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %61 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %65 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %63, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %72 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %70, %77
  %79 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %80 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %59
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %53

88:                                               ; preds = %53
  br label %312

89:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %118, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %93 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %98 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %105 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %103, %110
  %112 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %113 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %90

121:                                              ; preds = %90
  br label %312

122:                                              ; preds = %4
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %157, %122
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %126 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %123
  %130 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %131 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %11, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %142 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr i8, i8* %140, i64 %148
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %152 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  br label %157

157:                                              ; preds = %129
  %158 = load i32, i32* %10, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %123

160:                                              ; preds = %123
  %161 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %162 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %210, %160
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %167 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp ult i32 %165, %168
  br i1 %169, label %170, label %213

170:                                              ; preds = %164
  %171 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %172 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %176 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sub i32 %174, %177
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %183 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %181, %188
  %190 = ashr i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %12, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %195 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr i8, i8* %193, i64 %201
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %205 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %203, i32* %209, align 4
  br label %210

210:                                              ; preds = %170
  %211 = load i32, i32* %10, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %164

213:                                              ; preds = %164
  br label %312

214:                                              ; preds = %4
  store i32 0, i32* %10, align 4
  br label %215

215:                                              ; preds = %246, %214
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %218 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp ult i32 %216, %219
  br i1 %220, label %221, label %249

221:                                              ; preds = %215
  %222 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %223 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @paeth(i32 0, i32 %228, i32 0)
  %230 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %231 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr i8, i8* %229, i64 %237
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %241 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %239, i32* %245, align 4
  br label %246

246:                                              ; preds = %221
  %247 = load i32, i32* %10, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %215

249:                                              ; preds = %215
  %250 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %251 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %306, %249
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %256 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp ult i32 %254, %257
  br i1 %258, label %259, label %309

259:                                              ; preds = %253
  %260 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %261 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %265 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = sub i32 %263, %266
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %262, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %272 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %279 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %278, i32 0, i32 4
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %283 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sub i32 %281, %284
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %280, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i8* @paeth(i32 %270, i32 %277, i32 %288)
  %290 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %291 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %10, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr i8, i8* %289, i64 %297
  %299 = ptrtoint i8* %298 to i32
  %300 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %301 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %299, i32* %305, align 4
  br label %306

306:                                              ; preds = %259
  %307 = load i32, i32* %10, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %10, align 4
  br label %253

309:                                              ; preds = %253
  br label %312

310:                                              ; preds = %4
  %311 = load i32, i32* @IMAGE_PROCESS_ERROR_END, align 4
  store i32 %311, i32* %5, align 4
  br label %391

312:                                              ; preds = %309, %213, %121, %88, %14
  %313 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %314 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  switch i32 %315, label %379 [
    i32 132, label %316
    i32 129, label %328
    i32 130, label %340
    i32 131, label %355
    i32 128, label %367
  ]

316:                                              ; preds = %312
  %317 = load i32*, i32** %6, align 8
  %318 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %319 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %322 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %325 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @png_reverse_filter_copy_line_bw(i32* %317, i32* %320, i32 %323, i32 %326)
  br label %379

328:                                              ; preds = %312
  %329 = load i32*, i32** %6, align 8
  %330 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %331 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %334 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %337 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @png_reverse_filter_copy_line_rgb(i32* %329, i32* %332, i32 %335, i32 %338)
  br label %379

340:                                              ; preds = %312
  %341 = load i32*, i32** %6, align 8
  %342 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %343 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %346 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %349 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %352 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @png_reverse_filter_copy_line_plt(i32* %341, i32* %344, i32 %347, i32 %350, i32 %353)
  br label %379

355:                                              ; preds = %312
  %356 = load i32*, i32** %6, align 8
  %357 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %358 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %361 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %364 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @png_reverse_filter_copy_line_gray_alpha(i32* %356, i32* %359, i32 %362, i32 %365)
  br label %379

367:                                              ; preds = %312
  %368 = load i32*, i32** %6, align 8
  %369 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %370 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %373 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.png_ihdr*, %struct.png_ihdr** %7, align 8
  %376 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @png_reverse_filter_copy_line_rgba(i32* %368, i32* %371, i32 %374, i32 %377)
  br label %379

379:                                              ; preds = %312, %367, %355, %340, %328, %316
  %380 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %381 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %384 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = load %struct.rpng_process*, %struct.rpng_process** %8, align 8
  %387 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @memcpy(i32* %382, i32* %385, i32 %388)
  %390 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  store i32 %390, i32* %5, align 4
  br label %391

391:                                              ; preds = %379, %310
  %392 = load i32, i32* %5, align 4
  ret i32 %392
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @paeth(i32, i32, i32) #1

declare dso_local i32 @png_reverse_filter_copy_line_bw(i32*, i32*, i32, i32) #1

declare dso_local i32 @png_reverse_filter_copy_line_rgb(i32*, i32*, i32, i32) #1

declare dso_local i32 @png_reverse_filter_copy_line_plt(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @png_reverse_filter_copy_line_gray_alpha(i32*, i32*, i32, i32) #1

declare dso_local i32 @png_reverse_filter_copy_line_rgba(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
