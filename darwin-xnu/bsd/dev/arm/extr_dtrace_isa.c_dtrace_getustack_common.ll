; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getustack_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getustack_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETURN_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64, i64)* @dtrace_getustack_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_getustack_common(i64* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ true, %4 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  br label %19

19:                                               ; preds = %41, %15
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i64*, i64** %5, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %48

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %48

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @RETURN_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @dtrace_fuword32(i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @dtrace_fuword32(i64 %46)
  store i64 %47, i64* %8, align 8
  br label %19

48:                                               ; preds = %40, %35, %19
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dtrace_fuword32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
