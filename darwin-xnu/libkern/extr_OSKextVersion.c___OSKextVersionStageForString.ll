; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_OSKextVersion.c___OSKextVersionStageForString.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_OSKextVersion.c___OSKextVersionStageForString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kOSKextVersionStageInvalid = common dso_local global i32 0, align 4
@kOSKextVersionStageRelease = common dso_local global i32 0, align 4
@kOSKextVersionStageDevelopment = common dso_local global i32 0, align 4
@kOSKextVersionStageAlpha = common dso_local global i32 0, align 4
@kOSKextVersionStageBeta = common dso_local global i32 0, align 4
@kOSKextVersionStageCandidate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @__OSKextVersionStageForString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__OSKextVersionStageForString(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @kOSKextVersionStageInvalid, align 4
  store i32 %12, i32* %2, align 4
  br label %105

13:                                               ; preds = %7
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @__vers_isspace(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %13
  %28 = load i32, i32* @kOSKextVersionStageRelease, align 4
  store i32 %28, i32* %2, align 4
  br label %105

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %100 [
    i32 100, label %34
    i32 97, label %46
    i32 98, label %58
    i32 102, label %70
  ]

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @__vers_isdigit(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8**, i8*** %3, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @kOSKextVersionStageDevelopment, align 4
  store i32 %44, i32* %2, align 4
  br label %105

45:                                               ; preds = %34
  br label %102

46:                                               ; preds = %29
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @__vers_isdigit(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8**, i8*** %3, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @kOSKextVersionStageAlpha, align 4
  store i32 %56, i32* %2, align 4
  br label %105

57:                                               ; preds = %46
  br label %102

58:                                               ; preds = %29
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @__vers_isdigit(i8 signext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8**, i8*** %3, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @kOSKextVersionStageBeta, align 4
  store i32 %68, i32* %2, align 4
  br label %105

69:                                               ; preds = %58
  br label %102

70:                                               ; preds = %29
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @__vers_isdigit(i8 signext %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8**, i8*** %3, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @kOSKextVersionStageCandidate, align 4
  store i32 %80, i32* %2, align 4
  br label %105

81:                                               ; preds = %70
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 99
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @__vers_isdigit(i8 signext %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8**, i8*** %3, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @kOSKextVersionStageCandidate, align 4
  store i32 %97, i32* %2, align 4
  br label %105

98:                                               ; preds = %87, %81
  %99 = load i32, i32* @kOSKextVersionStageInvalid, align 4
  store i32 %99, i32* %2, align 4
  br label %105

100:                                              ; preds = %29
  %101 = load i32, i32* @kOSKextVersionStageInvalid, align 4
  store i32 %101, i32* %2, align 4
  br label %105

102:                                              ; preds = %69, %57, %45
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* @kOSKextVersionStageInvalid, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %100, %98, %93, %76, %64, %52, %40, %27, %11
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @__vers_isspace(i8 signext) #1

declare dso_local i32 @__vers_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
