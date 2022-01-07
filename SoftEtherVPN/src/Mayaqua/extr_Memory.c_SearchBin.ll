; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_SearchBin.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_SearchBin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SearchBin(i8* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* %9, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %25, %22, %19, %16, %5
  %36 = load i64, i64* @INFINITE, align 8
  store i64 %36, i64* %6, align 8
  br label %64

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %59, %37
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub nsw i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @Cmp(i32* %51, i8* %52, i64 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %6, align 8
  br label %64

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %39

62:                                               ; preds = %39
  %63 = load i64, i64* @INFINITE, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %56, %35
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i64 @Cmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
