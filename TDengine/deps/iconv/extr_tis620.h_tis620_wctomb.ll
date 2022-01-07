; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_tis620.h_tis620_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_tis620.h_tis620_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @tis620_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tis620_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %7, align 8
  store i8 %14, i8* %15, align 1
  store i32 1, i32* %5, align 4
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 3585
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 3675
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 3643
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 3646
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 3424
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %7, align 8
  store i8 %31, i8* %32, align 1
  store i32 1, i32* %5, align 4
  br label %36

33:                                               ; preds = %25, %19, %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @RET_ILUNI, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %28, %12
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
