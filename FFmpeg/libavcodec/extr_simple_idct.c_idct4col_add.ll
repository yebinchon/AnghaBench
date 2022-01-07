; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_idct4col_add.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_idct4col_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C3 = common dso_local global i32 0, align 4
@C_SHIFT = common dso_local global i32 0, align 4
@C1 = common dso_local global i32 0, align 4
@C2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32*)* @idct4col_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct4col_add(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 16
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @C3, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* @C_SHIFT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 1, %33
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @C3, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* @C_SHIFT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = shl i32 1, %42
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @C1, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @C2, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @C2, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @C1, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %10, align 4
  %59 = load i64*, i64** %4, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @C_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %61, %67
  %69 = call i64 @av_clip_uint8(i64 %68)
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i64*, i64** %4, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %4, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* @C_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %78, %84
  %86 = call i64 @av_clip_uint8(i64 %85)
  %87 = load i64*, i64** %4, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i64*, i64** %4, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64* %92, i64** %4, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @C_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %95, %101
  %103 = call i64 @av_clip_uint8(i64 %102)
  %104 = load i64*, i64** %4, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i64*, i64** %4, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64* %109, i64** %4, align 8
  %110 = load i64*, i64** %4, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* @C_SHIFT, align 4
  %117 = ashr i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %112, %118
  %120 = call i64 @av_clip_uint8(i64 %119)
  %121 = load i64*, i64** %4, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  store i64 %120, i64* %122, align 8
  ret void
}

declare dso_local i64 @av_clip_uint8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
