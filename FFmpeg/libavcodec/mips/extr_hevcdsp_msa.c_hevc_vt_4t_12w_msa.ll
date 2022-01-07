; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 1, %46
  %48 = load i32*, i32** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = call i32 @__msa_ldi_h(i32 128)
  store i32 %52, i32* %45, align 4
  %53 = load i32, i32* %45, align 4
  %54 = shl i32 %53, 6
  store i32 %54, i32* %45, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %44, align 4
  %57 = load i32, i32* %44, align 4
  %58 = load i32, i32* %42, align 4
  %59 = load i32, i32* %43, align 4
  %60 = call i32 @SPLATI_H2_SH(i32 %57, i32 0, i32 1, i32 %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @LD_SB3(i32* %61, i32 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 3, %67
  %69 = load i32*, i32** %7, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %7, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @XORI_B3_128_SB(i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %23, align 8
  %82 = call i32 @ILVR_B2_SB(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81)
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %29, align 8
  %88 = load i64, i64* %32, align 8
  %89 = call i32 @ILVL_B2_SB(i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i64, i64* %32, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* %29, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @__msa_ilvr_d(i32 %91, i32 %93)
  store i64 %94, i64* %35, align 8
  store i32 4, i32* %13, align 4
  br label %95

95:                                               ; preds = %99, %6
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %13, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %234

99:                                               ; preds = %95
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %18, align 8
  %104 = call i32 @LD_SB2(i32* %100, i32 %101, i64 %102, i64 %103)
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 2, %105
  %107 = load i32*, i32** %7, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %7, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %20, align 8
  %114 = call i32 @LD_SB2(i32* %110, i32 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %8, align 4
  %116 = mul nsw i32 2, %115
  %117 = load i32*, i32** %7, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %7, align 8
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %18, align 8
  %122 = call i32 @XORI_B2_128_SB(i64 %120, i64 %121)
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %20, align 8
  %125 = call i32 @XORI_B2_128_SB(i64 %123, i64 %124)
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %24, align 8
  %132 = call i32 @ILVR_B2_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %17, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* %30, align 8
  %138 = load i64, i64* %33, align 8
  %139 = call i32 @ILVL_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %33, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i64, i64* %30, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i64 @__msa_ilvr_d(i32 %141, i32 %143)
  store i64 %144, i64* %36, align 8
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %20, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %37, align 8
  %150 = load i64, i64* %38, align 8
  %151 = call i32 @ILVR_B2_SB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* %31, align 8
  %157 = load i64, i64* %34, align 8
  %158 = call i32 @ILVL_B2_SB(i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %34, align 8
  %160 = trunc i64 %159 to i32
  %161 = load i64, i64* %31, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i64 @__msa_ilvr_d(i32 %160, i32 %162)
  store i64 %163, i64* %39, align 8
  %164 = load i32, i32* %45, align 4
  store i32 %164, i32* %25, align 4
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %22, align 8
  %167 = load i32, i32* %42, align 4
  %168 = load i32, i32* %43, align 4
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %25, align 4
  %171 = call i32 @DPADD_SB2_SH(i64 %165, i64 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %45, align 4
  store i32 %172, i32* %26, align 4
  %173 = load i64, i64* %23, align 8
  %174 = load i64, i64* %24, align 8
  %175 = load i32, i32* %42, align 4
  %176 = load i32, i32* %43, align 4
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* %26, align 4
  %179 = call i32 @DPADD_SB2_SH(i64 %173, i64 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %45, align 4
  store i32 %180, i32* %27, align 4
  %181 = load i64, i64* %22, align 8
  %182 = load i64, i64* %37, align 8
  %183 = load i32, i32* %42, align 4
  %184 = load i32, i32* %43, align 4
  %185 = load i32, i32* %27, align 4
  %186 = load i32, i32* %27, align 4
  %187 = call i32 @DPADD_SB2_SH(i64 %181, i64 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %45, align 4
  store i32 %188, i32* %28, align 4
  %189 = load i64, i64* %24, align 8
  %190 = load i64, i64* %38, align 8
  %191 = load i32, i32* %42, align 4
  %192 = load i32, i32* %43, align 4
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %28, align 4
  %195 = call i32 @DPADD_SB2_SH(i64 %189, i64 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* %45, align 4
  store i32 %196, i32* %40, align 4
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* %36, align 8
  %199 = load i32, i32* %42, align 4
  %200 = load i32, i32* %43, align 4
  %201 = load i32, i32* %40, align 4
  %202 = load i32, i32* %40, align 4
  %203 = call i32 @DPADD_SB2_SH(i64 %197, i64 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %45, align 4
  store i32 %204, i32* %41, align 4
  %205 = load i64, i64* %36, align 8
  %206 = load i64, i64* %39, align 8
  %207 = load i32, i32* %42, align 4
  %208 = load i32, i32* %43, align 4
  %209 = load i32, i32* %41, align 4
  %210 = load i32, i32* %41, align 4
  %211 = call i32 @DPADD_SB2_SH(i64 %205, i64 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %25, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %27, align 4
  %215 = load i32, i32* %28, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @ST_SH4(i32 %212, i32 %213, i32 %214, i32 %215, i32* %216, i32 %217)
  %219 = load i32, i32* %40, align 4
  %220 = load i32, i32* %41, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 8
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @ST_D4(i32 %219, i32 %220, i32 0, i32 1, i32 0, i32 1, i32* %222, i32 %223)
  %225 = load i32, i32* %10, align 4
  %226 = mul nsw i32 4, %225
  %227 = load i32*, i32** %9, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %9, align 8
  %230 = load i64, i64* %20, align 8
  store i64 %230, i64* %16, align 8
  %231 = load i64, i64* %37, align 8
  store i64 %231, i64* %21, align 8
  %232 = load i64, i64* %38, align 8
  store i64 %232, i64* %23, align 8
  %233 = load i64, i64* %39, align 8
  store i64 %233, i64* %35, align 8
  br label %95

234:                                              ; preds = %95
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
