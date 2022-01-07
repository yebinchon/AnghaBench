; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 3, %45
  %47 = load i32*, i32** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %7, align 8
  %51 = call i32 @__msa_ldi_h(i32 128)
  store i32 %51, i32* %40, align 4
  %52 = load i32, i32* %40, align 4
  %53 = shl i32 %52, 6
  store i32 %53, i32* %40, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @LD_SH(i32* %54)
  store i32 %55, i32* %39, align 4
  %56 = load i32, i32* %39, align 4
  %57 = load i32, i32* %41, align 4
  %58 = load i32, i32* %42, align 4
  %59 = load i32, i32* %43, align 4
  %60 = load i32, i32* %44, align 4
  %61 = call i32 @SPLATI_H4_SH(i32 %56, i32 0, i32 1, i32 2, i32 3, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @LD_SB7(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 7, %72
  %74 = load i32*, i32** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @XORI_B7_128_SB(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %27, align 4
  %96 = load i32, i32* %30, align 4
  %97 = call i32 @ILVR_B4_SB(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* %32, align 4
  %104 = call i32 @ILVR_B2_SB(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = ashr i32 %105, 2
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %111, %6
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %13, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %111, label %217

111:                                              ; preds = %107
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %24, align 4
  %118 = call i32 @LD_SB4(i32* %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 4, %119
  %121 = load i32*, i32** %7, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %7, align 8
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %24, align 4
  %128 = call i32 @XORI_B4_128_SB(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %28, align 4
  %138 = load i32, i32* %33, align 4
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* %34, align 4
  %141 = call i32 @ILVR_B4_SB(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %40, align 4
  store i32 %142, i32* %35, align 4
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %26, align 4
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %28, align 4
  %147 = load i32, i32* %41, align 4
  %148 = load i32, i32* %42, align 4
  %149 = load i32, i32* %43, align 4
  %150 = load i32, i32* %44, align 4
  %151 = load i32, i32* %35, align 4
  %152 = load i32, i32* %35, align 4
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %35, align 4
  %155 = call i32 @DPADD_SB4_SH(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %40, align 4
  store i32 %156, i32* %36, align 4
  %157 = load i32, i32* %30, align 4
  %158 = load i32, i32* %31, align 4
  %159 = load i32, i32* %32, align 4
  %160 = load i32, i32* %33, align 4
  %161 = load i32, i32* %41, align 4
  %162 = load i32, i32* %42, align 4
  %163 = load i32, i32* %43, align 4
  %164 = load i32, i32* %44, align 4
  %165 = load i32, i32* %36, align 4
  %166 = load i32, i32* %36, align 4
  %167 = load i32, i32* %36, align 4
  %168 = load i32, i32* %36, align 4
  %169 = call i32 @DPADD_SB4_SH(i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %40, align 4
  store i32 %170, i32* %37, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %28, align 4
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* %41, align 4
  %176 = load i32, i32* %42, align 4
  %177 = load i32, i32* %43, align 4
  %178 = load i32, i32* %44, align 4
  %179 = load i32, i32* %37, align 4
  %180 = load i32, i32* %37, align 4
  %181 = load i32, i32* %37, align 4
  %182 = load i32, i32* %37, align 4
  %183 = call i32 @DPADD_SB4_SH(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %40, align 4
  store i32 %184, i32* %38, align 4
  %185 = load i32, i32* %31, align 4
  %186 = load i32, i32* %32, align 4
  %187 = load i32, i32* %33, align 4
  %188 = load i32, i32* %34, align 4
  %189 = load i32, i32* %41, align 4
  %190 = load i32, i32* %42, align 4
  %191 = load i32, i32* %43, align 4
  %192 = load i32, i32* %44, align 4
  %193 = load i32, i32* %38, align 4
  %194 = load i32, i32* %38, align 4
  %195 = load i32, i32* %38, align 4
  %196 = load i32, i32* %38, align 4
  %197 = call i32 @DPADD_SB4_SH(i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %35, align 4
  %199 = load i32, i32* %36, align 4
  %200 = load i32, i32* %37, align 4
  %201 = load i32, i32* %38, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @ST_SH4(i32 %198, i32 %199, i32 %200, i32 %201, i32* %202, i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = mul nsw i32 4, %205
  %207 = load i32*, i32** %9, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %9, align 8
  %210 = load i32, i32* %27, align 4
  store i32 %210, i32* %25, align 4
  %211 = load i32, i32* %28, align 4
  store i32 %211, i32* %26, align 4
  %212 = load i32, i32* %29, align 4
  store i32 %212, i32* %27, align 4
  %213 = load i32, i32* %32, align 4
  store i32 %213, i32* %30, align 4
  %214 = load i32, i32* %33, align 4
  store i32 %214, i32* %31, align 4
  %215 = load i32, i32* %34, align 4
  store i32 %215, i32* %32, align 4
  %216 = load i32, i32* %24, align 4
  store i32 %216, i32* %20, align 4
  br label %107

217:                                              ; preds = %107
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

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
