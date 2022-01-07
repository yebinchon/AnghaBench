; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_biwgt_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_biwgt_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @avc_biwgt_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_biwgt_8x8_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  %50 = or i32 %49, 1
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %53, %54
  %56 = mul nsw i32 128, %55
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @__msa_fill_b(i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @__msa_fill_b(i32 %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @__msa_fill_h(i32 %63)
  store i32 %64, i32* %47, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @__msa_fill_h(i32 %66)
  store i32 %67, i32* %46, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @__msa_ilvev_b(i32 %68, i32 %69)
  store i32 %70, i32* %21, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @LD4(i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %30, align 4
  %81 = call i32 @INSERT_D2_UB(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %31, align 4
  %85 = call i32 @INSERT_D2_UB(i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 4, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @LD4(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %32, align 4
  %100 = call i32 @INSERT_D2_UB(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %33, align 4
  %104 = call i32 @INSERT_D2_UB(i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @LD4(i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %34, align 4
  %115 = call i32 @INSERT_D2_UB(i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %35, align 4
  %119 = call i32 @INSERT_D2_UB(i32 %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 4, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @LD4(i32* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %36, align 4
  %134 = call i32 @INSERT_D2_UB(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %37, align 4
  %138 = call i32 @INSERT_D2_UB(i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %31, align 4
  %141 = load i32, i32* %32, align 4
  %142 = load i32, i32* %33, align 4
  %143 = load i32, i32* %34, align 4
  %144 = load i32, i32* %35, align 4
  %145 = load i32, i32* %36, align 4
  %146 = load i32, i32* %37, align 4
  %147 = call i32 @XORI_B8_128_UB(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %34, align 4
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %23, align 4
  %152 = call i32 @ILVRL_B2_SB(i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %31, align 4
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* %25, align 4
  %157 = call i32 @ILVRL_B2_SB(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %36, align 4
  %159 = load i32, i32* %32, align 4
  %160 = load i32, i32* %26, align 4
  %161 = load i32, i32* %27, align 4
  %162 = call i32 @ILVRL_B2_SB(i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %37, align 4
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %28, align 4
  %166 = load i32, i32* %29, align 4
  %167 = call i32 @ILVRL_B2_SB(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %47, align 4
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %22, align 4
  %171 = call i32 @__msa_dpadd_s_h(i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %38, align 4
  %172 = load i32, i32* %47, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %23, align 4
  %175 = call i32 @__msa_dpadd_s_h(i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %39, align 4
  %176 = load i32, i32* %47, align 4
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %24, align 4
  %179 = call i32 @__msa_dpadd_s_h(i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %40, align 4
  %180 = load i32, i32* %47, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %25, align 4
  %183 = call i32 @__msa_dpadd_s_h(i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %41, align 4
  %184 = load i32, i32* %47, align 4
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %26, align 4
  %187 = call i32 @__msa_dpadd_s_h(i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %42, align 4
  %188 = load i32, i32* %47, align 4
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %27, align 4
  %191 = call i32 @__msa_dpadd_s_h(i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %43, align 4
  %192 = load i32, i32* %47, align 4
  %193 = load i32, i32* %21, align 4
  %194 = load i32, i32* %28, align 4
  %195 = call i32 @__msa_dpadd_s_h(i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %44, align 4
  %196 = load i32, i32* %47, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %29, align 4
  %199 = call i32 @__msa_dpadd_s_h(i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %45, align 4
  %200 = load i32, i32* %38, align 4
  %201 = load i32, i32* %39, align 4
  %202 = load i32, i32* %40, align 4
  %203 = load i32, i32* %41, align 4
  %204 = load i32, i32* %46, align 4
  %205 = call i32 @SRA_4V(i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %42, align 4
  %207 = load i32, i32* %43, align 4
  %208 = load i32, i32* %44, align 4
  %209 = load i32, i32* %45, align 4
  %210 = load i32, i32* %46, align 4
  %211 = call i32 @SRA_4V(i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %38, align 4
  %213 = load i32, i32* %39, align 4
  %214 = load i32, i32* %40, align 4
  %215 = load i32, i32* %41, align 4
  %216 = load i32, i32* %42, align 4
  %217 = load i32, i32* %43, align 4
  %218 = load i32, i32* %44, align 4
  %219 = load i32, i32* %45, align 4
  %220 = call i32 @CLIP_SH8_0_255(i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %39, align 4
  %222 = load i32, i32* %38, align 4
  %223 = load i32, i32* %41, align 4
  %224 = load i32, i32* %40, align 4
  %225 = load i32, i32* %34, align 4
  %226 = load i32, i32* %35, align 4
  %227 = call i32 @PCKEV_B2_UB(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %43, align 4
  %229 = load i32, i32* %42, align 4
  %230 = load i32, i32* %45, align 4
  %231 = load i32, i32* %44, align 4
  %232 = load i32, i32* %36, align 4
  %233 = load i32, i32* %37, align 4
  %234 = call i32 @PCKEV_B2_UB(i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %34, align 4
  %236 = load i32, i32* %35, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %37, align 4
  %239 = load i32*, i32** %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @ST_D8(i32 %235, i32 %236, i32 %237, i32 %238, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %239, i32 %240)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_UB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_B2_SB(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_h(i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH8_0_255(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
