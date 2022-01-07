; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_PicoCartAlloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_PicoCartAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rom_alloc_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @PicoCartAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PicoCartAlloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %16, %10
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %12

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* @rom_alloc_size, align 4
  %30 = load i32, i32* @rom_alloc_size, align 4
  %31 = icmp slt i32 %30, 65536
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 65536, i32* @rom_alloc_size, align 4
  br label %33

33:                                               ; preds = %32, %27
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 4, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 524287
  %42 = and i32 %41, -524288
  store i32 %42, i32* @rom_alloc_size, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* @rom_alloc_size, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @rom_alloc_size, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* @rom_alloc_size, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* @rom_alloc_size, align 4
  %53 = call i8* @plat_mmap(i32 33554432, i32 %52, i32 0, i32 0)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  ret i8* %54
}

declare dso_local i8* @plat_mmap(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
