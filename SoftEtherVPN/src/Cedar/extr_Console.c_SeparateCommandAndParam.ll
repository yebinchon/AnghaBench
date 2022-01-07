; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_SeparateCommandAndParam.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_SeparateCommandAndParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SeparateCommandAndParam(i32* %0, i8** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

17:                                               ; preds = %3
  %18 = load i8**, i8*** %6, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8**, i8*** %6, align 8
  store i8* null, i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32**, i32*** %7, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32**, i32*** %7, align 8
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @UniCopyStr(i32* %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @UniTrimCrlf(i32* %30)
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @UniTrim(i32* %32)
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @UniStrLen(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32* @Malloc(i32 %40)
  store i32* %41, i32** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %86, %27
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  switch i32 %53, label %78 [
    i32 0, label %54
    i32 32, label %54
    i32 9, label %54
  ]

54:                                               ; preds = %47, %47, %47
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @UniIsEmptyStr(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @Free(i32* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @Free(i32* %65)
  store i32 0, i32* %4, align 4
  br label %108

67:                                               ; preds = %54
  %68 = load i8**, i8*** %6, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32*, i32** %11, align 8
  %72 = call i8* @CopyUniToStr(i32* %71)
  %73 = load i8**, i8*** %6, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @Trim(i8* %75)
  br label %77

77:                                               ; preds = %70, %67
  br label %90

78:                                               ; preds = %47
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %42

89:                                               ; preds = %42
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i32**, i32*** %7, align 8
  %92 = icmp ne i32** %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32* @CopyUniStr(i32* %97)
  %99 = load i32**, i32*** %7, align 8
  store i32* %98, i32** %99, align 8
  %100 = load i32**, i32*** %7, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @UniTrim(i32* %101)
  br label %103

103:                                              ; preds = %93, %90
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @Free(i32* %104)
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @Free(i32* %106)
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %62, %16
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32* @UniCopyStr(i32*) #1

declare dso_local i32 @UniTrimCrlf(i32*) #1

declare dso_local i32 @UniTrim(i32*) #1

declare dso_local i32 @UniStrLen(i32*) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i8* @CopyUniToStr(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32* @CopyUniStr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
