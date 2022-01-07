; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_copy_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_copy_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @hevc_copy_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_copy_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_34__, align 4
  %12 = alloca %struct.TYPE_34__, align 4
  %13 = alloca %struct.TYPE_34__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_34__, align 4
  %17 = alloca %struct.TYPE_34__, align 4
  %18 = alloca %struct.TYPE_34__, align 4
  %19 = alloca %struct.TYPE_34__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_34__, align 4
  %25 = alloca %struct.TYPE_34__, align 4
  %26 = alloca %struct.TYPE_34__, align 4
  %27 = alloca %struct.TYPE_34__, align 4
  %28 = alloca %struct.TYPE_34__, align 4
  %29 = alloca %struct.TYPE_34__, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_34__, align 4
  %38 = alloca %struct.TYPE_34__, align 4
  %39 = alloca %struct.TYPE_34__, align 4
  %40 = alloca %struct.TYPE_34__, align 4
  %41 = alloca %struct.TYPE_34__, align 4
  %42 = alloca %struct.TYPE_34__, align 4
  %43 = alloca %struct.TYPE_34__, align 4
  %44 = alloca %struct.TYPE_34__, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %53 = bitcast %struct.TYPE_34__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 4, i1 false)
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 2, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %5
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @LD_SB2(i32* %57, i32 %58, i32 %60, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ILVR_B2_SH(i32 %67, i32 %69, i32 %71, i32 %73, i32 %64, i32 %65)
  %75 = load i32, i32* %14, align 4
  %76 = shl i32 %75, 6
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 %77, 6
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ST_SH2(i32 %79, i32 %80, i32* %81, i32 %82)
  br label %309

84:                                               ; preds = %5
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 4, %85
  br i1 %86, label %87, label %132

87:                                               ; preds = %84
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @LD_SB4(i32* %88, i32 %89, i32 %91, i32 %93, i32 %95, i32 %97)
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %23, align 4
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ILVR_B4_SH(i32 %104, i32 %106, i32 %108, i32 %110, i32 %112, i32 %114, i32 %116, i32 %118, i32 %99, i32 %100, i32 %101, i32 %102)
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %23, align 4
  %124 = call i32 @SLLI_4V(i32 %120, i32 %121, i32 %122, i32 %123, i32 6)
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @ST_SH4(i32 %125, i32 %126, i32 %127, i32 %128, i32* %129, i32 %130)
  br label %308

132:                                              ; preds = %84
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 6, %133
  br i1 %134, label %135, label %201

135:                                              ; preds = %132
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @LD_SB6(i32* %136, i32 %137, i32 %139, i32 %141, i32 %143, i32 %145, i32 %147, i32 %149)
  %151 = load i32, i32* %30, align 4
  %152 = load i32, i32* %31, align 4
  %153 = load i32, i32* %32, align 4
  %154 = load i32, i32* %33, align 4
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ILVR_B4_SH(i32 %156, i32 %158, i32 %160, i32 %162, i32 %164, i32 %166, i32 %168, i32 %170, i32 %151, i32 %152, i32 %153, i32 %154)
  %172 = load i32, i32* %34, align 4
  %173 = load i32, i32* %35, align 4
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ILVR_B2_SH(i32 %175, i32 %177, i32 %179, i32 %181, i32 %172, i32 %173)
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %31, align 4
  %185 = load i32, i32* %32, align 4
  %186 = load i32, i32* %33, align 4
  %187 = call i32 @SLLI_4V(i32 %183, i32 %184, i32 %185, i32 %186, i32 6)
  %188 = load i32, i32* %34, align 4
  %189 = shl i32 %188, 6
  store i32 %189, i32* %34, align 4
  %190 = load i32, i32* %35, align 4
  %191 = shl i32 %190, 6
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %30, align 4
  %193 = load i32, i32* %31, align 4
  %194 = load i32, i32* %32, align 4
  %195 = load i32, i32* %33, align 4
  %196 = load i32, i32* %34, align 4
  %197 = load i32, i32* %35, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @ST_SH6(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32* %198, i32 %199)
  br label %307

201:                                              ; preds = %132
  %202 = load i32, i32* %10, align 4
  %203 = srem i32 %202, 8
  %204 = icmp eq i32 0, %203
  br i1 %204, label %205, label %306

205:                                              ; preds = %201
  %206 = load i32, i32* %10, align 4
  %207 = ashr i32 %206, 3
  store i32 %207, i32* %36, align 4
  br label %208

208:                                              ; preds = %212, %205
  %209 = load i32, i32* %36, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %36, align 4
  %211 = icmp ne i32 %209, 0
  br i1 %211, label %212, label %305

212:                                              ; preds = %208
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @LD_SB8(i32* %213, i32 %214, i32 %216, i32 %218, i32 %220, i32 %222, i32 %224, i32 %226, i32 %228, i32 %230)
  %232 = load i32, i32* %7, align 4
  %233 = mul nsw i32 8, %232
  %234 = load i32*, i32** %6, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %6, align 8
  %237 = load i32, i32* %45, align 4
  %238 = load i32, i32* %46, align 4
  %239 = load i32, i32* %47, align 4
  %240 = load i32, i32* %48, align 4
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ILVR_B4_SH(i32 %242, i32 %244, i32 %246, i32 %248, i32 %250, i32 %252, i32 %254, i32 %256, i32 %237, i32 %238, i32 %239, i32 %240)
  %258 = load i32, i32* %49, align 4
  %259 = load i32, i32* %50, align 4
  %260 = load i32, i32* %51, align 4
  %261 = load i32, i32* %52, align 4
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @ILVR_B4_SH(i32 %263, i32 %265, i32 %267, i32 %269, i32 %271, i32 %273, i32 %275, i32 %277, i32 %258, i32 %259, i32 %260, i32 %261)
  %279 = load i32, i32* %45, align 4
  %280 = load i32, i32* %46, align 4
  %281 = load i32, i32* %47, align 4
  %282 = load i32, i32* %48, align 4
  %283 = call i32 @SLLI_4V(i32 %279, i32 %280, i32 %281, i32 %282, i32 6)
  %284 = load i32, i32* %49, align 4
  %285 = load i32, i32* %50, align 4
  %286 = load i32, i32* %51, align 4
  %287 = load i32, i32* %52, align 4
  %288 = call i32 @SLLI_4V(i32 %284, i32 %285, i32 %286, i32 %287, i32 6)
  %289 = load i32, i32* %45, align 4
  %290 = load i32, i32* %46, align 4
  %291 = load i32, i32* %47, align 4
  %292 = load i32, i32* %48, align 4
  %293 = load i32, i32* %49, align 4
  %294 = load i32, i32* %50, align 4
  %295 = load i32, i32* %51, align 4
  %296 = load i32, i32* %52, align 4
  %297 = load i32*, i32** %8, align 8
  %298 = load i32, i32* %9, align 4
  %299 = call i32 @ST_SH8(i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32* %297, i32 %298)
  %300 = load i32, i32* %9, align 4
  %301 = mul nsw i32 8, %300
  %302 = load i32*, i32** %8, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32* %304, i32** %8, align 8
  br label %208

305:                                              ; preds = %208
  br label %306

306:                                              ; preds = %305, %201
  br label %307

307:                                              ; preds = %306, %135
  br label %308

308:                                              ; preds = %307, %87
  br label %309

309:                                              ; preds = %308, %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @LD_SB6(i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH6(i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
