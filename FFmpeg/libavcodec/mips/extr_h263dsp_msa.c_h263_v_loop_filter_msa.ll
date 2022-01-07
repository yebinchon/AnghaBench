; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h263dsp_msa.c_h263_v_loop_filter_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h263dsp_msa.c_h263_v_loop_filter_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h263_loop_filter_strength_msa = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @h263_v_loop_filter_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263_v_loop_filter_msa(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %27 = load i64*, i64** @h263_loop_filter_strength_msa, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 2, %31
  %33 = load i32*, i32** %4, align 8
  %34 = sub i64 0, %32
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @LD_UB4(i32* %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @__msa_ilvr_b(i64 %43, i64 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 @__msa_hsub_u_h(i64 %48, i64 %50)
  store i32 %51, i32* %24, align 4
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call i64 @__msa_ilvr_b(i64 %52, i64 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @__msa_hsub_u_h(i64 %57, i64 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = shl i32 %61, 2
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = sub nsw i32 0, %66
  %68 = ashr i32 %67, 3
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %19, align 4
  %70 = load i64, i64* %7, align 8
  %71 = shl i64 %70, 1
  %72 = sub i64 0, %71
  %73 = call i32 @__msa_fill_h(i64 %72)
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp sle i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = call i64 @__msa_bmz_v(i64 %79, i64 %81, i64 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %17, align 4
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 0, %89
  %91 = call i32 @__msa_fill_h(i64 %90)
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %26, align 4
  %94 = icmp slt i32 %92, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = call i64 @__msa_bmnz_v(i64 %97, i64 %99, i64 %101)
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %18, align 4
  %105 = ashr i32 %104, 3
  store i32 %105, i32* %20, align 4
  %106 = load i64, i64* %7, align 8
  %107 = shl i64 %106, 1
  %108 = call i32 @__msa_fill_h(i64 %107)
  store i32 %108, i32* %25, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %25, align 4
  %111 = icmp sle i32 %109, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = call i64 @__msa_bmz_v(i64 %114, i64 %116, i64 %118)
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* %20, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @__msa_fill_h(i64 %124)
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp slt i32 %126, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = call i64 @__msa_bmnz_v(i64 %131, i64 %133, i64 %135)
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @__msa_clti_s_h(i32 %138, i32 0)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = call i64 @__msa_bmnz_v(i64 %141, i64 %143, i64 %145)
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %19, align 4
  %149 = sub nsw i32 0, %148
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %20, align 4
  %152 = ashr i32 %151, 1
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = call i64 @__msa_bmnz_v(i64 %154, i64 %156, i64 %158)
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %22, align 4
  %161 = load i32, i32* %24, align 4
  %162 = sub nsw i32 0, %161
  %163 = ashr i32 %162, 2
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %22, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %168, %169
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = call i64 @__msa_bmnz_v(i64 %173, i64 %175, i64 %177)
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %24, align 4
  %181 = ashr i32 %180, 2
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %22, align 4
  %184 = icmp sle i32 %182, %183
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = call i64 @__msa_bmz_v(i64 %187, i64 %189, i64 %191)
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %24, align 4
  %195 = call i32 @__msa_clti_s_h(i32 %194, i32 0)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = call i64 @__msa_bmz_v(i64 %197, i64 %199, i64 %201)
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %21, align 4
  %204 = load i32, i32* %24, align 4
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %23, align 4
  %210 = call i32 @PCKEV_B2_SH(i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load i64, i64* %12, align 8
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = sub nsw i64 %211, %213
  store i64 %214, i64* %12, align 8
  %215 = load i64, i64* %13, align 8
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %215, %217
  store i64 %218, i64* %13, align 8
  %219 = load i64, i64* %15, align 8
  %220 = call i64 @__msa_xori_b(i64 %219, i32 128)
  store i64 %220, i64* %15, align 8
  %221 = load i64, i64* %15, align 8
  %222 = load i32, i32* %23, align 4
  %223 = sext i32 %222 to i64
  %224 = call i64 @__msa_adds_s_b(i64 %221, i64 %223)
  store i64 %224, i64* %15, align 8
  %225 = load i64, i64* %15, align 8
  %226 = call i64 @__msa_xori_b(i64 %225, i32 128)
  store i64 %226, i64* %15, align 8
  %227 = load i64, i64* %14, align 8
  %228 = load i32, i32* %23, align 4
  %229 = sext i32 %228 to i64
  %230 = call i64 @__msa_subsus_u_b(i64 %227, i64 %229)
  store i64 %230, i64* %14, align 8
  %231 = load i64, i64* %12, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i32 @__msa_copy_u_d(i32 %232, i32 0)
  store i32 %233, i32* %8, align 4
  %234 = load i64, i64* %15, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @__msa_copy_u_d(i32 %235, i32 0)
  store i32 %236, i32* %9, align 4
  %237 = load i64, i64* %14, align 8
  %238 = trunc i64 %237 to i32
  %239 = call i32 @__msa_copy_u_d(i32 %238, i32 0)
  store i32 %239, i32* %10, align 4
  %240 = load i64, i64* %13, align 8
  %241 = trunc i64 %240 to i32
  %242 = call i32 @__msa_copy_u_d(i32 %241, i32 0)
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32*, i32** %4, align 8
  %248 = load i64, i64* %5, align 8
  %249 = call i32 @SD4(i32 %243, i32 %244, i32 %245, i32 %246, i32* %247, i64 %248)
  ret void
}

declare dso_local i32 @LD_UB4(i32*, i64, i64, i64, i64, i64) #1

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

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
