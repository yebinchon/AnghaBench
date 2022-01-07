; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_tongue_outline.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_tongue_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @tongue_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tongue_outline(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %27, align 4
  store i32 360, i32* %14, align 4
  br label %29

29:                                               ; preds = %57, %6
  %30 = load i32, i32* %14, align 4
  %31 = icmp sle i32 %30, 830
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @monochrome_color_location(i32 %33, i32 %34, i32 %35, i32 %36, i32* %19, i32* %20)
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 360
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %50 = call i32 @draw_line(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32* %49)
  br label %54

51:                                               ; preds = %32
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %20, align 4
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %70 = call i32 @draw_line(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32* %69)
  ret void
}

declare dso_local i32 @monochrome_color_location(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @draw_line(i32*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
