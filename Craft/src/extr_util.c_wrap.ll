; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_util.c_wrap.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_util.c_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wrap(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %7, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 1, %22
  %24 = trunc i64 %23 to i32
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = call i32 @char_width(i8 signext 32)
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @tokenize(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12)
  store i8* %31, i8** %14, align 8
  br label %32

32:                                               ; preds = %86, %4
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %97

35:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = call i8* @tokenize(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13)
  store i8* %37, i8** %16, align 8
  br label %38

38:                                               ; preds = %71, %35
  %39 = load i8*, i8** %16, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %86

41:                                               ; preds = %38
  %42 = load i8*, i8** %16, align 8
  %43 = call i32 @string_width(i8* %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sub nsw i32 %56, %58
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @strncat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %70

62:                                               ; preds = %46
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sub nsw i32 %64, %66
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @strncat(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %52
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sub nsw i32 %74, %76
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @strncat(i8* %72, i8* %73, i32 %78)
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %15, align 4
  %85 = call i8* @tokenize(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13)
  store i8* %85, i8** %16, align 8
  br label %38

86:                                               ; preds = %38
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = sub nsw i32 %90, %92
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @strncat(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = call i8* @tokenize(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12)
  store i8* %96, i8** %14, align 8
  br label %32

97:                                               ; preds = %32
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %11, align 4
  ret i32 %100
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @char_width(i8 signext) #1

declare dso_local i8* @tokenize(i8*, i8*, i8**) #1

declare dso_local i32 @string_width(i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
