; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_aggregate_llquantize_bucket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_aggregate_llquantize_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @dtrace_aggregate_llquantize_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_aggregate_llquantize_bucket(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %26, %5
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %16, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %16, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %92

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %38, %37
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %87, %36
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sdiv i32 %72, %73
  %75 = sdiv i32 %71, %74
  %76 = add nsw i32 %68, %75
  store i32 %76, i32* %6, align 4
  br label %92

77:                                               ; preds = %63
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %79, %80
  %82 = sub nsw i32 %78, %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %67, %33
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
