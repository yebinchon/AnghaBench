; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_Json_ToInt64Ex.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_Json_ToInt64Ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Json_ToInt64Ex(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8**, i8*** %6, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8**, i8*** %6, align 8
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  store i32 0, i32* %4, align 4
  br label %69

24:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  %30 = load i8**, i8*** %6, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i8, i8* %10, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %67

42:                                               ; preds = %37
  %43 = load i8, i8* %10, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 48, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i8, i8* %10, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 57
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 10
  %53 = load i8, i8* %10, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %50
  br label %63

62:                                               ; preds = %46, %42
  br label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %25

67:                                               ; preds = %62, %41
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %23
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
