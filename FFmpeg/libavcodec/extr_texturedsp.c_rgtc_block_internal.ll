; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_rgtc_block_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_rgtc_block_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32, i32, i32)* @rgtc_block_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgtc_block_internal(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = call i32 @decompress_indices(i32* %21, i32* %23)
  store i32 0, i32* %17, align 4
  br label %25

25:                                               ; preds = %84, %7
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %87

28:                                               ; preds = %25
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %80, %28
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %83

32:                                               ; preds = %29
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %32
  %48 = load i32, i32* %19, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %49, i64 %59
  store i32 %48, i32* %60, align 4
  br label %79

61:                                               ; preds = %32
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @RGBA(i32 %62, i32 %63, i32 %64, i32 255)
  store i32 %65, i32* %20, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @AV_WL32(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %61, %47
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %29

83:                                               ; preds = %29
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %25

87:                                               ; preds = %25
  ret void
}

declare dso_local i32 @decompress_indices(i32*, i32*) #1

declare dso_local i32 @RGBA(i32, i32, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
