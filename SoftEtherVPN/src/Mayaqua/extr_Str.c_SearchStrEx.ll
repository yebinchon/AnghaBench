; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_SearchStrEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_SearchStrEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SearchStrEx(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %4
  %22 = load i64, i64* @INFINITE, align 8
  store i64 %22, i64* %5, align 8
  br label %110

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @StrLen(i8* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @INFINITE, align 8
  store i64 %30, i64* %5, align 8
  br label %110

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @StrLen(i8* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @INFINITE, align 8
  store i64 %37, i64* %5, align 8
  br label %110

38:                                               ; preds = %31
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @INFINITE, align 8
  store i64 %45, i64* %5, align 8
  br label %110

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %14, align 8
  br label %73

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i8* @Malloc(i64 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @StrCpy(i8* %56, i64 %58, i8* %59)
  %61 = load i64, i64* %11, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i8* @Malloc(i64 %62)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @StrCpy(i8* %64, i64 %66, i8* %67)
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @StrUpper(i8* %69)
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @StrUpper(i8* %71)
  br label %73

73:                                               ; preds = %52, %49
  store i32 0, i32* %15, align 4
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %92, %73
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %77, %78
  %80 = add nsw i64 %79, 1
  %81 = icmp slt i64 %76, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i8*, i8** %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @strncmp(i8* %85, i8* %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  store i32 1, i32* %15, align 4
  br label %95

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %75

95:                                               ; preds = %90, %75
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @Free(i8* %99)
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @Free(i8* %101)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i64, i64* @INFINITE, align 8
  store i64 %107, i64* %5, align 8
  br label %110

108:                                              ; preds = %103
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %108, %106, %44, %36, %29, %21
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i32 @StrUpper(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
