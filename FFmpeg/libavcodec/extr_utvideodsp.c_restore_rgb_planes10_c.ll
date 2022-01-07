; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodsp.c_restore_rgb_planes10_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodsp.c_restore_rgb_planes10_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32)* @restore_rgb_planes10_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_rgb_planes10_c(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %81, %8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %22
  store i32 0, i32* %20, align 4
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i32, i32* %20, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %20, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 512
  %51 = and i32 %50, 1023
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 %58, 512
  %60 = and i32 %59, 1023
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %31
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  br label %27

68:                                               ; preds = %27
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %11, align 8
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %21, align 4
  br label %22

84:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
