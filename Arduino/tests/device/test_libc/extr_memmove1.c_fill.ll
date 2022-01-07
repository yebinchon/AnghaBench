; ModuleID = '/home/carl/AnghaBench/Arduino/tests/device/test_libc/extr_memmove1.c_fill.c'
source_filename = "/home/carl/AnghaBench/Arduino/tests/device/test_libc/extr_memmove1.c_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @MAX, align 4
  %5 = mul nsw i32 %4, 3
  %6 = zext i32 %5 to i64
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @MAX, align 4
  %10 = mul nsw i32 %9, 3
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = add i64 10, %14
  %16 = load i32, i32* @MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = urem i64 %15, %17
  %19 = trunc i64 %18 to i8
  %20 = load i8*, i8** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  br label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %7

26:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
