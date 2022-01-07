; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_valid_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_valid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @cs_valid_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_valid_range(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %31

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
