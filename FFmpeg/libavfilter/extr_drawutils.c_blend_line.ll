; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @blend_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_line(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %22, %23
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub i32 16843009, %25
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul i32 %30, %31
  %33 = load i32, i32* %14, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %20, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %20, align 4
  %38 = sub i32 16843009, %37
  %39 = mul i32 %36, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %20, align 4
  %42 = mul i32 %40, %41
  %43 = add i32 %39, %42
  %44 = lshr i32 %43, 24
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %9, align 8
  br label %50

50:                                               ; preds = %29, %8
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %18, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* %17, align 4
  %61 = add i32 %59, %60
  %62 = lshr i32 %61, 24
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = lshr i32 %77, %78
  store i32 %79, i32* %21, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %21, align 4
  %83 = sub i32 16843009, %82
  %84 = mul i32 %81, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %21, align 4
  %87 = mul i32 %85, %86
  %88 = add i32 %84, %87
  %89 = lshr i32 %88, 24
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %74, %71
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
