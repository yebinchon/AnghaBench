; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
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
  %53 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i64 @LD_SB(i32* %54)
  store i64 %55, i64* %37, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -1
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %20, align 8
  %59 = call i32 @LD_SH(i32* %58)
  store i32 %59, i32* %49, align 4
  %60 = load i32, i32* %49, align 4
  %61 = load i32, i32* %31, align 4
  %62 = load i32, i32* %32, align 4
  %63 = call i32 @SPLATI_H2_SH(i32 %60, i32 0, i32 1, i32 %61, i32 %62)
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %25, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %26, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %28, align 4
  %69 = load i32, i32* %22, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %23, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %71, %73
  store i32 %74, i32* %29, align 4
  %75 = load i32, i32* %23, align 4
  %76 = mul nsw i32 128, %75
  store i32 %76, i32* %30, align 4
  %77 = load i32, i32* %30, align 4
  %78 = shl i32 %77, 6
  store i32 %78, i32* %30, align 4
  %79 = load i32, i32* %30, align 4
  %80 = load i32, i32* %28, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %28, align 4
  %82 = load i32, i32* %28, align 4
  %83 = call i32 @__msa_fill_w(i32 %82)
  store i32 %83, i32* %51, align 4
  %84 = load i32, i32* %29, align 4
  %85 = call i32 @__msa_fill_w(i32 %84)
  store i32 %85, i32* %50, align 4
  %86 = load i32, i32* %26, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @__msa_fill_w(i32 %87)
  store i32 %88, i32* %52, align 4
  %89 = load i64, i64* %37, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %38, align 8
  store i32 2, i32* %27, align 4
  br label %91

91:                                               ; preds = %95, %13
  %92 = load i32, i32* %27, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %27, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %235

95:                                               ; preds = %91
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i64, i64* %33, align 8
  %99 = load i64, i64* %34, align 8
  %100 = load i64, i64* %35, align 8
  %101 = load i64, i64* %36, align 8
  %102 = call i32 @LD_SB4(i32* %96, i32 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 4, %103
  %105 = load i32*, i32** %14, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %41, align 4
  %111 = load i32, i32* %42, align 4
  %112 = load i32, i32* %43, align 4
  %113 = load i32, i32* %44, align 4
  %114 = call i32 @LD_SH4(i32* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %17, align 4
  %116 = mul nsw i32 4, %115
  %117 = load i32*, i32** %16, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %16, align 8
  %120 = load i64, i64* %33, align 8
  %121 = load i64, i64* %34, align 8
  %122 = load i64, i64* %35, align 8
  %123 = load i64, i64* %36, align 8
  %124 = call i32 @XORI_B4_128_SB(i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %33, align 8
  %126 = load i64, i64* %33, align 8
  %127 = load i64, i64* %33, align 8
  %128 = load i64, i64* %33, align 8
  %129 = load i64, i64* %37, align 8
  %130 = load i64, i64* %38, align 8
  %131 = load i64, i64* %39, align 8
  %132 = load i64, i64* %40, align 8
  %133 = call i32 @VSHF_B2_SB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %39, align 8
  %135 = load i64, i64* %40, align 8
  %136 = load i32, i32* %31, align 4
  %137 = load i32, i32* %32, align 4
  %138 = call i32 @HEVC_FILT_4TAP_SH(i64 %134, i64 %135, i32 %136, i32 %137)
  store i32 %138, i32* %45, align 4
  %139 = load i64, i64* %34, align 8
  %140 = load i64, i64* %34, align 8
  %141 = load i64, i64* %34, align 8
  %142 = load i64, i64* %34, align 8
  %143 = load i64, i64* %37, align 8
  %144 = load i64, i64* %38, align 8
  %145 = load i64, i64* %39, align 8
  %146 = load i64, i64* %40, align 8
  %147 = call i32 @VSHF_B2_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %39, align 8
  %149 = load i64, i64* %40, align 8
  %150 = load i32, i32* %31, align 4
  %151 = load i32, i32* %32, align 4
  %152 = call i32 @HEVC_FILT_4TAP_SH(i64 %148, i64 %149, i32 %150, i32 %151)
  store i32 %152, i32* %46, align 4
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %35, align 8
  %155 = load i64, i64* %35, align 8
  %156 = load i64, i64* %35, align 8
  %157 = load i64, i64* %37, align 8
  %158 = load i64, i64* %38, align 8
  %159 = load i64, i64* %39, align 8
  %160 = load i64, i64* %40, align 8
  %161 = call i32 @VSHF_B2_SB(i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160)
  %162 = load i64, i64* %39, align 8
  %163 = load i64, i64* %40, align 8
  %164 = load i32, i32* %31, align 4
  %165 = load i32, i32* %32, align 4
  %166 = call i32 @HEVC_FILT_4TAP_SH(i64 %162, i64 %163, i32 %164, i32 %165)
  store i32 %166, i32* %47, align 4
  %167 = load i64, i64* %36, align 8
  %168 = load i64, i64* %36, align 8
  %169 = load i64, i64* %36, align 8
  %170 = load i64, i64* %36, align 8
  %171 = load i64, i64* %37, align 8
  %172 = load i64, i64* %38, align 8
  %173 = load i64, i64* %39, align 8
  %174 = load i64, i64* %40, align 8
  %175 = call i32 @VSHF_B2_SB(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174)
  %176 = load i64, i64* %39, align 8
  %177 = load i64, i64* %40, align 8
  %178 = load i32, i32* %31, align 4
  %179 = load i32, i32* %32, align 4
  %180 = call i32 @HEVC_FILT_4TAP_SH(i64 %176, i64 %177, i32 %178, i32 %179)
  store i32 %180, i32* %48, align 4
  %181 = load i32, i32* %45, align 4
  %182 = load i32, i32* %46, align 4
  %183 = load i32, i32* %47, align 4
  %184 = load i32, i32* %48, align 4
  %185 = load i32, i32* %41, align 4
  %186 = load i32, i32* %42, align 4
  %187 = load i32, i32* %43, align 4
  %188 = load i32, i32* %44, align 4
  %189 = load i32, i32* %50, align 4
  %190 = load i32, i32* %52, align 4
  %191 = load i32, i32* %51, align 4
  %192 = load i32, i32* %45, align 4
  %193 = load i32, i32* %46, align 4
  %194 = load i32, i32* %47, align 4
  %195 = load i32, i32* %48, align 4
  %196 = call i32 @HEVC_BIW_RND_CLIP4(i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %46, align 4
  %198 = load i32, i32* %45, align 4
  %199 = load i32, i32* %48, align 4
  %200 = load i32, i32* %47, align 4
  %201 = load i32, i32* %45, align 4
  %202 = load i32, i32* %46, align 4
  %203 = call i32 @PCKEV_B2_SH(i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %45, align 4
  %205 = load i32*, i32** %18, align 8
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @ST_W2(i32 %204, i32 0, i32 2, i32* %205, i32 %206)
  %208 = load i32, i32* %45, align 4
  %209 = load i32*, i32** %18, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @ST_H2(i32 %208, i32 2, i32 6, i32* %210, i32 %211)
  %213 = load i32, i32* %46, align 4
  %214 = load i32*, i32** %18, align 8
  %215 = load i32, i32* %19, align 4
  %216 = mul nsw i32 2, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %19, align 4
  %220 = call i32 @ST_W2(i32 %213, i32 0, i32 2, i32* %218, i32 %219)
  %221 = load i32, i32* %46, align 4
  %222 = load i32*, i32** %18, align 8
  %223 = load i32, i32* %19, align 4
  %224 = mul nsw i32 2, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %19, align 4
  %229 = call i32 @ST_H2(i32 %221, i32 2, i32 6, i32* %227, i32 %228)
  %230 = load i32, i32* %19, align 4
  %231 = mul nsw i32 4, %230
  %232 = load i32*, i32** %18, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %18, align 8
  br label %91

235:                                              ; preds = %91
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
