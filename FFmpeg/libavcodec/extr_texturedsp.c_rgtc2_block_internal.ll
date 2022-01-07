; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_rgtc2_block_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_rgtc2_block_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @rgtc2_block_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgtc2_block_internal(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i32], align 16
  %10 = alloca [64 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @rgtc1_block_internal(i32* %18, i32 16, i32* %19, i32 %20, i32 0, i32 0, i32 4)
  %22 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @rgtc1_block_internal(i32* %22, i32 16, i32* %24, i32 %25, i32 0, i32 0, i32 4)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %92, %4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %95

30:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %88, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %91

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 4
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %47, 16
  %49 = add nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 4
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %55, 16
  %57 = add nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  store i32 127, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 65025, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sub nsw i32 %64, %67
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %34
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @sqrtf(i32 %73)
  %75 = call i32 @lrint(i32 %74)
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %72, %34
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 255, i32* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %31

91:                                               ; preds = %31
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %27

95:                                               ; preds = %27
  ret void
}

declare dso_local i32 @rgtc1_block_internal(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @lrint(i32) #1

declare dso_local i32 @sqrtf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
