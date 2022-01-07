; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_compare_with_bit_prefix.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_compare_with_bit_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @necp_buffer_compare_with_bit_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_buffer_compare_with_bit_prefix(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11, %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 8
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %24, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 8
  store i32 %35, i32* %7, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 8, %40
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = xor i32 %43, -1
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %46, %47
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %54, %31, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
