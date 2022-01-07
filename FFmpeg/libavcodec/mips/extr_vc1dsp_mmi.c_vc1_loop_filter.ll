; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vc1dsp_mmi.c_vc1_loop_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vc1dsp_mmi.c_vc1_loop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @vc1_loop_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_loop_filter(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %59, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @vc1_filter_line(i32* %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %17
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 0, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @vc1_filter_line(i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @vc1_filter_line(i32* %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 3, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @vc1_filter_line(i32* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %28, %17
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 4
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %11, align 4
  br label %13

62:                                               ; preds = %13
  ret void
}

declare dso_local i32 @vc1_filter_line(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
