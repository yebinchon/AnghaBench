; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_samples_per_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_samples_per_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @samples_per_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samples_per_packet(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %41 [
    i32 131, label %9
    i32 136, label %9
    i32 137, label %9
    i32 134, label %9
    i32 135, label %9
    i32 132, label %9
    i32 133, label %9
    i32 141, label %9
    i32 142, label %9
    i32 139, label %9
    i32 140, label %9
    i32 143, label %9
    i32 138, label %9
    i32 149, label %10
    i32 148, label %10
    i32 157, label %11
    i32 153, label %12
    i32 152, label %12
    i32 150, label %12
    i32 130, label %12
    i32 151, label %13
    i32 147, label %14
    i32 144, label %15
    i32 146, label %16
    i32 145, label %16
    i32 158, label %17
    i32 129, label %18
    i32 128, label %18
    i32 154, label %21
    i32 156, label %22
    i32 155, label %32
  ]

9:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 1, i32* %4, align 4
  br label %42

10:                                               ; preds = %3, %3
  store i32 6, i32* %4, align 4
  br label %42

11:                                               ; preds = %3
  store i32 64, i32* %4, align 4
  br label %42

12:                                               ; preds = %3, %3, %3, %3
  store i32 160, i32* %4, align 4
  br label %42

13:                                               ; preds = %3
  store i32 320, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  store i32 384, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  store i32 960, i32* %4, align 4
  br label %42

16:                                               ; preds = %3, %3
  store i32 1152, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  store i32 1536, i32* %4, align 4
  br label %42

18:                                               ; preds = %3, %3
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 2048, %19
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  store i32 4096, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 4, %24
  %26 = sub nsw i32 %23, %25
  %27 = mul nsw i32 %26, 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 4, %28
  %30 = sdiv i32 %27, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 7, %34
  %36 = sub nsw i32 %33, %35
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %32, %22, %21, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
