; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_line16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_line16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @blend_line16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_line16(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = mul i32 %25, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub i32 65537, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %33, %34
  %36 = load i32, i32* %14, align 4
  %37 = lshr i32 %35, %36
  store i32 %37, i32* %20, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @AV_RL16(i32* %38)
  store i32 %39, i32* %21, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %20, align 4
  %43 = sub i32 65537, %42
  %44 = mul i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %20, align 4
  %47 = mul i32 %45, %46
  %48 = add i32 %44, %47
  %49 = lshr i32 %48, 16
  %50 = call i32 @AV_WL16(i32* %40, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %9, align 8
  br label %55

55:                                               ; preds = %32, %8
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @AV_RL16(i32* %61)
  store i32 %62, i32* %22, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %18, align 4
  %66 = mul i32 %64, %65
  %67 = load i32, i32* %17, align 4
  %68 = add i32 %66, %67
  %69 = lshr i32 %68, 16
  %70 = call i32 @AV_WL16(i32* %63, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %9, align 8
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = lshr i32 %84, %85
  store i32 %86, i32* %23, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @AV_RL16(i32* %87)
  store i32 %88, i32* %24, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %23, align 4
  %92 = sub i32 65537, %91
  %93 = mul i32 %90, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %23, align 4
  %96 = mul i32 %94, %95
  %97 = add i32 %93, %96
  %98 = lshr i32 %97, 16
  %99 = call i32 @AV_WL16(i32* %89, i32 %98)
  br label %100

100:                                              ; preds = %81, %78
  ret void
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
