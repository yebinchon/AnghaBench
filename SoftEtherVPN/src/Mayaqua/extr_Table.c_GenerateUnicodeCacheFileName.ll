; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_GenerateUnicodeCacheFileName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_GenerateUnicodeCacheFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@MD5_SIZE = common dso_local global i32 0, align 4
@UNICODE_CACHE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 47, i32 116, i32 109, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 47, i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenerateUnicodeCacheFileName(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = load i32, i32* @MAX_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* @SHA1_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %5
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %5
  store i32 1, i32* %17, align 4
  br label %78

40:                                               ; preds = %36
  %41 = trunc i64 %26 to i32
  %42 = call i32 @GetExeDirW(i8* %27, i32 %41)
  %43 = trunc i64 %23 to i32
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @UniStrCpy(i8* %24, i32 %43, i8* %44)
  %46 = trunc i64 %19 to i32
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @MD5_SIZE, align 4
  %49 = call i32 @BinToStrW(i8* %21, i32 %46, i32* %47, i32 %48)
  %50 = trunc i64 %23 to i32
  %51 = call i32 @UniStrCat(i8* %24, i32 %50, i8* %21)
  %52 = trunc i64 %23 to i32
  %53 = call i32 @UniStrCat(i8* %24, i32 %52, i8* %27)
  %54 = call i32 @UniStrLower(i8* %24)
  %55 = call i32 @UniStrLen(i8* %24)
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @Sha0(i32* %30, i8* %24, i32 %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %61 = call i32 @BinToStrW(i8* %60, i32 64, i32* %30, i32 4)
  %62 = trunc i64 %19 to i32
  %63 = load i32, i32* @UNICODE_CACHE_FILE, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %67 = call i32 (i8*, i32, i8*, i8*, ...) @UniFormat(i8* %21, i32 %62, i8* %65, i8* %66)
  %68 = call i32 @UniStrLower(i8* %21)
  %69 = trunc i64 %26 to i32
  %70 = call i32 @UniStrCpy(i8* %27, i32 %69, i8* bitcast ([5 x i32]* @.str to i8*))
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i8*, i32, i8*, i8*, ...) @UniFormat(i8* %71, i32 %72, i8* bitcast ([6 x i32]* @.str.1 to i8*), i8* %27, i8* %21)
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @NormalizePathW(i8* %74, i32 %75, i8* %76)
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %40, %39
  %79 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %17, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetExeDirW(i8*, i32) #2

declare dso_local i32 @UniStrCpy(i8*, i32, i8*) #2

declare dso_local i32 @BinToStrW(i8*, i32, i32*, i32) #2

declare dso_local i32 @UniStrCat(i8*, i32, i8*) #2

declare dso_local i32 @UniStrLower(i8*) #2

declare dso_local i32 @Sha0(i32*, i8*, i32) #2

declare dso_local i32 @UniStrLen(i8*) #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @NormalizePathW(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
