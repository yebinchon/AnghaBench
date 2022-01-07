; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %39 = alloca i32, align 4
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
  %47 = mul nsw i32 3, %46
  %48 = load i32*, i32** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @LD_SH(i32* %52)
  store i32 %53, i32* %41, align 4
  %54 = load i32, i32* %41, align 4
  %55 = load i32, i32* %35, align 4
  %56 = load i32, i32* %36, align 4
  %57 = load i32, i32* %37, align 4
  %58 = load i32, i32* %38, align 4
  %59 = call i32 @SPLATI_H4_SB(i32 %54, i32 0, i32 1, i32 2, i32 3, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @LD_SB7(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  %77 = call i32 @XORI_B7_128_SB(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 7, %78
  %80 = load i32*, i32** %7, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %30, align 4
  %95 = call i32 @ILVR_B4_SB(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %31, align 4
  %101 = load i32, i32* %32, align 4
  %102 = call i32 @ILVR_B2_SB(i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 2
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %109, %6
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %13, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %209

109:                                              ; preds = %105
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* %24, align 4
  %116 = call i32 @LD_SB4(i32* %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %24, align 4
  %121 = call i32 @XORI_B4_128_SB(i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 4, %122
  %124 = load i32*, i32** %7, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %7, align 8
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %28, align 4
  %136 = load i32, i32* %33, align 4
  %137 = load i32, i32* %29, align 4
  %138 = load i32, i32* %34, align 4
  %139 = call i32 @ILVR_B4_SB(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %35, align 4
  %145 = load i32, i32* %36, align 4
  %146 = load i32, i32* %37, align 4
  %147 = load i32, i32* %38, align 4
  %148 = call i32 @FILT_8TAP_DPADD_S_H(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %42, align 4
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %31, align 4
  %151 = load i32, i32* %32, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %36, align 4
  %155 = load i32, i32* %37, align 4
  %156 = load i32, i32* %38, align 4
  %157 = call i32 @FILT_8TAP_DPADD_S_H(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %43, align 4
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %27, align 4
  %160 = load i32, i32* %28, align 4
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %35, align 4
  %163 = load i32, i32* %36, align 4
  %164 = load i32, i32* %37, align 4
  %165 = load i32, i32* %38, align 4
  %166 = call i32 @FILT_8TAP_DPADD_S_H(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %44, align 4
  %167 = load i32, i32* %31, align 4
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = load i32, i32* %35, align 4
  %172 = load i32, i32* %36, align 4
  %173 = load i32, i32* %37, align 4
  %174 = load i32, i32* %38, align 4
  %175 = call i32 @FILT_8TAP_DPADD_S_H(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %45, align 4
  %176 = load i32, i32* %42, align 4
  %177 = load i32, i32* %43, align 4
  %178 = load i32, i32* %44, align 4
  %179 = load i32, i32* %45, align 4
  %180 = call i32 @SRARI_H4_SH(i32 %176, i32 %177, i32 %178, i32 %179, i32 7)
  %181 = load i32, i32* %42, align 4
  %182 = load i32, i32* %43, align 4
  %183 = load i32, i32* %44, align 4
  %184 = load i32, i32* %45, align 4
  %185 = call i32 @SAT_SH4_SH(i32 %181, i32 %182, i32 %183, i32 %184, i32 7)
  %186 = load i32, i32* %42, align 4
  %187 = load i32, i32* %43, align 4
  %188 = call i32 @PCKEV_XORI128_UB(i32 %186, i32 %187)
  store i32 %188, i32* %39, align 4
  %189 = load i32, i32* %44, align 4
  %190 = load i32, i32* %45, align 4
  %191 = call i32 @PCKEV_XORI128_UB(i32 %189, i32 %190)
  store i32 %191, i32* %40, align 4
  %192 = load i32, i32* %39, align 4
  %193 = load i32, i32* %40, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @ST_D4(i32 %192, i32 %193, i32 0, i32 1, i32 0, i32 1, i32* %194, i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 4, %197
  %199 = load i32*, i32** %9, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %9, align 8
  %202 = load i32, i32* %27, align 4
  store i32 %202, i32* %25, align 4
  %203 = load i32, i32* %28, align 4
  store i32 %203, i32* %26, align 4
  %204 = load i32, i32* %29, align 4
  store i32 %204, i32* %27, align 4
  %205 = load i32, i32* %32, align 4
  store i32 %205, i32* %30, align 4
  %206 = load i32, i32* %33, align 4
  store i32 %206, i32* %31, align 4
  %207 = load i32, i32* %34, align 4
  store i32 %207, i32* %32, align 4
  %208 = load i32, i32* %24, align 4
  store i32 %208, i32* %20, align 4
  br label %105

209:                                              ; preds = %105
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @FILT_8TAP_DPADD_S_H(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
