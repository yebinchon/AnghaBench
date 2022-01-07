; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_erosion16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_erosion16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32**, i32, i32)* @erosion16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erosion16(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %71, %7
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %16, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 @AV_RN16A(i32* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @FFMAX(i32 %34, i32 0)
  store i32 %35, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %62, %25
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %17, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i32, i32* %18, align 4
  %47 = load i32**, i32*** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = call i32 @AV_RN16A(i32* %55)
  %57 = call i32 @FFMIN(i32 %46, i32 %56)
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %45, %39
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @FFMAX(i32 %59, i32 %60)
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load i32, i32* %18, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %21

74:                                               ; preds = %21
  ret void
}

declare dso_local i32 @AV_RN16A(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
