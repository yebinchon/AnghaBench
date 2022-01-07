; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_8x4multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_8x4multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_8x4multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_8x4multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
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
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %14, align 8
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %25, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %26, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %28, align 4
  %64 = load i32, i32* %22, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %23, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %66, %68
  store i32 %69, i32* %29, align 4
  %70 = load i32, i32* %23, align 4
  %71 = mul nsw i32 128, %70
  store i32 %71, i32* %30, align 4
  %72 = load i32, i32* %30, align 4
  %73 = shl i32 %72, 6
  store i32 %73, i32* %30, align 4
  %74 = load i32, i32* %30, align 4
  %75 = load i32, i32* %28, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %28, align 4
  %77 = load i32, i32* %28, align 4
  %78 = call i32 @__msa_fill_w(i32 %77)
  store i32 %78, i32* %52, align 4
  %79 = load i32, i32* %29, align 4
  %80 = call i32 @__msa_fill_w(i32 %79)
  store i32 %80, i32* %51, align 4
  %81 = load i32, i32* %26, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @__msa_fill_w(i32 %82)
  store i32 %83, i32* %53, align 4
  %84 = load i32*, i32** %20, align 8
  %85 = call i32 @LD_SH(i32* %84)
  store i32 %85, i32* %50, align 4
  %86 = load i32, i32* %50, align 4
  %87 = load i32, i32* %48, align 4
  %88 = load i32, i32* %49, align 4
  %89 = call i32 @SPLATI_H2_SH(i32 %86, i32 0, i32 1, i32 %87, i32 %88)
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %31, align 4
  %93 = load i32, i32* %32, align 4
  %94 = load i32, i32* %33, align 4
  %95 = call i32 @LD_SB3(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 3, %96
  %98 = load i32*, i32** %14, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %14, align 8
  %101 = load i32, i32* %31, align 4
  %102 = load i32, i32* %32, align 4
  %103 = load i32, i32* %33, align 4
  %104 = call i32 @XORI_B3_128_SB(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %32, align 4
  %106 = load i32, i32* %31, align 4
  %107 = load i32, i32* %33, align 4
  %108 = load i32, i32* %32, align 4
  %109 = load i32, i32* %40, align 4
  %110 = load i32, i32* %42, align 4
  %111 = call i32 @ILVR_B2_SB(i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %21, align 4
  %113 = ashr i32 %112, 2
  store i32 %113, i32* %27, align 4
  br label %114

114:                                              ; preds = %118, %13
  %115 = load i32, i32* %27, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %27, align 4
  %117 = icmp ne i32 %115, 0
  br i1 %117, label %118, label %224

118:                                              ; preds = %114
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %35, align 4
  %123 = call i32 @LD_SB2(i32* %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = mul nsw i32 2, %124
  %126 = load i32*, i32** %14, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %14, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %36, align 4
  %132 = load i32, i32* %37, align 4
  %133 = load i32, i32* %38, align 4
  %134 = load i32, i32* %39, align 4
  %135 = call i32 @LD_SH4(i32* %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 4, %136
  %138 = load i32*, i32** %16, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %16, align 8
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %35, align 4
  %143 = call i32 @XORI_B2_128_SB(i32 %141, i32 %142)
  %144 = load i32, i32* %34, align 4
  %145 = load i32, i32* %33, align 4
  %146 = load i32, i32* %35, align 4
  %147 = load i32, i32* %34, align 4
  %148 = load i32, i32* %41, align 4
  %149 = load i32, i32* %43, align 4
  %150 = call i32 @ILVR_B2_SB(i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %40, align 4
  %152 = load i32, i32* %41, align 4
  %153 = load i32, i32* %48, align 4
  %154 = load i32, i32* %49, align 4
  %155 = call i32 @HEVC_FILT_4TAP_SH(i32 %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %44, align 4
  %156 = load i32, i32* %42, align 4
  %157 = load i32, i32* %43, align 4
  %158 = load i32, i32* %48, align 4
  %159 = load i32, i32* %49, align 4
  %160 = call i32 @HEVC_FILT_4TAP_SH(i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %45, align 4
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %33, align 4
  %165 = call i32 @LD_SB2(i32* %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 2, %166
  %168 = load i32*, i32** %14, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %14, align 8
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %33, align 4
  %173 = call i32 @XORI_B2_128_SB(i32 %171, i32 %172)
  %174 = load i32, i32* %32, align 4
  %175 = load i32, i32* %35, align 4
  %176 = load i32, i32* %33, align 4
  %177 = load i32, i32* %32, align 4
  %178 = load i32, i32* %40, align 4
  %179 = load i32, i32* %42, align 4
  %180 = call i32 @ILVR_B2_SB(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %41, align 4
  %182 = load i32, i32* %40, align 4
  %183 = load i32, i32* %48, align 4
  %184 = load i32, i32* %49, align 4
  %185 = call i32 @HEVC_FILT_4TAP_SH(i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %46, align 4
  %186 = load i32, i32* %43, align 4
  %187 = load i32, i32* %42, align 4
  %188 = load i32, i32* %48, align 4
  %189 = load i32, i32* %49, align 4
  %190 = call i32 @HEVC_FILT_4TAP_SH(i32 %186, i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %47, align 4
  %191 = load i32, i32* %44, align 4
  %192 = load i32, i32* %45, align 4
  %193 = load i32, i32* %46, align 4
  %194 = load i32, i32* %47, align 4
  %195 = load i32, i32* %36, align 4
  %196 = load i32, i32* %37, align 4
  %197 = load i32, i32* %38, align 4
  %198 = load i32, i32* %39, align 4
  %199 = load i32, i32* %51, align 4
  %200 = load i32, i32* %53, align 4
  %201 = load i32, i32* %52, align 4
  %202 = load i32, i32* %44, align 4
  %203 = load i32, i32* %45, align 4
  %204 = load i32, i32* %46, align 4
  %205 = load i32, i32* %47, align 4
  %206 = call i32 @HEVC_BIW_RND_CLIP4(i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %45, align 4
  %208 = load i32, i32* %44, align 4
  %209 = load i32, i32* %47, align 4
  %210 = load i32, i32* %46, align 4
  %211 = load i32, i32* %44, align 4
  %212 = load i32, i32* %45, align 4
  %213 = call i32 @PCKEV_B2_SH(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %44, align 4
  %215 = load i32, i32* %45, align 4
  %216 = load i32*, i32** %18, align 8
  %217 = load i32, i32* %19, align 4
  %218 = call i32 @ST_D4(i32 %214, i32 %215, i32 0, i32 1, i32 0, i32 1, i32* %216, i32 %217)
  %219 = load i32, i32* %19, align 4
  %220 = mul nsw i32 4, %219
  %221 = load i32*, i32** %18, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %18, align 8
  br label %114

224:                                              ; preds = %114
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
