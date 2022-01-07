; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_argb8888_rgba4444.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_argb8888_rgba4444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_argb8888_rgba4444(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %15, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %86, %6
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %82, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 15
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %17, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 15
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %17, align 4
  %48 = and i32 %47, 15
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %17, align 4
  %50 = ashr i32 %49, 24
  %51 = and i32 %50, 15
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %18, align 4
  %53 = ashr i32 %52, 4
  %54 = load i32, i32* %18, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = ashr i32 %56, 4
  %58 = load i32, i32* %19, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = ashr i32 %60, 4
  %62 = load i32, i32* %20, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %21, align 4
  %65 = ashr i32 %64, 4
  %66 = load i32, i32* %21, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %18, align 4
  %69 = shl i32 %68, 12
  %70 = load i32, i32* %19, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = load i32, i32* %20, align 4
  %74 = shl i32 %73, 4
  %75 = or i32 %72, %74
  %76 = load i32, i32* %21, align 4
  %77 = or i32 %75, %76
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %35
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %31

85:                                               ; preds = %31
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 2
  %91 = load i32*, i32** %16, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %16, align 8
  %94 = load i32, i32* %12, align 4
  %95 = ashr i32 %94, 1
  %96 = load i32*, i32** %15, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %15, align 8
  br label %26

99:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
