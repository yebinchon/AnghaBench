; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel16_v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel16_v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel16_v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %51 = load i32**, i32*** @subpel_filters_msa, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %16, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = sext i32 %57 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @LD_SH(i32* %62)
  store i32 %63, i32* %42, align 4
  %64 = load i32, i32* %42, align 4
  %65 = load i32, i32* %36, align 4
  %66 = load i32, i32* %37, align 4
  %67 = call i32 @SPLATI_H2_SB(i32 %64, i32 0, i32 1, i32 %65, i32 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @LD_SB3(i32* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 3, %74
  %76 = load i32*, i32** %10, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %10, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @XORI_B3_128_SB(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %27, align 4
  %89 = call i32 @ILVR_B2_SB(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %30, align 4
  %95 = load i32, i32* %33, align 4
  %96 = call i32 @ILVL_B2_SB(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %97, 2
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %103, %7
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %15, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %242

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %23, align 4
  %110 = call i32 @LD_SB4(i32* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 4, %111
  %113 = load i32*, i32** %10, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %10, align 8
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = call i32 @XORI_B4_128_SB(i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %29, align 4
  %133 = call i32 @ILVR_B4_SB(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %34, align 4
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %35, align 4
  %146 = call i32 @ILVL_B4_SB(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %36, align 4
  %150 = load i32, i32* %37, align 4
  %151 = call i32 @FILT_4TAP_DPADD_S_H(i32 %147, i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %43, align 4
  %152 = load i32, i32* %27, align 4
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %36, align 4
  %155 = load i32, i32* %37, align 4
  %156 = call i32 @FILT_4TAP_DPADD_S_H(i32 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %44, align 4
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %36, align 4
  %160 = load i32, i32* %37, align 4
  %161 = call i32 @FILT_4TAP_DPADD_S_H(i32 %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %45, align 4
  %162 = load i32, i32* %28, align 4
  %163 = load i32, i32* %29, align 4
  %164 = load i32, i32* %36, align 4
  %165 = load i32, i32* %37, align 4
  %166 = call i32 @FILT_4TAP_DPADD_S_H(i32 %162, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %46, align 4
  %167 = load i32, i32* %30, align 4
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %36, align 4
  %170 = load i32, i32* %37, align 4
  %171 = call i32 @FILT_4TAP_DPADD_S_H(i32 %167, i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %47, align 4
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %34, align 4
  %174 = load i32, i32* %36, align 4
  %175 = load i32, i32* %37, align 4
  %176 = call i32 @FILT_4TAP_DPADD_S_H(i32 %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %48, align 4
  %177 = load i32, i32* %31, align 4
  %178 = load i32, i32* %32, align 4
  %179 = load i32, i32* %36, align 4
  %180 = load i32, i32* %37, align 4
  %181 = call i32 @FILT_4TAP_DPADD_S_H(i32 %177, i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %49, align 4
  %182 = load i32, i32* %34, align 4
  %183 = load i32, i32* %35, align 4
  %184 = load i32, i32* %36, align 4
  %185 = load i32, i32* %37, align 4
  %186 = call i32 @FILT_4TAP_DPADD_S_H(i32 %182, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %50, align 4
  %187 = load i32, i32* %43, align 4
  %188 = load i32, i32* %44, align 4
  %189 = load i32, i32* %45, align 4
  %190 = load i32, i32* %46, align 4
  %191 = call i32 @SRARI_H4_SH(i32 %187, i32 %188, i32 %189, i32 %190, i32 7)
  %192 = load i32, i32* %47, align 4
  %193 = load i32, i32* %48, align 4
  %194 = load i32, i32* %49, align 4
  %195 = load i32, i32* %50, align 4
  %196 = call i32 @SRARI_H4_SH(i32 %192, i32 %193, i32 %194, i32 %195, i32 7)
  %197 = load i32, i32* %43, align 4
  %198 = load i32, i32* %44, align 4
  %199 = load i32, i32* %45, align 4
  %200 = load i32, i32* %46, align 4
  %201 = call i32 @SAT_SH4_SH(i32 %197, i32 %198, i32 %199, i32 %200, i32 7)
  %202 = load i32, i32* %47, align 4
  %203 = load i32, i32* %48, align 4
  %204 = load i32, i32* %49, align 4
  %205 = load i32, i32* %50, align 4
  %206 = call i32 @SAT_SH4_SH(i32 %202, i32 %203, i32 %204, i32 %205, i32 7)
  %207 = load i32, i32* %47, align 4
  %208 = load i32, i32* %43, align 4
  %209 = load i32, i32* %48, align 4
  %210 = load i32, i32* %44, align 4
  %211 = load i32, i32* %49, align 4
  %212 = load i32, i32* %45, align 4
  %213 = load i32, i32* %50, align 4
  %214 = load i32, i32* %46, align 4
  %215 = load i32, i32* %38, align 4
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %40, align 4
  %218 = load i32, i32* %41, align 4
  %219 = call i32 @PCKEV_B4_UB(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %38, align 4
  %221 = load i32, i32* %39, align 4
  %222 = load i32, i32* %40, align 4
  %223 = load i32, i32* %41, align 4
  %224 = call i32 @XORI_B4_128_UB(i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %38, align 4
  %226 = load i32, i32* %39, align 4
  %227 = load i32, i32* %40, align 4
  %228 = load i32, i32* %41, align 4
  %229 = load i32*, i32** %8, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @ST_UB4(i32 %225, i32 %226, i32 %227, i32 %228, i32* %229, i32 %230)
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 4, %232
  %234 = load i32*, i32** %8, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %8, align 8
  %237 = load i32, i32* %26, align 4
  store i32 %237, i32* %24, align 4
  %238 = load i32, i32* %29, align 4
  store i32 %238, i32* %27, align 4
  %239 = load i32, i32* %32, align 4
  store i32 %239, i32* %30, align 4
  %240 = load i32, i32* %35, align 4
  store i32 %240, i32* %33, align 4
  %241 = load i32, i32* %23, align 4
  store i32 %241, i32* %19, align 4
  br label %99

242:                                              ; preds = %99
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILT_4TAP_DPADD_S_H(i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_UB(i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
