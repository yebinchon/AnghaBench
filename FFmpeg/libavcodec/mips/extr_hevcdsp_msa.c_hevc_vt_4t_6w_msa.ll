; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = sext i32 %39 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %7, align 8
  %44 = call i32 @__msa_ldi_h(i32 128)
  store i32 %44, i32* %38, align 4
  %45 = load i32, i32* %38, align 4
  %46 = shl i32 %45, 6
  store i32 %46, i32* %38, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @LD_SH(i32* %47)
  store i32 %48, i32* %37, align 4
  %49 = load i32, i32* %37, align 4
  %50 = load i32, i32* %35, align 4
  %51 = load i32, i32* %36, align 4
  %52 = call i32 @SPLATI_H2_SH(i32 %49, i32 0, i32 1, i32 %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %24, align 4
  %58 = call i32 @LD_SB3(i32* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 3, %59
  %61 = load i32*, i32** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %24, align 4
  %67 = call i32 @XORI_B3_128_SB(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %27, align 4
  %73 = load i32, i32* %29, align 4
  %74 = call i32 @ILVR_B2_SB(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 2
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %81, %6
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %214

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* %26, align 4
  %86 = call i32 @LD_SB2(i32* %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 2, %87
  %89 = load i32*, i32** %7, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %7, align 8
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %26, align 4
  %94 = call i32 @XORI_B2_128_SB(i32 %92, i32 %93)
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %30, align 4
  %101 = call i32 @ILVR_B2_SB(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %38, align 4
  store i32 %102, i32* %31, align 4
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* %28, align 4
  %105 = load i32, i32* %35, align 4
  %106 = load i32, i32* %36, align 4
  %107 = load i32, i32* %31, align 4
  %108 = load i32, i32* %31, align 4
  %109 = call i32 @DPADD_SB2_SH(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %38, align 4
  store i32 %110, i32* %32, align 4
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* %30, align 4
  %113 = load i32, i32* %35, align 4
  %114 = load i32, i32* %36, align 4
  %115 = load i32, i32* %32, align 4
  %116 = load i32, i32* %32, align 4
  %117 = call i32 @DPADD_SB2_SH(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %24, align 4
  %122 = call i32 @LD_SB2(i32* %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = mul nsw i32 2, %123
  %125 = load i32*, i32** %7, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %7, align 8
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %24, align 4
  %130 = call i32 @XORI_B2_128_SB(i32 %128, i32 %129)
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %26, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %29, align 4
  %137 = call i32 @ILVR_B2_SB(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %38, align 4
  store i32 %138, i32* %33, align 4
  %139 = load i32, i32* %28, align 4
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* %35, align 4
  %142 = load i32, i32* %36, align 4
  %143 = load i32, i32* %33, align 4
  %144 = load i32, i32* %33, align 4
  %145 = call i32 @DPADD_SB2_SH(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %38, align 4
  store i32 %146, i32* %34, align 4
  %147 = load i32, i32* %30, align 4
  %148 = load i32, i32* %29, align 4
  %149 = load i32, i32* %35, align 4
  %150 = load i32, i32* %36, align 4
  %151 = load i32, i32* %34, align 4
  %152 = load i32, i32* %34, align 4
  %153 = call i32 @DPADD_SB2_SH(i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* %31, align 4
  %155 = call i32 @__msa_copy_u_d(i32 %154, i32 0)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %32, align 4
  %157 = call i32 @__msa_copy_u_d(i32 %156, i32 0)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %33, align 4
  %159 = call i32 @__msa_copy_u_d(i32 %158, i32 0)
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %34, align 4
  %161 = call i32 @__msa_copy_u_d(i32 %160, i32 0)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %31, align 4
  %163 = call i32 @__msa_copy_u_w(i32 %162, i32 2)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %32, align 4
  %165 = call i32 @__msa_copy_u_w(i32 %164, i32 2)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %33, align 4
  %167 = call i32 @__msa_copy_u_w(i32 %166, i32 2)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %34, align 4
  %169 = call i32 @__msa_copy_u_w(i32 %168, i32 2)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @SD(i32 %170, i32* %171)
  %173 = load i32, i32* %14, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = call i32 @SW(i32 %173, i32* %175)
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %9, align 8
  %181 = load i32, i32* %19, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @SD(i32 %181, i32* %182)
  %184 = load i32, i32* %15, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = call i32 @SW(i32 %184, i32* %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %9, align 8
  %192 = load i32, i32* %20, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @SD(i32 %192, i32* %193)
  %195 = load i32, i32* %16, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = call i32 @SW(i32 %195, i32* %197)
  %199 = load i32, i32* %10, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %9, align 8
  %203 = load i32, i32* %21, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @SD(i32 %203, i32* %204)
  %206 = load i32, i32* %17, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  %209 = call i32 @SW(i32 %206, i32* %208)
  %210 = load i32, i32* %10, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %9, align 8
  br label %77

214:                                              ; preds = %77
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i32 @SD(i32, i32*) #1

declare dso_local i32 @SW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
