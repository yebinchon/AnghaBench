; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_IsUserName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_IsUserName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@LINK_USER_NAME = common dso_local global i8* null, align 8
@L3_USERNAME = common dso_local global i32 0, align 4
@LINK_USER_NAME_PRINT = common dso_local global i8* null, align 8
@SNAT_USER_NAME = common dso_local global i8* null, align 8
@SNAT_USER_NAME_PRINT = common dso_local global i8* null, align 8
@BRIDGE_USER_NAME = common dso_local global i8* null, align 8
@BRIDGE_USER_NAME_PRINT = common dso_local global i8* null, align 8
@ADMINISTRATOR_USERNAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsUserName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

16:                                               ; preds = %1
  %17 = trunc i64 %10 to i32
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @StrCpy(i8* %12, i32 %17, i8* %18)
  store i8* %12, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @Trim(i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @StrLen(i8* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

27:                                               ; preds = %16
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @StrCmpi(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

32:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @IsSafeChar(i8 signext %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 64
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

52:                                               ; preds = %44, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load i8*, i8** %3, align 8
  %58 = load i8*, i8** @LINK_USER_NAME, align 8
  %59 = call i64 @StrCmpi(i8* %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* @L3_USERNAME, align 4
  %65 = call i64 @StartWith(i8* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

68:                                               ; preds = %62
  %69 = load i8*, i8** %3, align 8
  %70 = load i8*, i8** @LINK_USER_NAME_PRINT, align 8
  %71 = call i64 @StrCmpi(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

74:                                               ; preds = %68
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** @SNAT_USER_NAME, align 8
  %77 = call i64 @StrCmpi(i8* %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

80:                                               ; preds = %74
  %81 = load i8*, i8** %3, align 8
  %82 = load i8*, i8** @SNAT_USER_NAME_PRINT, align 8
  %83 = call i64 @StrCmpi(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

86:                                               ; preds = %80
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** @BRIDGE_USER_NAME, align 8
  %89 = call i64 @StrCmpi(i8* %87, i8* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

92:                                               ; preds = %86
  %93 = load i8*, i8** %3, align 8
  %94 = load i8*, i8** @BRIDGE_USER_NAME_PRINT, align 8
  %95 = call i64 @StrCmpi(i8* %93, i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

98:                                               ; preds = %92
  %99 = load i8*, i8** %3, align 8
  %100 = load i8*, i8** @ADMINISTRATOR_USERNAME, align 8
  %101 = call i64 @StrCmpi(i8* %99, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

104:                                              ; preds = %98
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %103, %97, %91, %85, %79, %73, %67, %61, %51, %31, %26, %15
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i64 @StrCmpi(i8*, i8*) #2

declare dso_local i32 @IsSafeChar(i8 signext) #2

declare dso_local i64 @StartWith(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
