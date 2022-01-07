; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addColorBits.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addColorBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32)* @addColorBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addColorBits(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = udiv i32 8, %11
  %13 = zext i32 %12 to i64
  %14 = urem i64 %10, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = udiv i32 8, %23
  %25 = load i32, i32* %9, align 4
  %26 = sub i32 %24, %25
  %27 = sub i32 %26, 1
  %28 = mul i32 %22, %27
  %29 = shl i32 %21, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  %40 = udiv i64 %39, 8
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  store i8 %34, i8* %41, align 1
  br label %55

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = udiv i64 %48, 8
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %43
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  br label %55

55:                                               ; preds = %42, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
