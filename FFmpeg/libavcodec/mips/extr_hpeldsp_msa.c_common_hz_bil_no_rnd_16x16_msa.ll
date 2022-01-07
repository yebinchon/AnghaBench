; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hz_bil_no_rnd_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hz_bil_no_rnd_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @common_hz_bil_no_rnd_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_bil_no_rnd_16x16_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @LD_UB8(i32* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %24, align 4
  %47 = call i32 @LD_UB8(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 8, %48
  %50 = load i32*, i32** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @AVE_ST16x4_UB(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32* %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 4, %64
  %66 = load i32*, i32** %7, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @LD_UB4(i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @LD_UB4(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 4, %84
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %5, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @AVE_ST16x4_UB(i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32* %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 4, %100
  %102 = load i32*, i32** %7, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @LD_UB4(i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %24, align 4
  %119 = call i32 @LD_UB4(i32* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 4, %120
  %122 = load i32*, i32** %5, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @AVE_ST16x4_UB(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32* %133, i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = mul nsw i32 4, %136
  %138 = load i32*, i32** %7, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %7, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %24, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @AVE_ST16x4_UB(i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32* %149, i32 %150)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVE_ST16x4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
