; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h263dsp_msa.c_h263_h_loop_filter_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h263dsp_msa.c_h263_h_loop_filter_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h263_loop_filter_strength_msa = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @h263_h_loop_filter_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263_h_loop_filter_msa(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
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
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %28 = load i64*, i64** @h263_loop_filter_strength_msa, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -2
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = call i32 @LD_UB8(i32* %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @TRANSPOSE8x4_UB_UB(i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @__msa_ilvr_b(i64 %58, i64 %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @__msa_hsub_u_h(i64 %63, i64 %65)
  store i32 %66, i32* %25, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @__msa_ilvr_b(i64 %67, i64 %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 @__msa_hsub_u_h(i64 %72, i64 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = shl i32 %76, 2
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = sub nsw i32 0, %81
  %83 = ashr i32 %82, 3
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %20, align 4
  %85 = load i64, i64* %7, align 8
  %86 = shl i64 %85, 1
  %87 = sub i64 0, %86
  %88 = call i32 @__msa_fill_h(i64 %87)
  store i32 %88, i32* %26, align 4
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp sle i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = call i64 @__msa_bmz_v(i64 %94, i64 %96, i64 %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %20, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %18, align 4
  %104 = load i64, i64* %7, align 8
  %105 = sub i64 0, %104
  %106 = call i32 @__msa_fill_h(i64 %105)
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %27, align 4
  %109 = icmp slt i32 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = call i64 @__msa_bmnz_v(i64 %112, i64 %114, i64 %116)
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %19, align 4
  %120 = ashr i32 %119, 3
  store i32 %120, i32* %21, align 4
  %121 = load i64, i64* %7, align 8
  %122 = shl i64 %121, 1
  %123 = call i32 @__msa_fill_h(i64 %122)
  store i32 %123, i32* %26, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %26, align 4
  %126 = icmp sle i32 %124, %125
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %21, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = call i64 @__msa_bmz_v(i64 %129, i64 %131, i64 %133)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %21, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %18, align 4
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @__msa_fill_h(i64 %139)
  store i32 %140, i32* %27, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %21, align 4
  %143 = icmp slt i32 %141, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %21, align 4
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = call i64 @__msa_bmnz_v(i64 %146, i64 %148, i64 %150)
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @__msa_clti_s_h(i32 %153, i32 0)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = call i64 @__msa_bmnz_v(i64 %156, i64 %158, i64 %160)
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %20, align 4
  %164 = sub nsw i32 0, %163
  %165 = ashr i32 %164, 1
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %21, align 4
  %167 = ashr i32 %166, 1
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = load i32, i32* %20, align 4
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = call i64 @__msa_bmnz_v(i64 %169, i64 %171, i64 %173)
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %25, align 4
  %177 = sub nsw i32 0, %176
  %178 = ashr i32 %177, 2
  store i32 %178, i32* %22, align 4
  %179 = load i32, i32* %22, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %22, align 4
  %181 = load i32, i32* %23, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp slt i32 %183, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = call i64 @__msa_bmnz_v(i64 %188, i64 %190, i64 %192)
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %25, align 4
  %196 = ashr i32 %195, 2
  store i32 %196, i32* %20, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %23, align 4
  %199 = icmp sle i32 %197, %198
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = load i32, i32* %23, align 4
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = call i64 @__msa_bmz_v(i64 %202, i64 %204, i64 %206)
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %20, align 4
  %209 = load i32, i32* %25, align 4
  %210 = call i32 @__msa_clti_s_h(i32 %209, i32 0)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = call i64 @__msa_bmz_v(i64 %212, i64 %214, i64 %216)
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %22, align 4
  %219 = load i32, i32* %25, align 4
  %220 = load i32, i32* %22, align 4
  %221 = load i32, i32* %25, align 4
  %222 = load i32, i32* %24, align 4
  %223 = load i32, i32* %22, align 4
  %224 = load i32, i32* %24, align 4
  %225 = call i32 @PCKEV_B2_SH(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224)
  %226 = load i64, i64* %8, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = sub nsw i64 %226, %228
  store i64 %229, i64* %8, align 8
  %230 = load i64, i64* %9, align 8
  %231 = load i32, i32* %22, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  store i64 %233, i64* %9, align 8
  %234 = load i64, i64* %11, align 8
  %235 = call i64 @__msa_xori_b(i64 %234, i32 128)
  store i64 %235, i64* %11, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load i32, i32* %24, align 4
  %238 = sext i32 %237 to i64
  %239 = call i64 @__msa_adds_s_b(i64 %236, i64 %238)
  store i64 %239, i64* %11, align 8
  %240 = load i64, i64* %11, align 8
  %241 = call i64 @__msa_xori_b(i64 %240, i32 128)
  store i64 %241, i64* %11, align 8
  %242 = load i64, i64* %10, align 8
  %243 = load i32, i32* %24, align 4
  %244 = sext i32 %243 to i64
  %245 = call i64 @__msa_subsus_u_b(i64 %242, i64 %244)
  store i64 %245, i64* %10, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %8, align 8
  %248 = load i64, i64* %9, align 8
  %249 = load i64, i64* %10, align 8
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %17, align 4
  %252 = call i32 @ILVR_B2_SH(i64 %246, i64 %247, i64 %248, i64 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %16, align 4
  %255 = call i64 @__msa_ilvr_h(i32 %253, i32 %254)
  store i64 %255, i64* %8, align 8
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %16, align 4
  %258 = call i64 @__msa_ilvl_h(i32 %256, i32 %257)
  store i64 %258, i64* %11, align 8
  %259 = load i64, i64* %8, align 8
  %260 = load i64, i64* %11, align 8
  %261 = load i32*, i32** %4, align 8
  %262 = load i64, i64* %5, align 8
  %263 = call i32 @ST_W8(i64 %259, i64 %260, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %261, i64 %262)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @TRANSPOSE8x4_UB_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_b(i64, i64) #1

declare dso_local i32 @__msa_hsub_u_h(i64, i64) #1

declare dso_local i32 @__msa_fill_h(i64) #1

declare dso_local i64 @__msa_bmz_v(i64, i64, i64) #1

declare dso_local i64 @__msa_bmnz_v(i64, i64, i64) #1

declare dso_local i32 @__msa_clti_s_h(i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_xori_b(i64, i32) #1

declare dso_local i64 @__msa_adds_s_b(i64, i64) #1

declare dso_local i64 @__msa_subsus_u_b(i64, i64) #1

declare dso_local i32 @ILVR_B2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @__msa_ilvr_h(i32, i32) #1

declare dso_local i64 @__msa_ilvl_h(i32, i32) #1

declare dso_local i32 @ST_W8(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
