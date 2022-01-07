; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_bits_of.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_bits_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bits_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bits_of(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, -65536
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = add i32 %8, 16
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 16
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 8
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 240
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 12
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 2
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = ashr i32 %37, 2
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
