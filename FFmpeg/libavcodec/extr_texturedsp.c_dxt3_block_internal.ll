; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_dxt3_block_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_dxt3_block_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @dxt3_block_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt3_block_internal(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 8
  %19 = call i8* @AV_RL16(i32* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 10
  %23 = call i8* @AV_RL16(i32* %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 12
  %27 = call i32 @AV_RL32(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @extract_color(i32* %28, i32 %29, i32 %30, i32 1, i32 0)
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %96, %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %99

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i8* @AV_RL16(i32* %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 0
  %45 = and i32 %44, 15
  %46 = mul nsw i32 %45, 17
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %13, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 15
  %51 = mul nsw i32 %50, 17
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %13, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 15
  %56 = mul nsw i32 %55, 17
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 15
  %61 = mul nsw i32 %60, 17
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %88, %35
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = shl i32 %76, 24
  %78 = or i32 %75, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @AV_WL32(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %63

91:                                               ; preds = %63
  %92 = load i32, i32* %5, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %32

99:                                               ; preds = %32
  ret void
}

declare dso_local i8* @AV_RL16(i32*) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @extract_color(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
