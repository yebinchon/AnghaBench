; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34dsp.c_rv34_idct_add_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34dsp.c_rv34_idct_add_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @rv34_idct_add_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_idct_add_c(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @rv34_row_transform(i32* %13, i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @memset(i32* %16, i32 0, i32 64)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %122, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %125

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 0, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 8, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  %33 = mul nsw i32 13, %32
  %34 = add nsw i32 %33, 512
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 8, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %39, %44
  %46 = mul nsw i32 13, %45
  %47 = add nsw i32 %46, 512
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 4, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 7, %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 12, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 17, %58
  %60 = sub nsw i32 %53, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 4, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 17, %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 12, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 7, %71
  %73 = add nsw i32 %66, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = ashr i32 %79, 10
  %81 = add nsw i32 %76, %80
  %82 = call i32 @av_clip_uint8(i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %88, %89
  %91 = ashr i32 %90, 10
  %92 = add nsw i32 %87, %91
  %93 = call i32 @av_clip_uint8(i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = ashr i32 %101, 10
  %103 = add nsw i32 %98, %102
  %104 = call i32 @av_clip_uint8(i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = ashr i32 %112, 10
  %114 = add nsw i32 %109, %113
  %115 = call i32 @av_clip_uint8(i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %4, align 8
  br label %122

122:                                              ; preds = %21
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %18

125:                                              ; preds = %18
  ret void
}

declare dso_local i32 @rv34_row_transform(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
