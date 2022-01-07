; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_device_tree.c_DTLookupEntry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_device_tree.c_DTLookupEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTInitialized = common dso_local global i32 0, align 4
@kError = common dso_local global i32 0, align 4
@DTRootNode = common dso_local global i32* null, align 8
@kDTPathNameSeparator = common dso_local global i8 0, align 1
@kSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DTLookupEntry(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32, i32* @DTInitialized, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @kError, align 4
  store i32 %14, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32*, i32** @DTRootNode, align 8
  store i32* %19, i32** %9, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @kDTPathNameSeparator, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32*, i32** %9, align 8
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* @kSuccess, align 4
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i8*, i8** %10, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = call i8* @GetNextComponent(i8* %44, i64* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = load i32**, i32*** %7, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* @kSuccess, align 4
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %50
  br label %67

60:                                               ; preds = %43
  %61 = load i32*, i32** %9, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = call i32* @FindChild(i32* %61, i64* %62)
  store i32* %63, i32** %9, align 8
  br label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %43, label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* @kError, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %55, %37, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @GetNextComponent(i8*, i64*) #1

declare dso_local i32* @FindChild(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
