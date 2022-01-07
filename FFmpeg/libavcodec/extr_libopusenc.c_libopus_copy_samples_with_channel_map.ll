; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_copy_samples_with_channel_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_copy_samples_with_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)* @libopus_copy_samples_with_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libopus_copy_samples_with_channel_map(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %59, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %55, %21
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %13, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %30, %31
  %33 = mul nsw i32 %27, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %38, %43
  %45 = mul nsw i32 %35, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %16, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @memcpy(i32* %49, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %26
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %22

58:                                               ; preds = %22
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %17

62:                                               ; preds = %17
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
