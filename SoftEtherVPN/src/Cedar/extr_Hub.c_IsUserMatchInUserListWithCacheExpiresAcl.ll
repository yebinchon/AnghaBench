; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IsUserMatchInUserListWithCacheExpiresAcl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IsUserMatchInUserListWithCacheExpiresAcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@ACCESS_LIST_INCLUDED_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsUserMatchInUserListWithCacheExpiresAcl(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @StrLen(i8* %34)
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %30, %27, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %99

38:                                               ; preds = %33
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @StrCpy(i8* %39, i32 16, i8* %40)
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %43 = call i32 @StrLower(i8* %42)
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %44, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %46 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %47 = call i64 @Cmp(i8* %45, i32 %46, i32 8)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %51

50:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = trunc i64 %19 to i32
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @StrCpy(i8* %21, i32 %52, i8* %54)
  %56 = call i32 @Trim(i8* %21)
  %57 = getelementptr inbounds i8, i8* %21, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 92
  br i1 %60, label %76, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, i8* %21, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 47
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds i8, i8* %21, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 58
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %21, i64 2
  %73 = load i8, i8* %72, align 2
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 92
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %61, %51
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %71, %66
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = trunc i64 %23 to i32
  %82 = call i32 @StrCpy(i8* %24, i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %83 = trunc i64 %23 to i32
  %84 = call i32 @StrCat(i8* %24, i32 %83, i8* %21)
  %85 = trunc i64 %19 to i32
  %86 = call i32 @StrCpy(i8* %21, i32 %85, i8* %24)
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @IsUserMatchInUserListWithCacheExpires(i32* %88, i8* %21, i32 %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @NEGATIVE_BOOL(i32 %95)
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %99

99:                                               ; preds = %97, %37
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrLower(i8*) #2

declare dso_local i64 @Cmp(i8*, i32, i32) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @IsUserMatchInUserListWithCacheExpires(i32*, i8*, i32, i32) #2

declare dso_local i32 @NEGATIVE_BOOL(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
