; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_put_alpha_diff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_put_alpha_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @put_alpha_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_alpha_diff(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 16, i32* %7, align 4
  store i32 7, i32* %8, align 4
  store i32 64, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @av_mod_uintp2(i32 %14, i32 16)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sge i32 %16, 65472
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %19, 65536
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, -64
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 64
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %24, %21
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @put_bits(i32* %31, i32 1, i32 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @put_bits(i32* %33, i32 16, i32 %34)
  br label %49

36:                                               ; preds = %27
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @put_bits(i32* %37, i32 1, i32 0)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @FFABS(i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @put_bits(i32* %39, i32 6, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @put_bits(i32* %44, i32 1, i32 %47)
  br label %49

49:                                               ; preds = %36, %30
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
