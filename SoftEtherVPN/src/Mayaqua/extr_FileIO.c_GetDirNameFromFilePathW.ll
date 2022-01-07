; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetDirNameFromFilePathW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetDirNameFromFilePathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetDirNameFromFilePathW(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  store i32 1, i32* %12, align 4
  br label %90

24:                                               ; preds = %20
  %25 = mul nuw i64 4, %15
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %17, i64 %25, i32* %26)
  %28 = call i64 @UniEndWith(i32* %17, i8* bitcast ([2 x i32]* @.str to i8*))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = call i64 @UniEndWith(i32* %17, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %24
  %34 = call i32 @UniStrLen(i32* %17)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %17, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = call i32 @UniStrLen(i32* %17)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %41, i64 %42, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %74, %38
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %17, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %68

57:                                               ; preds = %54, %48
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %17, i64 %58
  store i32 0, i32* %60, align 4
  store i64 0, i64* %9, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @UniStrCat(i32* %61, i64 %62, i32* %17)
  %64 = load i32, i32* %13, align 4
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %17, i64 %65
  store i32 %64, i32* %67, align 4
  br label %73

68:                                               ; preds = %54
  %69 = load i32, i32* %13, align 4
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  %72 = getelementptr inbounds i32, i32* %17, i64 %70
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %57
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %44

77:                                               ; preds = %44
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @UniStrLen(i32* %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %82, i64 %83, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32*, i32** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @NormalizePathW(i32* %86, i64 %87, i32* %88)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %85, %23
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %12, align 4
  switch i32 %92, label %94 [
    i32 0, label %93
    i32 1, label %93
  ]

93:                                               ; preds = %90, %90
  ret void

94:                                               ; preds = %90
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniStrCpy(i32*, i64, ...) #2

declare dso_local i64 @UniEndWith(i32*, i8*) #2

declare dso_local i32 @UniStrLen(i32*) #2

declare dso_local i32 @UniStrCat(i32*, i64, i32*) #2

declare dso_local i32 @NormalizePathW(i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
