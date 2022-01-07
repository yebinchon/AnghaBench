; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_idct4col_put.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_idct4col_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CN_SHIFT = common dso_local global i32 0, align 4
@C_SHIFT = common dso_local global i32 0, align 4
@C1 = common dso_local global i32 0, align 4
@C2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @idct4col_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct4col_put(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
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
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 32
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 48
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @CN_SHIFT, align 4
  %31 = sub nsw i32 %30, 1
  %32 = shl i32 1, %31
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* @C_SHIFT, align 4
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 1, %35
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @CN_SHIFT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = shl i32 1, %42
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* @C_SHIFT, align 4
  %46 = sub nsw i32 %45, 1
  %47 = shl i32 1, %46
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @C1, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @C2, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @C2, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @C1, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @C_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = call i32 @av_clip_uint8(i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* @C_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = call i32 @av_clip_uint8(i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* @C_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = call i32 @av_clip_uint8(i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* @C_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = call i32 @av_clip_uint8(i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
