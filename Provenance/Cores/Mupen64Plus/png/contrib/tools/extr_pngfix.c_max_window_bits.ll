; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_max_window_bits.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_max_window_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @max_window_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_window_bits(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 15, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 16384
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 15, i32* %3, align 4
  br label %42

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 8192
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 14, i32* %3, align 4
  br label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 4096
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 13, i32* %3, align 4
  br label %42

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 2048
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 12, i32* %3, align 4
  br label %42

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 1024
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 11, i32* %3, align 4
  br label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 512
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 10, i32* %3, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 256
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 9, i32* %3, align 4
  br label %42

41:                                               ; preds = %37
  store i32 8, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %36, %32, %28, %24, %20, %16, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
