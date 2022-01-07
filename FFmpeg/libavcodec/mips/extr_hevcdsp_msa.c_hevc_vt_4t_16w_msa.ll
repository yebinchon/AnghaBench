; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %7, align 8
  %41 = call i32 @__msa_ldi_h(i32 128)
  store i32 %41, i32* %35, align 4
  %42 = load i32, i32* %35, align 4
  %43 = shl i32 %42, 6
  store i32 %43, i32* %35, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @LD_SH(i32* %44)
  store i32 %45, i32* %34, align 4
  %46 = load i32, i32* %34, align 4
  %47 = load i32, i32* %32, align 4
  %48 = load i32, i32* %33, align 4
  %49 = call i32 @SPLATI_H2_SH(i32 %46, i32 0, i32 1, i32 %47, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @LD_SB3(i32* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 3, %56
  %58 = load i32*, i32** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @XORI_B3_128_SB(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @ILVR_B2_SB(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %26, align 4
  %78 = call i32 @ILVL_B2_SB(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %85, %6
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %13, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %236

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @LD_SB2(i32* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32*, i32** %7, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %7, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @XORI_B2_128_SB(i32 %96, i32 %97)
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %23, align 4
  %105 = call i32 @ILVR_B2_SB(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %27, align 4
  %112 = call i32 @ILVL_B2_SB(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %35, align 4
  store i32 %113, i32* %28, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %32, align 4
  %117 = load i32, i32* %33, align 4
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %28, align 4
  %120 = call i32 @DPADD_SB2_SH(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %35, align 4
  store i32 %121, i32* %30, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = load i32, i32* %30, align 4
  %127 = load i32, i32* %30, align 4
  %128 = call i32 @DPADD_SB2_SH(i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %35, align 4
  store i32 %129, i32* %29, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* %29, align 4
  %136 = call i32 @DPADD_SB2_SH(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %35, align 4
  store i32 %137, i32* %31, align 4
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %27, align 4
  %140 = load i32, i32* %32, align 4
  %141 = load i32, i32* %33, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %31, align 4
  %144 = call i32 @DPADD_SB2_SH(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %28, align 4
  %146 = load i32, i32* %30, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @ST_SH2(i32 %145, i32 %146, i32* %147, i32 8)
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %9, align 8
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %31, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @ST_SH2(i32 %153, i32 %154, i32* %155, i32 8)
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %9, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @LD_SB2(i32* %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = mul nsw i32 2, %166
  %168 = load i32*, i32** %7, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %7, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @XORI_B2_128_SB(i32 %171, i32 %172)
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @ILVR_B2_SB(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %26, align 4
  %187 = call i32 @ILVL_B2_SB(i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %35, align 4
  store i32 %188, i32* %28, align 4
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %32, align 4
  %192 = load i32, i32* %33, align 4
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %28, align 4
  %195 = call i32 @DPADD_SB2_SH(i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* %35, align 4
  store i32 %196, i32* %30, align 4
  %197 = load i32, i32* %25, align 4
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %32, align 4
  %200 = load i32, i32* %33, align 4
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* %30, align 4
  %203 = call i32 @DPADD_SB2_SH(i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %35, align 4
  store i32 %204, i32* %29, align 4
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %32, align 4
  %208 = load i32, i32* %33, align 4
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %29, align 4
  %211 = call i32 @DPADD_SB2_SH(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %35, align 4
  store i32 %212, i32* %31, align 4
  %213 = load i32, i32* %27, align 4
  %214 = load i32, i32* %26, align 4
  %215 = load i32, i32* %32, align 4
  %216 = load i32, i32* %33, align 4
  %217 = load i32, i32* %31, align 4
  %218 = load i32, i32* %31, align 4
  %219 = call i32 @DPADD_SB2_SH(i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %28, align 4
  %221 = load i32, i32* %30, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @ST_SH2(i32 %220, i32 %221, i32* %222, i32 8)
  %224 = load i32, i32* %10, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32* %227, i32** %9, align 8
  %228 = load i32, i32* %29, align 4
  %229 = load i32, i32* %31, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @ST_SH2(i32 %228, i32 %229, i32* %230, i32 8)
  %232 = load i32, i32* %10, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %9, align 8
  br label %81

236:                                              ; preds = %81
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
