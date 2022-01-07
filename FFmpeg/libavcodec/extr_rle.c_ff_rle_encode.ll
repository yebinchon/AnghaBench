; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rle.c_ff_rle_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rle.c_ff_rle_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rle_encode(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i32*, i32** %11, align 8
  store i32* %23, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %24

24:                                               ; preds = %110, %9
  %25 = load i32, i32* %21, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %114

28:                                               ; preds = %24
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %21, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @ff_rle_count_pixels(i32* %29, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %20, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %64

36:                                               ; preds = %28
  %37 = load i32*, i32** %22, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = icmp ugt i32* %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 -1, i32* %10, align 4
  br label %122

48:                                               ; preds = %36
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %17, align 4
  %51 = xor i32 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32*, i32** %22, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %22, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32*, i32** %22, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @memcpy(i32* %56, i32* %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %22, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %22, align 8
  br label %103

64:                                               ; preds = %28
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %21, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @ff_rle_count_pixels(i32* %65, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %20, align 4
  %71 = load i32*, i32** %22, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %20, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = icmp uge i32* %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  store i32 -1, i32* %10, align 4
  br label %122

83:                                               ; preds = %64
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %19, align 4
  %86 = xor i32 %84, %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32*, i32** %22, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %22, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %22, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %20, align 4
  %95 = mul nsw i32 %93, %94
  %96 = call i32 @memcpy(i32* %91, i32* %92, i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %20, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32*, i32** %22, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %22, align 8
  br label %103

103:                                              ; preds = %83, %48
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32*, i32** %13, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %13, align 8
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %21, align 4
  br label %24

114:                                              ; preds = %24
  %115 = load i32*, i32** %22, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %114, %82, %47
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @ff_rle_count_pixels(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
