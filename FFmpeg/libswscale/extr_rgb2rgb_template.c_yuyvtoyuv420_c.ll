; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_yuyvtoyuv420_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_yuyvtoyuv420_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)* @yuyvtoyuv420_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuyvtoyuv420_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @AV_CEIL_RSHIFT(i32 %21, i32 1)
  store i32 %22, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %23

23:                                               ; preds = %63, %9
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @extract_even_c(i32* %28, i32* %29, i32 %30)
  %32 = load i32, i32* %19, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %18, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @extract_odd2avg_c(i32* %40, i32* %41, i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %17, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %11, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %35, %27
  %55 = load i32, i32* %18, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %13, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %10, align 8
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %23

66:                                               ; preds = %23
  ret void
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @extract_even_c(i32*, i32*, i32) #1

declare dso_local i32 @extract_odd2avg_c(i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
