; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_pixel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32)* @blend_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_pixel(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %29 = load i32, i32* %16, align 4
  %30 = sub nsw i32 3, %29
  store i32 %30, i32* %25, align 4
  %31 = load i32, i32* %16, align 4
  %32 = ashr i32 7, %31
  store i32 %32, i32* %26, align 4
  %33 = load i32, i32* %16, align 4
  %34 = shl i32 1, %33
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %27, align 4
  %37 = load i32, i32* %27, align 4
  %38 = udiv i32 255, %37
  store i32 %38, i32* %28, align 4
  store i32 0, i32* %23, align 4
  br label %39

39:                                               ; preds = %80, %10
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %45

45:                                               ; preds = %72, %43
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %25, align 4
  %53 = lshr i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %21, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %26, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 %60, %61
  %63 = lshr i32 %56, %62
  %64 = load i32, i32* %27, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %28, align 4
  %67 = mul i32 %65, %66
  %68 = load i32, i32* %24, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %24, align 4
  %70 = load i32, i32* %21, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %22, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %22, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %14, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %23, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %23, align 4
  br label %39

83:                                               ; preds = %39
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %19, align 4
  %86 = lshr i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = mul i32 %86, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub i32 16843009, %89
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %90, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = mul i32 %94, %95
  %97 = add i32 %93, %96
  %98 = lshr i32 %97, 24
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
