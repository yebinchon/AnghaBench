; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_png_row_from_pass_row.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_png_row_from_pass_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @png_row_from_pass_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_row_from_pass_row(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 0, label %7
    i32 1, label %10
    i32 2, label %13
    i32 3, label %17
    i32 4, label %20
    i32 5, label %24
    i32 6, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 8
  store i32 %9, i32* %3, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 8
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 8
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31
  store i32 255, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %27, %24, %20, %17, %13, %10, %7
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
