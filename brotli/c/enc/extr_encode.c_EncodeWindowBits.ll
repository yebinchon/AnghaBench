; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_EncodeWindowBits.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_EncodeWindowBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32*, i32*)* @EncodeWindowBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EncodeWindowBits(i32 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 63
  %14 = shl i32 %13, 8
  %15 = or i32 %14, 17
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 14, i32* %17, align 4
  br label %50

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 1, i32* %23, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 17
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 7, i32* %29, align 4
  br label %48

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 17
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 17
  %36 = shl i32 %35, 1
  %37 = or i32 %36, 1
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 4, i32* %39, align 4
  br label %47

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 8
  %43 = shl i32 %42, 4
  %44 = or i32 %43, 1
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 7, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %49, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
