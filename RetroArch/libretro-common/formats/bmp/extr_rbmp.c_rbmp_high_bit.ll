; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp.c_rbmp_high_bit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp.c_rbmp_high_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rbmp_high_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbmp_high_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp uge i32 %9, 65536
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 16
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = lshr i32 %14, 16
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i32, i32* %3, align 4
  %18 = icmp uge i32 %17, 256
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = lshr i32 %22, 8
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %3, align 4
  %26 = icmp uge i32 %25, 16
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = lshr i32 %30, 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %3, align 4
  %34 = icmp uge i32 %33, 4
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = lshr i32 %38, 2
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %3, align 4
  %42 = icmp uge i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %7
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
