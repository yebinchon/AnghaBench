; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebTryFindAndReadFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebTryFindAndReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AdminWebTryFindAndReadFile(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %19, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %6
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %13, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42, %39, %36, %6
  store i32* null, i32** %7, align 8
  store i32 1, i32* %21, align 4
  br label %105

49:                                               ; preds = %45
  %50 = load i32*, i32** %13, align 8
  store i32 0, i32* %50, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @StartWith(i8* %51, i8* %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32* null, i32** %7, align 8
  store i32 1, i32* %21, align 4
  br label %105

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @StrLen(i8* %57)
  store i32 %58, i32* %17, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @StrLen(i8* %59)
  store i32 %60, i32* %18, align 4
  %61 = trunc i64 %32 to i32
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @StrCpy(i8* %33, i32 %61, i8* %65)
  %67 = call i32 @StartWith(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %56
  %70 = load i32, i32* @MAX_PATH, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %22, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %23, align 8
  %74 = trunc i64 %71 to i32
  %75 = getelementptr inbounds i8, i8* %33, i64 1
  %76 = call i32 @StrCpy(i8* %73, i32 %74, i8* %75)
  %77 = trunc i64 %32 to i32
  %78 = call i32 @StrCpy(i8* %33, i32 %77, i8* %73)
  %79 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %80

80:                                               ; preds = %69, %56
  %81 = trunc i64 %25 to i32
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @CombinePath(i8* %27, i32 %81, i8* %82, i8* %33)
  %84 = trunc i64 %29 to i32
  %85 = call i32 @CombinePath(i8* %30, i32 %84, i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32* @AdminWebTryOneFile(i8* %30, i8* %86, i32 %87)
  store i32* %88, i32** %20, align 8
  %89 = load i32*, i32** %20, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32*, i32** %13, align 8
  store i32 1, i32* %92, align 4
  %93 = load i32*, i32** %20, align 8
  store i32* %93, i32** %7, align 8
  store i32 1, i32* %21, align 4
  br label %105

94:                                               ; preds = %80
  %95 = trunc i64 %29 to i32
  %96 = call i32 @StrCpy(i8* %30, i32 %95, i8* %27)
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32* @AdminWebTryOneFile(i8* %30, i8* %97, i32 %98)
  store i32* %99, i32** %20, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32*, i32** %20, align 8
  store i32* %103, i32** %7, align 8
  store i32 1, i32* %21, align 4
  br label %105

104:                                              ; preds = %94
  store i32* null, i32** %7, align 8
  store i32 1, i32* %21, align 4
  br label %105

105:                                              ; preds = %104, %102, %91, %55, %48
  %106 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32*, i32** %7, align 8
  ret i32* %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StartWith(i8*, i8*) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CombinePath(i8*, i32, i8*, i8*) #2

declare dso_local i32* @AdminWebTryOneFile(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
