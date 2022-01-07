; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_put_alpha_diff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_put_alpha_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @put_alpha_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_alpha_diff(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 8
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 4, i32 7
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 1, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @av_mod_uintp2(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %31, %4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45, %41, %36
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @put_bits(i32* %49, i32 1, i32 1)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @put_bits(i32* %51, i32 %52, i32 %53)
  br label %70

55:                                               ; preds = %45
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @put_bits(i32* %56, i32 1, i32 0)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @FFABS(i32 %61)
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @put_bits(i32* %58, i32 %60, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @put_bits(i32* %65, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %55, %48
  ret void
}

declare dso_local i32 @av_mod_uintp2(i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
