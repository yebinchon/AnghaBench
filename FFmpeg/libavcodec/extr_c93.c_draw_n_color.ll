; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_c93.c_draw_n_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_c93.c_draw_n_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32*, i32*, i32)* @draw_n_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_n_color(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %79, %8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %18, align 4
  %29 = ashr i32 %28, 1
  %30 = mul nsw i32 3, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %23
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load i32*, i32** %15, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %17, align 4
  %47 = ashr i32 %46, 1
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %41
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %64, i64 %70
  store i32 %63, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %16, align 4
  %74 = ashr i32 %73, %72
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %37

78:                                               ; preds = %37
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  br label %19

82:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
