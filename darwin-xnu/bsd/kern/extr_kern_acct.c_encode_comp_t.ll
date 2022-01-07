; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_acct.c_encode_comp_t.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_acct.c_encode_comp_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AHZ = common dso_local global i32 0, align 4
@MAXFRACT = common dso_local global i32 0, align 4
@EXPSIZE = common dso_local global i32 0, align 4
@MANTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_comp_t(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @AHZ, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AHZ, align 4
  %12 = sdiv i32 1000000, %11
  %13 = sdiv i32 %10, %12
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %20, %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAXFRACT, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @EXPSIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = shl i32 1, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @EXPSIZE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @MAXFRACT, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @EXPSIZE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = ashr i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %34, %31
  %46 = load i32, i32* @MANTSIZE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
