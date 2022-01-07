; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct8x8_12_colcol_addblk_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct8x8_12_colcol_addblk_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_120__ = type { i32 }

@cospi_28_64 = common dso_local global i32 0, align 4
@cospi_4_64 = common dso_local global i32 0, align 4
@cospi_20_64 = common dso_local global i32 0, align 4
@cospi_12_64 = common dso_local global i32 0, align 4
@VP9_DCT_CONST_BITS = common dso_local global i32 0, align 4
@cospi_16_64 = common dso_local global i32 0, align 4
@cospi_24_64 = common dso_local global i32 0, align 4
@cospi_8_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @vp9_idct8x8_12_colcol_addblk_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_idct8x8_12_colcol_addblk_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_120__, align 4
  %8 = alloca %struct.TYPE_120__, align 4
  %9 = alloca %struct.TYPE_120__, align 4
  %10 = alloca %struct.TYPE_120__, align 4
  %11 = alloca %struct.TYPE_120__, align 4
  %12 = alloca %struct.TYPE_120__, align 4
  %13 = alloca %struct.TYPE_120__, align 4
  %14 = alloca %struct.TYPE_120__, align 4
  %15 = alloca %struct.TYPE_120__, align 4
  %16 = alloca %struct.TYPE_120__, align 4
  %17 = alloca %struct.TYPE_120__, align 4
  %18 = alloca %struct.TYPE_120__, align 4
  %19 = alloca %struct.TYPE_120__, align 4
  %20 = alloca %struct.TYPE_120__, align 4
  %21 = alloca %struct.TYPE_120__, align 4
  %22 = alloca %struct.TYPE_120__, align 4
  %23 = alloca %struct.TYPE_120__, align 4
  %24 = alloca %struct.TYPE_120__, align 4
  %25 = alloca %struct.TYPE_120__, align 4
  %26 = alloca %struct.TYPE_120__, align 4
  %27 = alloca %struct.TYPE_120__, align 4
  %28 = alloca %struct.TYPE_120__, align 4
  %29 = alloca %struct.TYPE_120__, align 4
  %30 = alloca %struct.TYPE_120__, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_120__, align 4
  %36 = alloca %struct.TYPE_120__, align 4
  %37 = alloca %struct.TYPE_120__, align 4
  %38 = alloca %struct.TYPE_120__, align 4
  %39 = alloca %struct.TYPE_120__, align 4
  %40 = alloca %struct.TYPE_120__, align 4
  %41 = alloca %struct.TYPE_120__, align 4
  %42 = alloca %struct.TYPE_120__, align 4
  %43 = alloca %struct.TYPE_120__, align 4
  %44 = alloca %struct.TYPE_120__, align 4
  %45 = alloca %struct.TYPE_120__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %46 = bitcast %struct.TYPE_120__* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 4, i1 false)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LD_SH8(i32* %47, i32 8, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ST_SH8(i32 %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 %81, i32* %65, i32 8)
  %83 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ILVR_D2_SH(i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ILVR_D2_SH(i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ILVL_H2_SH(i32 %110, i32 %112, i32 %114, i32 %116, i32 %118, i32 %120)
  %122 = load i32, i32* @cospi_28_64, align 4
  %123 = load i32, i32* @cospi_4_64, align 4
  %124 = sub nsw i32 0, %123
  %125 = call i32 @VP9_SET_COSPI_PAIR(i32 %122, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %36, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = bitcast %struct.TYPE_120__* %23 to i8*
  %128 = bitcast %struct.TYPE_120__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 4, i1 false)
  %129 = load i32, i32* @cospi_4_64, align 4
  %130 = load i32, i32* @cospi_28_64, align 4
  %131 = call i32 @VP9_SET_COSPI_PAIR(i32 %129, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %37, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = bitcast %struct.TYPE_120__* %24 to i8*
  %134 = bitcast %struct.TYPE_120__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 4, i1 false)
  %135 = load i32, i32* @cospi_20_64, align 4
  %136 = sub nsw i32 0, %135
  %137 = load i32, i32* @cospi_12_64, align 4
  %138 = call i32 @VP9_SET_COSPI_PAIR(i32 %136, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %38, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = bitcast %struct.TYPE_120__* %25 to i8*
  %141 = bitcast %struct.TYPE_120__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 4, i1 false)
  %142 = load i32, i32* @cospi_12_64, align 4
  %143 = load i32, i32* @cospi_20_64, align 4
  %144 = call i32 @VP9_SET_COSPI_PAIR(i32 %142, i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %39, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = bitcast %struct.TYPE_120__* %26 to i8*
  %147 = bitcast %struct.TYPE_120__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 4, i1 false)
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %32, align 4
  %150 = load i32, i32* %33, align 4
  %151 = load i32, i32* %34, align 4
  %152 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %23, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %24, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %25, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %26, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @DOTP_SH4_SW(i32 %153, i32 %155, i32 %157, i32 %159, i32 %161, i32 %163, i32 %165, i32 %167, i32 %148, i32 %149, i32 %150, i32 %151)
  %169 = load i32, i32* %31, align 4
  %170 = load i32, i32* %32, align 4
  %171 = load i32, i32* %33, align 4
  %172 = load i32, i32* %34, align 4
  %173 = load i32, i32* @VP9_DCT_CONST_BITS, align 4
  %174 = call i32 @SRARI_W4_SW(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* %31, align 4
  %176 = load i32, i32* %32, align 4
  %177 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @PCKEV_H2_SH(i32 %178, i32 %175, i32 %180, i32 %176, i32 %182, i32 %184)
  %186 = load i32, i32* %33, align 4
  %187 = load i32, i32* %34, align 4
  %188 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %17, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %18, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @PCKEV_H2_SH(i32 %189, i32 %186, i32 %191, i32 %187, i32 %193, i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %18, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %17, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %19, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %22, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %21, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %20, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @BUTTERFLY_4(i32 %198, i32 %200, i32 %202, i32 %204, i32 %206, i32 %208, i32 %210, i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ILVR_H2_SH(i32 %215, i32 %217, i32 %219, i32 %221, i32 %223, i32 %225)
  %227 = load i32, i32* @cospi_16_64, align 4
  %228 = load i32, i32* @cospi_16_64, align 4
  %229 = call i32 @VP9_SET_COSPI_PAIR(i32 %227, i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %40, i32 0, i32 0
  store i32 %229, i32* %230, align 4
  %231 = bitcast %struct.TYPE_120__* %23 to i8*
  %232 = bitcast %struct.TYPE_120__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %231, i8* align 4 %232, i64 4, i1 false)
  %233 = load i32, i32* @cospi_16_64, align 4
  %234 = load i32, i32* @cospi_16_64, align 4
  %235 = sub nsw i32 0, %234
  %236 = call i32 @VP9_SET_COSPI_PAIR(i32 %233, i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %41, i32 0, i32 0
  store i32 %236, i32* %237, align 4
  %238 = bitcast %struct.TYPE_120__* %24 to i8*
  %239 = bitcast %struct.TYPE_120__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %238, i8* align 4 %239, i64 4, i1 false)
  %240 = load i32, i32* @cospi_24_64, align 4
  %241 = load i32, i32* @cospi_8_64, align 4
  %242 = sub nsw i32 0, %241
  %243 = call i32 @VP9_SET_COSPI_PAIR(i32 %240, i32 %242)
  %244 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %42, i32 0, i32 0
  store i32 %243, i32* %244, align 4
  %245 = bitcast %struct.TYPE_120__* %25 to i8*
  %246 = bitcast %struct.TYPE_120__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %245, i8* align 4 %246, i64 4, i1 false)
  %247 = load i32, i32* @cospi_8_64, align 4
  %248 = load i32, i32* @cospi_24_64, align 4
  %249 = call i32 @VP9_SET_COSPI_PAIR(i32 %247, i32 %248)
  %250 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %43, i32 0, i32 0
  store i32 %249, i32* %250, align 4
  %251 = bitcast %struct.TYPE_120__* %26 to i8*
  %252 = bitcast %struct.TYPE_120__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %251, i8* align 4 %252, i64 4, i1 false)
  %253 = load i32, i32* %31, align 4
  %254 = load i32, i32* %32, align 4
  %255 = load i32, i32* %33, align 4
  %256 = load i32, i32* %34, align 4
  %257 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %23, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %24, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %25, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %26, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @DOTP_SH4_SW(i32 %258, i32 %260, i32 %262, i32 %264, i32 %266, i32 %268, i32 %270, i32 %272, i32 %253, i32 %254, i32 %255, i32 %256)
  %274 = load i32, i32* %31, align 4
  %275 = load i32, i32* %32, align 4
  %276 = load i32, i32* %33, align 4
  %277 = load i32, i32* %34, align 4
  %278 = load i32, i32* @VP9_DCT_CONST_BITS, align 4
  %279 = call i32 @SRARI_W4_SW(i32 %274, i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %31, align 4
  %281 = load i32, i32* %32, align 4
  %282 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @PCKEV_H2_SH(i32 %283, i32 %280, i32 %285, i32 %281, i32 %287, i32 %289)
  %291 = load i32, i32* %33, align 4
  %292 = load i32, i32* %34, align 4
  %293 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %17, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %18, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @PCKEV_H2_SH(i32 %294, i32 %291, i32 %296, i32 %292, i32 %298, i32 %300)
  %302 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %16, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %17, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %18, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %27, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %28, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %29, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %30, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @BUTTERFLY_4(i32 %303, i32 %305, i32 %307, i32 %309, i32 %311, i32 %313, i32 %315, i32 %317)
  %319 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %21, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %20, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @__msa_ilvr_h(i32 %320, i32 %322)
  %324 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %44, i32 0, i32 0
  store i32 %323, i32* %324, align 4
  %325 = bitcast %struct.TYPE_120__* %15 to i8*
  %326 = bitcast %struct.TYPE_120__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %325, i8* align 4 %326, i64 4, i1 false)
  %327 = load i32, i32* @cospi_16_64, align 4
  %328 = sub nsw i32 0, %327
  %329 = load i32, i32* @cospi_16_64, align 4
  %330 = call i32 @VP9_SET_COSPI_PAIR(i32 %328, i32 %329)
  %331 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %45, i32 0, i32 0
  store i32 %330, i32* %331, align 4
  %332 = bitcast %struct.TYPE_120__* %24 to i8*
  %333 = bitcast %struct.TYPE_120__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %332, i8* align 4 %333, i64 4, i1 false)
  %334 = load i32, i32* %31, align 4
  %335 = load i32, i32* %32, align 4
  %336 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %15, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %24, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %23, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @DOTP_SH2_SW(i32 %337, i32 %339, i32 %341, i32 %343, i32 %334, i32 %335)
  %345 = load i32, i32* %31, align 4
  %346 = load i32, i32* %32, align 4
  %347 = load i32, i32* @VP9_DCT_CONST_BITS, align 4
  %348 = call i32 @SRARI_W2_SW(i32 %345, i32 %346, i32 %347)
  %349 = load i32, i32* %31, align 4
  %350 = load i32, i32* %32, align 4
  %351 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %35, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %17, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %18, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @PCKEV_H2_SH(i32 %352, i32 %349, i32 %354, i32 %350, i32 %356, i32 %358)
  %360 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %27, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %28, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %29, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %30, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %19, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %17, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %18, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %22, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @BUTTERFLY_8(i32 %361, i32 %363, i32 %365, i32 %367, i32 %369, i32 %371, i32 %373, i32 %375, i32 %377, i32 %379, i32 %381, i32 %383, i32 %385, i32 %387, i32 %389, i32 %391)
  %393 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @TRANSPOSE4X8_SH_SH(i32 %394, i32 %396, i32 %398, i32 %400, i32 %402, i32 %404, i32 %406, i32 %408, i32 %410, i32 %412, i32 %414, i32 %416, i32 %418, i32 %420, i32 %422, i32 %424)
  %426 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @VP9_IDCT8x8_1D(i32 %427, i32 %429, i32 %431, i32 %433, i32 %435, i32 %437, i32 %439, i32 %441, i32 %443, i32 %445, i32 %447, i32 %449, i32 %451, i32 %453, i32 %455, i32 %457)
  %459 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @SRARI_H4_SH(i32 %460, i32 %462, i32 %464, i32 %466, i32 5)
  %468 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @SRARI_H4_SH(i32 %469, i32 %471, i32 %473, i32 %475, i32 5)
  %477 = load i32*, i32** %5, align 8
  %478 = load i32, i32* %6, align 4
  %479 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %7, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %8, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %9, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %10, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %477, i32 %478, i32 %480, i32 %482, i32 %484, i32 %486)
  %488 = load i32, i32* %6, align 4
  %489 = mul nsw i32 4, %488
  %490 = load i32*, i32** %5, align 8
  %491 = sext i32 %489 to i64
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  store i32* %492, i32** %5, align 8
  %493 = load i32*, i32** %5, align 8
  %494 = load i32, i32* %6, align 4
  %495 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %11, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %12, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %13, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %14, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %493, i32 %494, i32 %496, i32 %498, i32 %500, i32 %502)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_H2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @VP9_SET_COSPI_PAIR(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DOTP_SH4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_W4_SW(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @BUTTERFLY_4(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_H2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @__msa_ilvr_h(i32, i32) #2

declare dso_local i32 @DOTP_SH2_SW(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_W2_SW(i32, i32, i32) #2

declare dso_local i32 @BUTTERFLY_8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @TRANSPOSE4X8_SH_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @VP9_IDCT8x8_1D(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @VP9_ADDBLK_ST8x4_UB(i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
