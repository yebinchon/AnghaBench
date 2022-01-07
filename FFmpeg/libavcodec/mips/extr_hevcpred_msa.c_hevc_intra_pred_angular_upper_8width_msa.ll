; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_angular_upper_8width_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_angular_upper_8width_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.hevc_intra_pred_angular_upper_8width_msa.inv_angle = private unnamed_addr constant [8 x i32] [i32 -256, i32 -315, i32 -390, i32 -482, i32 -630, i32 -910, i32 -1638, i32 -4096], align 16
@intra_pred_angle_up = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @hevc_intra_pred_angular_upper_8width_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_intra_pred_angular_upper_8width_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca [100 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %57 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 bitcast ([8 x i32]* @__const.hevc_intra_pred_angular_upper_8width_msa.inv_angle to i8*), i64 32, i1 false)
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %12, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -1
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** @intra_pred_angle_up, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 18
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %28, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 18
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %30, align 4
  %73 = load i32, i32* %28, align 4
  %74 = ashr i32 %73, 2
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %28, align 4
  store i32 %75, i32* %29, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 -1
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, -1
  br i1 %79, label %80, label %128

80:                                               ; preds = %5
  %81 = load i32, i32* %30, align 4
  %82 = load i32, i32* %16, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %31, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @LW(i32* %84)
  store i32 %85, i32* %32, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = call i32 @LW(i32* %87)
  store i32 %88, i32* %33, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  %91 = call i32 @LW(i32* %90)
  store i32 %91, i32* %34, align 4
  %92 = load i32, i32* %32, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @SW(i32 %92, i32* %93)
  %95 = load i32, i32* %33, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = call i32 @SW(i32 %95, i32* %97)
  %99 = load i32, i32* %34, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = call i32 @SW(i32 %99, i32* %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %123, %80
  %105 = load i32, i32* %18, align 4
  %106 = icmp sle i32 %105, -1
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i32, i32* %31, align 4
  %109 = add nsw i32 %108, 128
  %110 = ashr i32 %109, 8
  store i32 %110, i32* %17, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %30, align 4
  %121 = load i32, i32* %31, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %31, align 4
  br label %123

123:                                              ; preds = %107
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %18, align 4
  br label %104

126:                                              ; preds = %104
  %127 = load i32*, i32** %13, align 8
  store i32* %127, i32** %14, align 8
  br label %128

128:                                              ; preds = %126, %5
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %289, %128
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %292

132:                                              ; preds = %129
  %133 = load i32, i32* %29, align 4
  %134 = ashr i32 %133, 5
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %29, align 4
  %136 = and i32 %135, 31
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %28, align 4
  %138 = load i32, i32* %29, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %29, align 4
  %140 = load i32, i32* %29, align 4
  %141 = ashr i32 %140, 5
  store i32 %141, i32* %22, align 4
  %142 = load i32, i32* %29, align 4
  %143 = and i32 %142, 31
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %29, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %29, align 4
  %147 = load i32, i32* %29, align 4
  %148 = ashr i32 %147, 5
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %29, align 4
  %150 = and i32 %149, 31
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* %28, align 4
  %152 = load i32, i32* %29, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %29, align 4
  %154 = load i32, i32* %29, align 4
  %155 = ashr i32 %154, 5
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %29, align 4
  %157 = and i32 %156, 31
  store i32 %157, i32* %27, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %29, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %29, align 4
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = call i32 @LD_SB(i32* %165)
  store i32 %166, i32* %35, align 4
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = call i32 @LD_SB(i32* %171)
  store i32 %172, i32* %36, align 4
  %173 = load i32*, i32** %14, align 8
  %174 = load i32, i32* %24, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = call i32 @LD_SB(i32* %177)
  store i32 %178, i32* %37, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %26, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = call i32 @LD_SB(i32* %183)
  store i32 %184, i32* %38, align 4
  %185 = load i32, i32* %21, align 4
  %186 = call i32 @__msa_fill_h(i32 %185)
  store i32 %186, i32* %41, align 4
  %187 = load i32, i32* %21, align 4
  %188 = sub nsw i32 32, %187
  %189 = call i32 @__msa_fill_h(i32 %188)
  store i32 %189, i32* %42, align 4
  %190 = load i32, i32* %23, align 4
  %191 = call i32 @__msa_fill_h(i32 %190)
  store i32 %191, i32* %43, align 4
  %192 = load i32, i32* %23, align 4
  %193 = sub nsw i32 32, %192
  %194 = call i32 @__msa_fill_h(i32 %193)
  store i32 %194, i32* %44, align 4
  %195 = load i32, i32* %25, align 4
  %196 = call i32 @__msa_fill_h(i32 %195)
  store i32 %196, i32* %45, align 4
  %197 = load i32, i32* %25, align 4
  %198 = sub nsw i32 32, %197
  %199 = call i32 @__msa_fill_h(i32 %198)
  store i32 %199, i32* %46, align 4
  %200 = load i32, i32* %27, align 4
  %201 = call i32 @__msa_fill_h(i32 %200)
  store i32 %201, i32* %47, align 4
  %202 = load i32, i32* %27, align 4
  %203 = sub nsw i32 32, %202
  %204 = call i32 @__msa_fill_h(i32 %203)
  store i32 %204, i32* %48, align 4
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* %49, align 4
  %207 = load i32, i32* %50, align 4
  %208 = call i32 @UNPCK_UB_SH(i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* %36, align 4
  %210 = load i32, i32* %51, align 4
  %211 = load i32, i32* %52, align 4
  %212 = call i32 @UNPCK_UB_SH(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %37, align 4
  %214 = load i32, i32* %53, align 4
  %215 = load i32, i32* %54, align 4
  %216 = call i32 @UNPCK_UB_SH(i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %38, align 4
  %218 = load i32, i32* %55, align 4
  %219 = load i32, i32* %56, align 4
  %220 = call i32 @UNPCK_UB_SH(i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %50, align 4
  %222 = load i32, i32* %49, align 4
  %223 = load i32, i32* %52, align 4
  %224 = load i32, i32* %51, align 4
  %225 = load i32, i32* %54, align 4
  %226 = load i32, i32* %53, align 4
  %227 = load i32, i32* %56, align 4
  %228 = load i32, i32* %55, align 4
  %229 = load i32, i32* %50, align 4
  %230 = load i32, i32* %52, align 4
  %231 = load i32, i32* %54, align 4
  %232 = load i32, i32* %56, align 4
  %233 = call i32 @SLDI_B4_SH(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 2, i32 %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %50, align 4
  %235 = load i32, i32* %41, align 4
  %236 = load i32, i32* %52, align 4
  %237 = load i32, i32* %43, align 4
  %238 = load i32, i32* %54, align 4
  %239 = load i32, i32* %45, align 4
  %240 = load i32, i32* %56, align 4
  %241 = load i32, i32* %47, align 4
  %242 = load i32, i32* %50, align 4
  %243 = load i32, i32* %52, align 4
  %244 = load i32, i32* %54, align 4
  %245 = load i32, i32* %56, align 4
  %246 = call i32 @MUL4(i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %49, align 4
  %248 = load i32, i32* %42, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load i32, i32* %50, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %50, align 4
  %252 = load i32, i32* %51, align 4
  %253 = load i32, i32* %44, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load i32, i32* %52, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %52, align 4
  %257 = load i32, i32* %53, align 4
  %258 = load i32, i32* %46, align 4
  %259 = mul nsw i32 %257, %258
  %260 = load i32, i32* %54, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %54, align 4
  %262 = load i32, i32* %55, align 4
  %263 = load i32, i32* %48, align 4
  %264 = mul nsw i32 %262, %263
  %265 = load i32, i32* %56, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %56, align 4
  %267 = load i32, i32* %50, align 4
  %268 = load i32, i32* %52, align 4
  %269 = load i32, i32* %54, align 4
  %270 = load i32, i32* %56, align 4
  %271 = call i32 @SRARI_H4_SH(i32 %267, i32 %268, i32 %269, i32 %270, i32 5)
  %272 = load i32, i32* %52, align 4
  %273 = load i32, i32* %50, align 4
  %274 = load i32, i32* %56, align 4
  %275 = load i32, i32* %54, align 4
  %276 = load i32, i32* %39, align 4
  %277 = load i32, i32* %40, align 4
  %278 = call i32 @PCKEV_B2_UB(i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277)
  %279 = load i32, i32* %39, align 4
  %280 = load i32, i32* %40, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = load i32, i32* %9, align 4
  %283 = call i32 @ST_D4(i32 %279, i32 %280, i32 0, i32 1, i32 0, i32 1, i32* %281, i32 %282)
  %284 = load i32, i32* %9, align 4
  %285 = mul nsw i32 4, %284
  %286 = load i32*, i32** %8, align 8
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  store i32* %288, i32** %8, align 8
  br label %289

289:                                              ; preds = %132
  %290 = load i32, i32* %19, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %19, align 4
  br label %129

292:                                              ; preds = %129
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LW(i32*) #2

declare dso_local i32 @SW(i32, i32*) #2

declare dso_local i32 @LD_SB(i32*) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @UNPCK_UB_SH(i32, i32, i32) #2

declare dso_local i32 @SLDI_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @MUL4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
