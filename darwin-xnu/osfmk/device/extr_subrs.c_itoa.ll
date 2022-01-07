; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_subrs.c_itoa.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_subrs.c_itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @itoa(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [11 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %7, align 8
  store i8 48, i8* %12, align 1
  br label %40

14:                                               ; preds = %2
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %19, %14
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = srem i32 %20, 10
  %22 = add nsw i32 48, %21
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  store i8 %23, i8* %24, align 1
  %26 = load i32, i32* %3, align 4
  %27 = sdiv i32 %26, 10
  store i32 %27, i32* %3, align 4
  br label %16

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  br label %29

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 0, i8* %41, align 1
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
