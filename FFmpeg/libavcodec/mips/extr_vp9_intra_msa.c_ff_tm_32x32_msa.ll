; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_tm_32x32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_tm_32x32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_tm_32x32_msa(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @LD_SB(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 16
  %30 = call i32 @LD_SB(i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @__msa_fill_h(i32 %31)
  store i64 %32, i64* %18, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 28
  store i32* %34, i32** %7, align 8
  store i32 8, i32* %10, align 4
  br label %35

35:                                               ; preds = %39, %4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %259

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @LW(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 24
  %44 = call i32 @__msa_fill_b(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 16
  %47 = call i32 @__msa_fill_b(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 8
  %50 = call i32 @__msa_fill_b(i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @__msa_fill_b(i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -4
  store i32* %54, i32** %7, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %20, align 8
  %61 = call i32 @ILVR_B2_UH(i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %22, align 8
  %68 = call i32 @ILVL_B2_UH(i32 %62, i32 %63, i32 %64, i32 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* %20, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %22, align 8
  %77 = call i32 @HADD_UB4_UH(i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %21, align 8
  %82 = call i32 @IPRED_SUBS_UH2_UH(i64 %78, i64 %79, i64 %80, i64 %81)
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %22, align 8
  %87 = call i32 @IPRED_SUBS_UH2_UH(i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %22, align 8
  %92 = call i32 @SAT_UH4_UH(i64 %88, i64 %89, i64 %90, i64 %91, i32 7)
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @PCKEV_ST_SB(i64 %93, i64 %94, i32* %95)
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %22, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  %101 = call i32 @PCKEV_ST_SB(i64 %97, i64 %98, i32* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %5, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @ILVR_B2_UH(i32 %106, i32 %107, i32 %108, i32 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %22, align 8
  %119 = call i32 @ILVL_B2_UH(i32 %113, i32 %114, i32 %115, i32 %116, i64 %117, i64 %118)
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %22, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %22, align 8
  %128 = call i32 @HADD_UB4_UH(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* %21, align 8
  %133 = call i32 @IPRED_SUBS_UH2_UH(i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %18, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call i32 @IPRED_SUBS_UH2_UH(i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %22, align 8
  %143 = call i32 @SAT_UH4_UH(i64 %139, i64 %140, i64 %141, i64 %142, i32 7)
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @PCKEV_ST_SB(i64 %144, i64 %145, i32* %146)
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %22, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 16
  %152 = call i32 @PCKEV_ST_SB(i64 %148, i64 %149, i32* %151)
  %153 = load i32, i32* %6, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %5, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i64, i64* %19, align 8
  %162 = load i64, i64* %20, align 8
  %163 = call i32 @ILVR_B2_UH(i32 %157, i32 %158, i32 %159, i32 %160, i64 %161, i64 %162)
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i64, i64* %21, align 8
  %169 = load i64, i64* %22, align 8
  %170 = call i32 @ILVL_B2_UH(i32 %164, i32 %165, i32 %166, i32 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %19, align 8
  %176 = load i64, i64* %21, align 8
  %177 = load i64, i64* %20, align 8
  %178 = load i64, i64* %22, align 8
  %179 = call i32 @HADD_UB4_UH(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %18, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %21, align 8
  %184 = call i32 @IPRED_SUBS_UH2_UH(i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* %18, align 8
  %187 = load i64, i64* %20, align 8
  %188 = load i64, i64* %22, align 8
  %189 = call i32 @IPRED_SUBS_UH2_UH(i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %21, align 8
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %22, align 8
  %194 = call i32 @SAT_UH4_UH(i64 %190, i64 %191, i64 %192, i64 %193, i32 7)
  %195 = load i64, i64* %19, align 8
  %196 = load i64, i64* %21, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @PCKEV_ST_SB(i64 %195, i64 %196, i32* %197)
  %199 = load i64, i64* %20, align 8
  %200 = load i64, i64* %22, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 16
  %203 = call i32 @PCKEV_ST_SB(i64 %199, i64 %200, i32* %202)
  %204 = load i32, i32* %6, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %5, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load i64, i64* %19, align 8
  %213 = load i64, i64* %20, align 8
  %214 = call i32 @ILVR_B2_UH(i32 %208, i32 %209, i32 %210, i32 %211, i64 %212, i64 %213)
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i64, i64* %21, align 8
  %220 = load i64, i64* %22, align 8
  %221 = call i32 @ILVL_B2_UH(i32 %215, i32 %216, i32 %217, i32 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %19, align 8
  %223 = load i64, i64* %21, align 8
  %224 = load i64, i64* %20, align 8
  %225 = load i64, i64* %22, align 8
  %226 = load i64, i64* %19, align 8
  %227 = load i64, i64* %21, align 8
  %228 = load i64, i64* %20, align 8
  %229 = load i64, i64* %22, align 8
  %230 = call i32 @HADD_UB4_UH(i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229)
  %231 = load i64, i64* %18, align 8
  %232 = load i64, i64* %18, align 8
  %233 = load i64, i64* %19, align 8
  %234 = load i64, i64* %21, align 8
  %235 = call i32 @IPRED_SUBS_UH2_UH(i64 %231, i64 %232, i64 %233, i64 %234)
  %236 = load i64, i64* %18, align 8
  %237 = load i64, i64* %18, align 8
  %238 = load i64, i64* %20, align 8
  %239 = load i64, i64* %22, align 8
  %240 = call i32 @IPRED_SUBS_UH2_UH(i64 %236, i64 %237, i64 %238, i64 %239)
  %241 = load i64, i64* %19, align 8
  %242 = load i64, i64* %21, align 8
  %243 = load i64, i64* %20, align 8
  %244 = load i64, i64* %22, align 8
  %245 = call i32 @SAT_UH4_UH(i64 %241, i64 %242, i64 %243, i64 %244, i32 7)
  %246 = load i64, i64* %19, align 8
  %247 = load i64, i64* %21, align 8
  %248 = load i32*, i32** %5, align 8
  %249 = call i32 @PCKEV_ST_SB(i64 %246, i64 %247, i32* %248)
  %250 = load i64, i64* %20, align 8
  %251 = load i64, i64* %22, align 8
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 16
  %254 = call i32 @PCKEV_ST_SB(i64 %250, i64 %251, i32* %253)
  %255 = load i32, i32* %6, align 4
  %256 = load i32*, i32** %5, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %5, align 8
  br label %35

259:                                              ; preds = %35
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LW(i32*) #1

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @ILVR_B2_UH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ILVL_B2_UH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @HADD_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @IPRED_SUBS_UH2_UH(i64, i64, i64, i64) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_ST_SB(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
