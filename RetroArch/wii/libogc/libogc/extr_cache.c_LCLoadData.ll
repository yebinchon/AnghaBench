; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_cache.c_LCLoadData.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_cache.c_LCLoadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LCLoadData(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 31
  %17 = ashr i32 %16, 5
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 127
  %20 = ashr i32 %19, 7
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %32, %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @LCLoadBlocks(i8* %28, i8* %29, i32 %30)
  store i32 0, i32* %8, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @LCLoadBlocks(i8* %33, i8* %34, i32 0)
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 128
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr i8, i8* %38, i64 4096
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr i8, i8* %40, i64 4096
  store i8* %41, i8** %6, align 8
  br label %21

42:                                               ; preds = %27, %21
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @LCLoadBlocks(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
