; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_intra_predict_mad_cow_dc_0lt_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_intra_predict_mad_cow_dc_0lt_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @intra_predict_mad_cow_dc_0lt_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intra_predict_mad_cow_dc_0lt_8x8_msa(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = call i32 @LD_UB(i32* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @__msa_hadd_u_h(i32 %24, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i64 @__msa_hadd_u_w(i32 %27, i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %17, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @__msa_copy_u_w(i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* %17, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @__msa_copy_u_w(i32 %34, i32 1)
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 4, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 5, %44
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = mul nsw i32 6, %53
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = mul nsw i32 7, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 2
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 4
  %77 = ashr i32 %76, 3
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 2
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 2
  %83 = ashr i32 %82, 2
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 %84, 16843009
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %86, 16843009
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 %88, 16843009
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 %90, 16843009
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 %92, 32
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = shl i32 %96, 32
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @SD4(i32 %100, i32 %101, i32 %102, i32 %103, i32* %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = mul nsw i32 4, %107
  %109 = load i32*, i32** %3, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %3, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @SD4(i32 %112, i32 %113, i32 %114, i32 %115, i32* %116, i32 %117)
  ret void
}

declare dso_local i32 @LD_UB(i32*) #1

declare dso_local i32 @__msa_hadd_u_h(i32, i32) #1

declare dso_local i64 @__msa_hadd_u_w(i32, i32) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
