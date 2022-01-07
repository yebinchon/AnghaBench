; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_mpegvideo_msa.c_h263_dct_unquantize_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_mpegvideo_msa.c_h263_dct_unquantize_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @h263_dct_unquantize_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263_dct_unquantize_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @__msa_fill_h(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @__msa_fill_h(i32 %25)
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %69, %5
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 3
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %27
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @LD_SH(i32* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @__msa_clti_s_h(i32 %38, i32 0)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @__msa_ceqi_h(i32 %40, i32 0)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %16, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i64 @__msa_bmnz_v(i32 %51, i32 %52, i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %21, align 4
  %59 = call i64 @__msa_bmnz_v(i32 %56, i32 %57, i32 %58)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @ST_SH(i32 %61, i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  store i32* %68, i32** %11, align 8
  br label %69

69:                                               ; preds = %32
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %27

72:                                               ; preds = %27
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 3
  %75 = mul nsw i32 %74, 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %112, %72
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %12, align 4
  br label %105

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %82
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %78

115:                                              ; preds = %78
  ret void
}

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @__msa_clti_s_h(i32, i32) #1

declare dso_local i32 @__msa_ceqi_h(i32, i32) #1

declare dso_local i64 @__msa_bmnz_v(i32, i32, i32) #1

declare dso_local i32 @ST_SH(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
