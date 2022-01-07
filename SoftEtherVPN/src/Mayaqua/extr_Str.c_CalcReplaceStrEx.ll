; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_CalcReplaceStrEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_CalcReplaceStrEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CalcReplaceStrEx(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %4
  store i64 0, i64* %5, align 8
  br label %63

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @StrLen(i8* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @StrLen(i8* %27)
  store i64 %28, i64* %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @StrLen(i8* %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %5, align 8
  br label %63

36:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %36, %47
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @SearchStrEx(i8* %38, i8* %39, i64 %40, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @INFINITE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %53

47:                                               ; preds = %37
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %37

53:                                               ; preds = %46
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %11, align 8
  %57 = mul nsw i64 %55, %56
  %58 = add nsw i64 %54, %57
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %11, align 8
  %61 = mul nsw i64 %59, %60
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %53, %34, %23
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i64 @SearchStrEx(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
