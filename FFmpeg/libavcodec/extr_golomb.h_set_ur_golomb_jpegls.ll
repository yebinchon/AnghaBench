; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_set_ur_golomb_jpegls.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_set_ur_golomb_jpegls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @set_ur_golomb_jpegls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ur_golomb_jpegls(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @av_assert2(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %16, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 31
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @put_bits(i32* %28, i32 31, i32 0)
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 %30, 31
  store i32 %31, i32* %11, align 4
  br label %24

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @put_bits(i32* %33, i32 %34, i32 1)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @put_sbits(i32* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  br label %62

44:                                               ; preds = %5
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 31
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @put_bits(i32* %49, i32 31, i32 0)
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 31
  store i32 %52, i32* %9, align 4
  br label %45

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @put_bits(i32* %54, i32 %55, i32 1)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @put_bits(i32* %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
