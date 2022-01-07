; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__resample_row_hv_2_simd.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__resample_row_hv_2_simd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i32)* @stbi__resample_row_hv_2_simd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__resample_row_hv_2_simd(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 3, %20
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = add nsw i32 %25, 2
  %27 = call i32 @stbi__div4(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %6, align 8
  br label %150

33:                                               ; preds = %5
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 3, %36
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %63, %33
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %45, -8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 3, %54
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %12, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 3, %72
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %73, %78
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 3, %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %81, %82
  %84 = add nsw i32 %83, 8
  %85 = call i32 @stbi__div16(i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %134, %66
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 3, %103
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %104, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = mul nsw i32 3, %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %114, 8
  %116 = call i32 @stbi__div16(i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 %118, 2
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 3, %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %124, %125
  %127 = add nsw i32 %126, 8
  %128 = call i32 @stbi__div16(i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %97
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %93

137:                                              ; preds = %93
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 2
  %140 = call i32 @stbi__div4(i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %142, 2
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @STBI_NOTUSED(i32 %147)
  %149 = load i32*, i32** %7, align 8
  store i32* %149, i32** %6, align 8
  br label %150

150:                                              ; preds = %137, %17
  %151 = load i32*, i32** %6, align 8
  ret i32* %151
}

declare dso_local i32 @stbi__div4(i32) #1

declare dso_local i32 @stbi__div16(i32) #1

declare dso_local i32 @STBI_NOTUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
