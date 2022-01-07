; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_MakeDirExW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_MakeDirExW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MakeDirExW(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %76

24:                                               ; preds = %1
  %25 = call i32* @NewListFast(i32* null)
  store i32* %25, i32** %4, align 8
  %26 = trunc i64 %15 to i32
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @UniStrCpy(i8* %17, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %40, %24
  br label %30

30:                                               ; preds = %29
  %31 = call i8* @CopyUniStr(i8* %17)
  store i8* %31, i8** %11, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @Add(i32* %32, i8* %33)
  %35 = trunc i64 %19 to i32
  %36 = call i32 @GetDirNameFromFilePathW(i8* %20, i32 %35, i8* %17)
  %37 = call i64 @UniStrCmpi(i8* %20, i8* %17)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %43

40:                                               ; preds = %30
  %41 = trunc i64 %15 to i32
  %42 = call i32 @UniStrCpy(i8* %17, i32 %41, i8* %20)
  br label %29

43:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @LIST_NUM(i32* %46)
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @LIST_NUM(i32* %50)
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %12, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i8* @LIST_DATA(i32* %55, i64 %56)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i64 @UniStrCmpi(i8* %58, i8* bitcast ([2 x i32]* @.str to i8*))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i8*, i8** %13, align 8
  %63 = call i64 @UniStrCmpi(i8* %62, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @MakeDirW(i8* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %61, %49
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %44

72:                                               ; preds = %44
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @UniFreeStrList(i32* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %23
  %77 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i32 @UniStrCpy(i8*, i32, i8*) #2

declare dso_local i8* @CopyUniStr(i8*) #2

declare dso_local i32 @Add(i32*, i8*) #2

declare dso_local i32 @GetDirNameFromFilePathW(i8*, i32, i8*) #2

declare dso_local i64 @UniStrCmpi(i8*, i8*) #2

declare dso_local i64 @LIST_NUM(i32*) #2

declare dso_local i8* @LIST_DATA(i32*, i64) #2

declare dso_local i32 @MakeDirW(i8*) #2

declare dso_local i32 @UniFreeStrList(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
