; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_globalGetButtonState.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_globalGetButtonState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buttonpacket = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalGetButtonState(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = srem i32 %11, 7
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 7
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %40 [
    i32 130, label %16
    i32 131, label %21
    i32 128, label %27
    i32 129, label %33
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 14
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 7
  store i32 %26, i32* %8, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 7
  %30 = mul nsw i32 %29, 14
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 7
  %36 = mul nsw i32 %35, 14
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 7
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %2, %33, %27, %21, %16
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %44, 8
  %46 = sub nsw i32 %43, %45
  %47 = sub nsw i32 7, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** @buttonpacket, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 4, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %60

59:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
