; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_aggregate_quantize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_aggregate_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64)* @dtrace_aggregate_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_aggregate_quantize(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @DTRACE_QUANTIZE_BUCKETVAL(i32 %21)
  %23 = icmp sle i64 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %25
  store i64 %31, i64* %29, align 8
  br label %73

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %15

36:                                               ; preds = %15
  br label %71

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %59, %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @DTRACE_QUANTIZE_BUCKETVAL(i32 %46)
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = load i64*, i64** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %50
  store i64 %57, i64* %55, align 8
  br label %73

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load i64, i64* %6, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %63
  store i64 %70, i64* %68, align 8
  br label %73

71:                                               ; preds = %36
  %72 = call i32 @ASSERT(i32 0)
  br label %73

73:                                               ; preds = %71, %62, %49, %24
  ret void
}

declare dso_local i64 @DTRACE_QUANTIZE_BUCKETVAL(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
