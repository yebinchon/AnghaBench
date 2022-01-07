; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 1, %47
  %49 = load i32*, i32** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @LD_SH(i32* %53)
  store i32 %54, i32* %46, align 4
  %55 = load i32, i32* %46, align 4
  %56 = load i32, i32* %44, align 4
  %57 = load i32, i32* %45, align 4
  %58 = call i32 @SPLATI_H2_SH(i32 %55, i32 0, i32 1, i32 %56, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @LD_SB3(i32* %59, i32 %60, i64 %61, i64 %62, i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 3, %65
  %67 = load i32*, i32** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %7, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @XORI_B3_128_SB(i64 %70, i64 %71, i64 %72)
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* %25, align 8
  %80 = call i32 @ILVR_B2_SB(i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %29, align 8
  %86 = load i64, i64* %32, align 8
  %87 = call i32 @ILVL_B2_SB(i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load i64, i64* %32, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* %29, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i64 @__msa_ilvr_d(i32 %89, i32 %91)
  store i64 %92, i64* %35, align 8
  store i32 4, i32* %13, align 4
  br label %93

93:                                               ; preds = %97, %6
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %13, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %227

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %20, align 8
  %104 = call i32 @LD_SB4(i32* %98, i32 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 4, %105
  %107 = load i32*, i32** %7, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %7, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %20, align 8
  %114 = call i32 @XORI_B4_128_SB(i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %26, align 8
  %121 = call i32 @ILVR_B2_SB(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %30, align 8
  %127 = load i64, i64* %33, align 8
  %128 = call i32 @ILVL_B2_SB(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %33, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* %30, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i64 @__msa_ilvr_d(i32 %130, i32 %132)
  store i64 %133, i64* %36, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* %27, align 8
  %139 = load i64, i64* %28, align 8
  %140 = call i32 @ILVR_B2_SB(i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* %18, align 8
  %143 = load i64, i64* %20, align 8
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* %31, align 8
  %146 = load i64, i64* %34, align 8
  %147 = call i32 @ILVL_B2_SB(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %34, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i64, i64* %31, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @__msa_ilvr_d(i32 %149, i32 %151)
  store i64 %152, i64* %37, align 8
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %24, align 8
  %155 = load i32, i32* %44, align 4
  %156 = load i32, i32* %45, align 4
  %157 = call i32 @HEVC_FILT_4TAP_SH(i64 %153, i64 %154, i32 %155, i32 %156)
  store i32 %157, i32* %38, align 4
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i32, i32* %44, align 4
  %161 = load i32, i32* %45, align 4
  %162 = call i32 @HEVC_FILT_4TAP_SH(i64 %158, i64 %159, i32 %160, i32 %161)
  store i32 %162, i32* %39, align 4
  %163 = load i64, i64* %35, align 8
  %164 = load i64, i64* %36, align 8
  %165 = load i32, i32* %44, align 4
  %166 = load i32, i32* %45, align 4
  %167 = call i32 @HEVC_FILT_4TAP_SH(i64 %163, i64 %164, i32 %165, i32 %166)
  store i32 %167, i32* %42, align 4
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* %27, align 8
  %170 = load i32, i32* %44, align 4
  %171 = load i32, i32* %45, align 4
  %172 = call i32 @HEVC_FILT_4TAP_SH(i64 %168, i64 %169, i32 %170, i32 %171)
  store i32 %172, i32* %40, align 4
  %173 = load i64, i64* %26, align 8
  %174 = load i64, i64* %28, align 8
  %175 = load i32, i32* %44, align 4
  %176 = load i32, i32* %45, align 4
  %177 = call i32 @HEVC_FILT_4TAP_SH(i64 %173, i64 %174, i32 %175, i32 %176)
  store i32 %177, i32* %41, align 4
  %178 = load i64, i64* %36, align 8
  %179 = load i64, i64* %37, align 8
  %180 = load i32, i32* %44, align 4
  %181 = load i32, i32* %45, align 4
  %182 = call i32 @HEVC_FILT_4TAP_SH(i64 %178, i64 %179, i32 %180, i32 %181)
  store i32 %182, i32* %43, align 4
  %183 = load i32, i32* %38, align 4
  %184 = load i32, i32* %39, align 4
  %185 = load i32, i32* %40, align 4
  %186 = load i32, i32* %41, align 4
  %187 = call i32 @SRARI_H4_SH(i32 %183, i32 %184, i32 %185, i32 %186, i32 6)
  %188 = load i32, i32* %42, align 4
  %189 = load i32, i32* %43, align 4
  %190 = call i32 @SRARI_H2_SH(i32 %188, i32 %189, i32 6)
  %191 = load i32, i32* %38, align 4
  %192 = load i32, i32* %39, align 4
  %193 = load i32, i32* %40, align 4
  %194 = load i32, i32* %41, align 4
  %195 = call i32 @SAT_SH4_SH(i32 %191, i32 %192, i32 %193, i32 %194, i32 7)
  %196 = load i32, i32* %42, align 4
  %197 = load i32, i32* %43, align 4
  %198 = call i32 @SAT_SH2_SH(i32 %196, i32 %197, i32 7)
  %199 = load i32, i32* %38, align 4
  %200 = load i32, i32* %39, align 4
  %201 = call i32 @PCKEV_XORI128_UB(i32 %199, i32 %200)
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %40, align 4
  %203 = load i32, i32* %41, align 4
  %204 = call i32 @PCKEV_XORI128_UB(i32 %202, i32 %203)
  store i32 %204, i32* %22, align 4
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @ST_D4(i32 %205, i32 %206, i32 0, i32 1, i32 0, i32 1, i32* %207, i32 %208)
  %210 = load i32, i32* %42, align 4
  %211 = load i32, i32* %43, align 4
  %212 = call i32 @PCKEV_XORI128_UB(i32 %210, i32 %211)
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @ST_W4(i32 %213, i32 0, i32 1, i32 2, i32 3, i32* %215, i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = mul nsw i32 4, %218
  %220 = load i32*, i32** %9, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %9, align 8
  %223 = load i64, i64* %20, align 8
  store i64 %223, i64* %16, align 8
  %224 = load i64, i64* %27, align 8
  store i64 %224, i64* %23, align 8
  %225 = load i64, i64* %28, align 8
  store i64 %225, i64* %25, align 8
  %226 = load i64, i64* %37, align 8
  store i64 %226, i64* %35, align 8
  br label %93

227:                                              ; preds = %93
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
