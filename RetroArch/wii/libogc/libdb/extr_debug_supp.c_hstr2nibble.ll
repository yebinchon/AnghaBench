; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_hstr2nibble.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_hstr2nibble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @hstr2nibble(i8* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %10, 48
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sle i32 %14, 57
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 48
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %5, align 8
  store i8 %20, i8* %21, align 1
  store i8 1, i8* %3, align 1
  br label %53

22:                                               ; preds = %12, %2
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 97
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 102
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = sub nsw i32 %32, 97
  %34 = add nsw i32 %33, 10
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %5, align 8
  store i8 %35, i8* %36, align 1
  store i8 1, i8* %3, align 1
  br label %53

37:                                               ; preds = %26, %22
  %38 = load i8, i8* %6, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 65
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 70
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 65
  %49 = add nsw i32 %48, 10
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %5, align 8
  store i8 %50, i8* %51, align 1
  store i8 1, i8* %3, align 1
  br label %53

52:                                               ; preds = %41, %37
  store i8 0, i8* %3, align 1
  br label %53

53:                                               ; preds = %52, %45, %30, %16
  %54 = load i8, i8* %3, align 1
  ret i8 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
