; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fft_template.c_is_second_half_of_fft32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fft_template.c_is_second_half_of_fft32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_second_half_of_fft32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_second_half_of_fft32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 32
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 16
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 2
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 2
  %21 = call i32 @is_second_half_of_fft32(i32 %18, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 3, %24
  %26 = sdiv i32 %25, 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 %29, %31
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %33, 4
  %35 = call i32 @is_second_half_of_fft32(i32 %32, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 3, %38
  %40 = sdiv i32 %39, 4
  %41 = sub nsw i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %42, 4
  %44 = call i32 @is_second_half_of_fft32(i32 %41, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %28, %17, %8
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
