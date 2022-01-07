; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_psnr.c_log16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_psnr.c_log16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp16_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @log16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 65536
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = sdiv i64 4294967296, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @log16(i32 %13)
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 16
  store i32 %18, i32* %3, align 4
  store i32 20, i32* %4, align 4
  br label %19

19:                                               ; preds = %52, %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i32*, i32** @exp16_table, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 16
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %52

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %38, %39
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = srem i32 %42, %43
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %6, align 4
  %50 = sdiv i32 %48, %49
  %51 = add nsw i32 %41, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %33, %32
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
