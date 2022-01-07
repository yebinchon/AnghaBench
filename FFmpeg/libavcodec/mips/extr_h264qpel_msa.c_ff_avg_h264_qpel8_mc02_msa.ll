; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc02_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc02_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel8_mc02_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__, align 4
  %15 = alloca %struct.TYPE_20__, align 4
  %16 = alloca %struct.TYPE_20__, align 4
  %17 = alloca %struct.TYPE_20__, align 4
  %18 = alloca %struct.TYPE_20__, align 4
  %19 = alloca %struct.TYPE_20__, align 4
  %20 = alloca %struct.TYPE_20__, align 4
  %21 = alloca %struct.TYPE_20__, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca %struct.TYPE_20__, align 4
  %51 = alloca %struct.TYPE_20__, align 4
  %52 = alloca %struct.TYPE_20__, align 4
  %53 = alloca %struct.TYPE_20__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %11, align 4
  store i32 5140, i32* %12, align 4
  store i32 507, i32* %13, align 4
  %54 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 4, i1 false)
  %55 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 4, i1 false)
  %56 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = bitcast %struct.TYPE_20__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 4, i1 false)
  %58 = call i64 @__msa_fill_h(i32 64257)
  store i64 %58, i64* %39, align 8
  %59 = call i64 @__msa_fill_h(i32 5140)
  store i64 %59, i64* %40, align 8
  %60 = call i64 @__msa_fill_h(i32 507)
  store i64 %60, i64* %41, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 2
  %63 = load i32*, i32** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %23, align 8
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* %25, align 8
  %73 = load i64, i64* %26, align 8
  %74 = call i32 @LD_SB5(i32* %67, i32 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 5, %75
  %77 = load i32*, i32** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %5, align 8
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* %23, align 8
  %82 = load i64, i64* %24, align 8
  %83 = load i64, i64* %25, align 8
  %84 = load i64, i64* %26, align 8
  %85 = call i32 @XORI_B5_128_SB(i64 %80, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i64, i64* %23, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* %23, align 8
  %90 = load i64, i64* %25, align 8
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %26, align 8
  %93 = load i64, i64* %25, align 8
  %94 = load i64, i64* %32, align 8
  %95 = load i64, i64* %36, align 8
  %96 = load i64, i64* %33, align 8
  %97 = load i64, i64* %37, align 8
  %98 = call i32 @ILVR_B4_SB(i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %28, align 8
  %103 = load i64, i64* %29, align 8
  %104 = load i64, i64* %30, align 8
  %105 = call i32 @LD_SB4(i32* %99, i32 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 4, %106
  %108 = load i32*, i32** %5, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %5, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %28, align 8
  %113 = load i64, i64* %29, align 8
  %114 = load i64, i64* %30, align 8
  %115 = call i32 @XORI_B4_128_SB(i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %27, align 8
  %117 = load i64, i64* %26, align 8
  %118 = load i64, i64* %28, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %29, align 8
  %121 = load i64, i64* %28, align 8
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %29, align 8
  %124 = load i64, i64* %34, align 8
  %125 = load i64, i64* %38, align 8
  %126 = load i64, i64* %35, align 8
  %127 = load i64, i64* %31, align 8
  %128 = call i32 @ILVR_B4_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %32, align 8
  %130 = load i64, i64* %33, align 8
  %131 = load i64, i64* %34, align 8
  %132 = load i64, i64* %39, align 8
  %133 = load i64, i64* %40, align 8
  %134 = load i64, i64* %41, align 8
  %135 = call i32 @AVC_DOT_SH3_SH(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  store i32 %135, i32* %42, align 4
  %136 = load i64, i64* %36, align 8
  %137 = load i64, i64* %37, align 8
  %138 = load i64, i64* %38, align 8
  %139 = load i64, i64* %39, align 8
  %140 = load i64, i64* %40, align 8
  %141 = load i64, i64* %41, align 8
  %142 = call i32 @AVC_DOT_SH3_SH(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141)
  store i32 %142, i32* %43, align 4
  %143 = load i64, i64* %33, align 8
  %144 = load i64, i64* %34, align 8
  %145 = load i64, i64* %35, align 8
  %146 = load i64, i64* %39, align 8
  %147 = load i64, i64* %40, align 8
  %148 = load i64, i64* %41, align 8
  %149 = call i32 @AVC_DOT_SH3_SH(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  store i32 %149, i32* %44, align 4
  %150 = load i64, i64* %37, align 8
  %151 = load i64, i64* %38, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %39, align 8
  %154 = load i64, i64* %40, align 8
  %155 = load i64, i64* %41, align 8
  %156 = call i32 @AVC_DOT_SH3_SH(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  store i32 %156, i32* %45, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i64, i64* %22, align 8
  %160 = load i64, i64* %23, align 8
  %161 = load i64, i64* %24, align 8
  %162 = load i64, i64* %25, align 8
  %163 = call i32 @LD_SB4(i32* %157, i32 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %22, align 8
  %165 = load i64, i64* %23, align 8
  %166 = load i64, i64* %24, align 8
  %167 = load i64, i64* %25, align 8
  %168 = call i32 @XORI_B4_128_SB(i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %22, align 8
  %170 = load i64, i64* %30, align 8
  %171 = load i64, i64* %23, align 8
  %172 = load i64, i64* %22, align 8
  %173 = load i64, i64* %24, align 8
  %174 = load i64, i64* %23, align 8
  %175 = load i64, i64* %25, align 8
  %176 = load i64, i64* %24, align 8
  %177 = load i64, i64* %32, align 8
  %178 = load i64, i64* %36, align 8
  %179 = load i64, i64* %33, align 8
  %180 = load i64, i64* %37, align 8
  %181 = call i32 @ILVR_B4_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %35, align 8
  %184 = load i64, i64* %32, align 8
  %185 = load i64, i64* %39, align 8
  %186 = load i64, i64* %40, align 8
  %187 = load i64, i64* %41, align 8
  %188 = call i32 @AVC_DOT_SH3_SH(i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187)
  store i32 %188, i32* %46, align 4
  %189 = load i64, i64* %38, align 8
  %190 = load i64, i64* %31, align 8
  %191 = load i64, i64* %36, align 8
  %192 = load i64, i64* %39, align 8
  %193 = load i64, i64* %40, align 8
  %194 = load i64, i64* %41, align 8
  %195 = call i32 @AVC_DOT_SH3_SH(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  store i32 %195, i32* %47, align 4
  %196 = load i64, i64* %35, align 8
  %197 = load i64, i64* %32, align 8
  %198 = load i64, i64* %33, align 8
  %199 = load i64, i64* %39, align 8
  %200 = load i64, i64* %40, align 8
  %201 = load i64, i64* %41, align 8
  %202 = call i32 @AVC_DOT_SH3_SH(i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  store i32 %202, i32* %48, align 4
  %203 = load i64, i64* %31, align 8
  %204 = load i64, i64* %36, align 8
  %205 = load i64, i64* %37, align 8
  %206 = load i64, i64* %39, align 8
  %207 = load i64, i64* %40, align 8
  %208 = load i64, i64* %41, align 8
  %209 = call i32 @AVC_DOT_SH3_SH(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  store i32 %209, i32* %49, align 4
  %210 = load i32*, i32** %4, align 8
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @LD4(i32* %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @INSERT_D2_UB(i32 %217, i32 %218, i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %10, align 4
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @INSERT_D2_UB(i32 %222, i32 %223, i32 %225)
  %227 = load i32*, i32** %4, align 8
  %228 = load i32, i32* %6, align 4
  %229 = mul nsw i32 4, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @LD4(i32* %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @INSERT_D2_UB(i32 %238, i32 %239, i32 %241)
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %10, align 4
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @INSERT_D2_UB(i32 %243, i32 %244, i32 %246)
  %248 = load i32, i32* %42, align 4
  %249 = load i32, i32* %43, align 4
  %250 = load i32, i32* %44, align 4
  %251 = load i32, i32* %45, align 4
  %252 = call i32 @SRARI_H4_SH(i32 %248, i32 %249, i32 %250, i32 %251, i32 5)
  %253 = load i32, i32* %46, align 4
  %254 = load i32, i32* %47, align 4
  %255 = load i32, i32* %48, align 4
  %256 = load i32, i32* %49, align 4
  %257 = call i32 @SRARI_H4_SH(i32 %253, i32 %254, i32 %255, i32 %256, i32 5)
  %258 = load i32, i32* %42, align 4
  %259 = load i32, i32* %43, align 4
  %260 = load i32, i32* %44, align 4
  %261 = load i32, i32* %45, align 4
  %262 = call i32 @SAT_SH4_SH(i32 %258, i32 %259, i32 %260, i32 %261, i32 7)
  %263 = load i32, i32* %46, align 4
  %264 = load i32, i32* %47, align 4
  %265 = load i32, i32* %48, align 4
  %266 = load i32, i32* %49, align 4
  %267 = call i32 @SAT_SH4_SH(i32 %263, i32 %264, i32 %265, i32 %266, i32 7)
  %268 = load i32, i32* %42, align 4
  %269 = load i32, i32* %43, align 4
  %270 = call i32 @PCKEV_XORI128_UB(i32 %268, i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  store i32 %270, i32* %271, align 4
  %272 = bitcast %struct.TYPE_20__* %18 to i8*
  %273 = bitcast %struct.TYPE_20__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %272, i8* align 4 %273, i64 4, i1 false)
  %274 = load i32, i32* %44, align 4
  %275 = load i32, i32* %45, align 4
  %276 = call i32 @PCKEV_XORI128_UB(i32 %274, i32 %275)
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32 %276, i32* %277, align 4
  %278 = bitcast %struct.TYPE_20__* %19 to i8*
  %279 = bitcast %struct.TYPE_20__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %278, i8* align 4 %279, i64 4, i1 false)
  %280 = load i32, i32* %46, align 4
  %281 = load i32, i32* %47, align 4
  %282 = call i32 @PCKEV_XORI128_UB(i32 %280, i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  store i32 %282, i32* %283, align 4
  %284 = bitcast %struct.TYPE_20__* %20 to i8*
  %285 = bitcast %struct.TYPE_20__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %284, i8* align 4 %285, i64 4, i1 false)
  %286 = load i32, i32* %48, align 4
  %287 = load i32, i32* %49, align 4
  %288 = call i32 @PCKEV_XORI128_UB(i32 %286, i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  store i32 %288, i32* %289, align 4
  %290 = bitcast %struct.TYPE_20__* %21 to i8*
  %291 = bitcast %struct.TYPE_20__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %290, i8* align 4 %291, i64 4, i1 false)
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @AVER_UB4_UB(i32 %293, i32 %295, i32 %297, i32 %299, i32 %301, i32 %303, i32 %305, i32 %307, i32 %309, i32 %311, i32 %313, i32 %315)
  %317 = load i32*, i32** %4, align 8
  %318 = load i32, i32* %6, align 4
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @ST_D8(i32 %320, i32 %322, i32 %324, i32 %326, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %317, i32 %318)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #2

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #2

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #2

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
