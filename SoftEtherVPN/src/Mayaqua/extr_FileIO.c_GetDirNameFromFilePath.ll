; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetDirNameFromFilePath.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetDirNameFromFilePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetDirNameFromFilePath(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  store i32 1, i32* %12, align 4
  br label %91

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @StrCpy(i8* %17, i64 %15, i8* %25)
  %27 = call i64 @EndWith(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i64 @EndWith(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29, %24
  %33 = call i32 @StrLen(i8* %17)
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %17, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %32, %29
  %38 = call i32 @StrLen(i8* %17)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @StrCpy(i8* %40, i64 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %75, %37
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %17, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %13, align 1
  %51 = load i8, i8* %13, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i8, i8* %13, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 92
  br i1 %57, label %58, label %69

58:                                               ; preds = %54, %47
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %17, i64 %59
  store i8 0, i8* %61, align 1
  store i64 0, i64* %9, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @StrCat(i8* %62, i64 %63, i8* %17)
  %65 = load i8, i8* %13, align 1
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %17, i64 %66
  store i8 %65, i8* %68, align 1
  br label %74

69:                                               ; preds = %54
  %70 = load i8, i8* %13, align 1
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %17, i64 %71
  store i8 %70, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %43

78:                                               ; preds = %43
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @StrLen(i8* %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @StrCpy(i8* %83, i64 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @NormalizePath(i8* %87, i64 %88, i8* %89)
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %86, %23
  %92 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %12, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #2

declare dso_local i64 @EndWith(i8*, i8*) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @StrCat(i8*, i64, i8*) #2

declare dso_local i32 @NormalizePath(i8*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
