; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %38 = load i32, i32* @ff_hevc_mask_arr, align 4
  %39 = call i64 @LD_SB(i32 %38)
  store i64 %39, i64* %32, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @LD_SH(i32* %42)
  store i32 %43, i32* %36, align 4
  %44 = load i32, i32* %36, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = call i32 @SPLATI_H2_SH(i32 %44, i32 0, i32 1, i32 %45, i32 %46)
  %48 = load i64, i64* %32, align 8
  %49 = add nsw i64 %48, 2
  store i64 %49, i64* %33, align 8
  %50 = call i32 @__msa_ldi_h(i32 128)
  store i32 %50, i32* %37, align 4
  %51 = load i32, i32* %37, align 4
  %52 = shl i32 %51, 6
  store i32 %52, i32* %37, align 4
  store i32 2, i32* %13, align 4
  br label %53

53:                                               ; preds = %57, %6
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %13, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %203

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %28, align 8
  %61 = load i64, i64* %29, align 8
  %62 = load i64, i64* %30, align 8
  %63 = load i64, i64* %31, align 8
  %64 = call i32 @LD_SB4(i32* %58, i32 %59, i64 %60, i64 %61, i64 %62, i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 4, %65
  %67 = load i32*, i32** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %7, align 8
  %70 = load i64, i64* %28, align 8
  %71 = load i64, i64* %29, align 8
  %72 = load i64, i64* %30, align 8
  %73 = load i64, i64* %31, align 8
  %74 = call i32 @XORI_B4_128_SB(i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %28, align 8
  %76 = load i64, i64* %28, align 8
  %77 = load i64, i64* %28, align 8
  %78 = load i64, i64* %28, align 8
  %79 = load i64, i64* %32, align 8
  %80 = load i64, i64* %33, align 8
  %81 = load i64, i64* %34, align 8
  %82 = load i64, i64* %35, align 8
  %83 = call i32 @VSHF_B2_SB(i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i32, i32* %37, align 4
  store i32 %84, i32* %24, align 4
  %85 = load i64, i64* %34, align 8
  %86 = load i64, i64* %35, align 8
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* %24, align 4
  %91 = call i32 @DPADD_SB2_SH(i64 %85, i64 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i64, i64* %29, align 8
  %93 = load i64, i64* %29, align 8
  %94 = load i64, i64* %29, align 8
  %95 = load i64, i64* %29, align 8
  %96 = load i64, i64* %32, align 8
  %97 = load i64, i64* %33, align 8
  %98 = load i64, i64* %34, align 8
  %99 = load i64, i64* %35, align 8
  %100 = call i32 @VSHF_B2_SB(i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i32, i32* %37, align 4
  store i32 %101, i32* %25, align 4
  %102 = load i64, i64* %34, align 8
  %103 = load i64, i64* %35, align 8
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %25, align 4
  %108 = call i32 @DPADD_SB2_SH(i64 %102, i64 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i64, i64* %30, align 8
  %110 = load i64, i64* %30, align 8
  %111 = load i64, i64* %30, align 8
  %112 = load i64, i64* %30, align 8
  %113 = load i64, i64* %32, align 8
  %114 = load i64, i64* %33, align 8
  %115 = load i64, i64* %34, align 8
  %116 = load i64, i64* %35, align 8
  %117 = call i32 @VSHF_B2_SB(i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116)
  %118 = load i32, i32* %37, align 4
  store i32 %118, i32* %26, align 4
  %119 = load i64, i64* %34, align 8
  %120 = load i64, i64* %35, align 8
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %26, align 4
  %125 = call i32 @DPADD_SB2_SH(i64 %119, i64 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i64, i64* %31, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %31, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %32, align 8
  %131 = load i64, i64* %33, align 8
  %132 = load i64, i64* %34, align 8
  %133 = load i64, i64* %35, align 8
  %134 = call i32 @VSHF_B2_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i32, i32* %37, align 4
  store i32 %135, i32* %27, align 4
  %136 = load i64, i64* %34, align 8
  %137 = load i64, i64* %35, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* %27, align 4
  %142 = call i32 @DPADD_SB2_SH(i64 %136, i64 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %24, align 4
  %144 = call i32 @__msa_copy_u_d(i32 %143, i32 0)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %25, align 4
  %146 = call i32 @__msa_copy_u_d(i32 %145, i32 0)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %26, align 4
  %148 = call i32 @__msa_copy_u_d(i32 %147, i32 0)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %27, align 4
  %150 = call i32 @__msa_copy_u_d(i32 %149, i32 0)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %24, align 4
  %152 = call i32 @__msa_copy_u_w(i32 %151, i32 2)
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %25, align 4
  %154 = call i32 @__msa_copy_u_w(i32 %153, i32 2)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %26, align 4
  %156 = call i32 @__msa_copy_u_w(i32 %155, i32 2)
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* %27, align 4
  %158 = call i32 @__msa_copy_u_w(i32 %157, i32 2)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @SD(i32 %159, i32* %160)
  %162 = load i32, i32* %18, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = call i32 @SW(i32 %162, i32* %164)
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %9, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @SD(i32 %170, i32* %171)
  %173 = load i32, i32* %19, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = call i32 @SW(i32 %173, i32* %175)
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %9, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @SD(i32 %181, i32* %182)
  %184 = load i32, i32* %20, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = call i32 @SW(i32 %184, i32* %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %9, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @SD(i32 %192, i32* %193)
  %195 = load i32, i32* %21, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = call i32 @SW(i32 %195, i32* %197)
  %199 = load i32, i32* %10, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %9, align 8
  br label %53

203:                                              ; preds = %53
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

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
