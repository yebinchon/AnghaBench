; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 3, %53
  %55 = load i32*, i32** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %9, align 8
  %59 = call i32 @__msa_ldi_h(i32 128)
  store i32 %59, i32* %52, align 4
  %60 = load i32, i32* %52, align 4
  %61 = shl i32 %60, 6
  store i32 %61, i32* %52, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @LD_SH(i32* %62)
  store i32 %63, i32* %51, align 4
  %64 = load i32, i32* %51, align 4
  %65 = load i32, i32* %47, align 4
  %66 = load i32, i32* %48, align 4
  %67 = load i32, i32* %49, align 4
  %68 = load i32, i32* %50, align 4
  %69 = call i32 @SPLATI_H4_SH(i32 %64, i32 0, i32 1, i32 2, i32 3, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %24, align 4
  %79 = call i32 @LD_SB7(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 7, %80
  %82 = load i32*, i32** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %9, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %24, align 4
  %92 = call i32 @XORI_B7_128_SB(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %33, align 4
  %102 = load i32, i32* %34, align 4
  %103 = load i32, i32* %35, align 4
  %104 = load i32, i32* %38, align 4
  %105 = call i32 @ILVR_B4_SB(i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %39, align 4
  %111 = load i32, i32* %40, align 4
  %112 = call i32 @ILVR_B2_SB(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %16, align 4
  %114 = ashr i32 %113, 2
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %119, %8
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %17, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %255

119:                                              ; preds = %115
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %28, align 4
  %126 = call i32 @LD_SB4(i32* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 4, %127
  %129 = load i32*, i32** %9, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* %30, align 4
  %136 = load i32, i32* %31, align 4
  %137 = load i32, i32* %32, align 4
  %138 = call i32 @LD_SH4(i32* %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 4, %139
  %141 = load i32*, i32** %11, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %11, align 8
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load i32, i32* %28, align 4
  %148 = call i32 @XORI_B4_128_SB(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %36, align 4
  %158 = load i32, i32* %41, align 4
  %159 = load i32, i32* %37, align 4
  %160 = load i32, i32* %42, align 4
  %161 = call i32 @ILVR_B4_SB(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %52, align 4
  store i32 %162, i32* %43, align 4
  %163 = load i32, i32* %33, align 4
  %164 = load i32, i32* %34, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %36, align 4
  %167 = load i32, i32* %47, align 4
  %168 = load i32, i32* %48, align 4
  %169 = load i32, i32* %49, align 4
  %170 = load i32, i32* %50, align 4
  %171 = load i32, i32* %43, align 4
  %172 = load i32, i32* %43, align 4
  %173 = load i32, i32* %43, align 4
  %174 = load i32, i32* %43, align 4
  %175 = call i32 @DPADD_SB4_SH(i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %52, align 4
  store i32 %176, i32* %44, align 4
  %177 = load i32, i32* %38, align 4
  %178 = load i32, i32* %39, align 4
  %179 = load i32, i32* %40, align 4
  %180 = load i32, i32* %41, align 4
  %181 = load i32, i32* %47, align 4
  %182 = load i32, i32* %48, align 4
  %183 = load i32, i32* %49, align 4
  %184 = load i32, i32* %50, align 4
  %185 = load i32, i32* %44, align 4
  %186 = load i32, i32* %44, align 4
  %187 = load i32, i32* %44, align 4
  %188 = load i32, i32* %44, align 4
  %189 = call i32 @DPADD_SB4_SH(i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %52, align 4
  store i32 %190, i32* %45, align 4
  %191 = load i32, i32* %34, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32, i32* %36, align 4
  %194 = load i32, i32* %37, align 4
  %195 = load i32, i32* %47, align 4
  %196 = load i32, i32* %48, align 4
  %197 = load i32, i32* %49, align 4
  %198 = load i32, i32* %50, align 4
  %199 = load i32, i32* %45, align 4
  %200 = load i32, i32* %45, align 4
  %201 = load i32, i32* %45, align 4
  %202 = load i32, i32* %45, align 4
  %203 = call i32 @DPADD_SB4_SH(i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %52, align 4
  store i32 %204, i32* %46, align 4
  %205 = load i32, i32* %39, align 4
  %206 = load i32, i32* %40, align 4
  %207 = load i32, i32* %41, align 4
  %208 = load i32, i32* %42, align 4
  %209 = load i32, i32* %47, align 4
  %210 = load i32, i32* %48, align 4
  %211 = load i32, i32* %49, align 4
  %212 = load i32, i32* %50, align 4
  %213 = load i32, i32* %46, align 4
  %214 = load i32, i32* %46, align 4
  %215 = load i32, i32* %46, align 4
  %216 = load i32, i32* %46, align 4
  %217 = call i32 @DPADD_SB4_SH(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %29, align 4
  %219 = load i32, i32* %30, align 4
  %220 = load i32, i32* %31, align 4
  %221 = load i32, i32* %32, align 4
  %222 = load i32, i32* %43, align 4
  %223 = load i32, i32* %44, align 4
  %224 = load i32, i32* %45, align 4
  %225 = load i32, i32* %46, align 4
  %226 = load i32, i32* %43, align 4
  %227 = load i32, i32* %44, align 4
  %228 = load i32, i32* %45, align 4
  %229 = load i32, i32* %46, align 4
  %230 = call i32 @HEVC_BI_RND_CLIP4(i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 7, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %44, align 4
  %232 = load i32, i32* %43, align 4
  %233 = load i32, i32* %46, align 4
  %234 = load i32, i32* %45, align 4
  %235 = load i32, i32* %43, align 4
  %236 = load i32, i32* %44, align 4
  %237 = call i32 @PCKEV_B2_SH(i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %43, align 4
  %239 = load i32, i32* %44, align 4
  %240 = load i32*, i32** %13, align 8
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @ST_D4(i32 %238, i32 %239, i32 0, i32 1, i32 0, i32 1, i32* %240, i32 %241)
  %243 = load i32, i32* %14, align 4
  %244 = mul nsw i32 4, %243
  %245 = load i32*, i32** %13, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32* %247, i32** %13, align 8
  %248 = load i32, i32* %35, align 4
  store i32 %248, i32* %33, align 4
  %249 = load i32, i32* %36, align 4
  store i32 %249, i32* %34, align 4
  %250 = load i32, i32* %37, align 4
  store i32 %250, i32* %35, align 4
  %251 = load i32, i32* %40, align 4
  store i32 %251, i32* %38, align 4
  %252 = load i32, i32* %41, align 4
  store i32 %252, i32* %39, align 4
  %253 = load i32, i32* %42, align 4
  store i32 %253, i32* %40, align 4
  %254 = load i32, i32* %28, align 4
  store i32 %254, i32* %24, align 4
  br label %115

255:                                              ; preds = %115
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
