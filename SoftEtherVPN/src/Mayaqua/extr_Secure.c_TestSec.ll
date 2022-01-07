; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_TestSec.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_TestSec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c"Secure Device Test Program\0ACopyright (c) SoftEther Corporation. All Rights Reserved.\0A\0A\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"--- Secure Device List ---\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%2u - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Device ID >\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Canceled.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Opening Device...\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"OpenSec() Failed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Opening Session...\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"OpenSecSession() Failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"PIN Code >\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Login...\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Logout...\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Login Failed. Please Try Again.\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Closing Session...\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Closing Device...\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"GetSecureDeviceList() Error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestSec() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %12 = call i32* (...) @GetSecureDeviceList()
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %112

15:                                               ; preds = %0
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %21

21:                                               ; preds = %37, %15
  %22 = load i64, i64* %1, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @LIST_NUM(i32* %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* %1, align 8
  %29 = call %struct.TYPE_3__* @LIST_DATA(i32* %27, i64 %28)
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %6, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i64, i64* %1, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %1, align 8
  br label %21

40:                                               ; preds = %21
  %41 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %43 = trunc i64 %17 to i32
  %44 = call i32 @GetLine(i8* %19, i32 %43)
  %45 = call i64 @ToInt(i8* %19)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %108

50:                                               ; preds = %40
  %51 = load i64, i64* %3, align 8
  %52 = call i32* @OpenSec(i64 %51)
  store i32* %52, i32** %7, align 8
  %53 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %107

58:                                               ; preds = %50
  %59 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @OpenSecSession(i32* %60, i32 0)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %103

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %98, %65
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @MAX_SIZE, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %8, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %9, align 8
  %72 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %73 = trunc i64 %69 to i32
  %74 = call i32 @GetLine(i8* %71, i32 %73)
  %75 = call i32 @Trim(i8* %71)
  %76 = call i64 @StrLen(i8* %71)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 6, i32* %10, align 4
  br label %95

80:                                               ; preds = %67
  %81 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @LoginSec(i32* %82, i8* %71)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @TestSecMain(i32* %86)
  %88 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @LogoutSec(i32* %89)
  store i32 6, i32* %10, align 4
  br label %95

91:                                               ; preds = %80
  %92 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %85, %78
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %10, align 4
  switch i32 %97, label %115 [
    i32 0, label %98
    i32 6, label %99
  ]

98:                                               ; preds = %95
  br label %66

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @CloseSecSession(i32* %101)
  br label %103

103:                                              ; preds = %99, %63
  %104 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @CloseSec(i32* %105)
  br label %107

107:                                              ; preds = %103, %56
  br label %108

108:                                              ; preds = %107, %48
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @ReleaseList(i32* %109)
  %111 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %111)
  br label %114

112:                                              ; preds = %0
  %113 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  ret void

115:                                              ; preds = %95
  unreachable
}

declare dso_local i32 @Print(i8*, ...) #1

declare dso_local i32* @GetSecureDeviceList(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_3__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @GetLine(i8*, i32) #1

declare dso_local i64 @ToInt(i8*) #1

declare dso_local i32* @OpenSec(i64) #1

declare dso_local i32 @OpenSecSession(i32*, i32) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i64 @LoginSec(i32*, i8*) #1

declare dso_local i32 @TestSecMain(i32*) #1

declare dso_local i32 @LogoutSec(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CloseSecSession(i32*) #1

declare dso_local i32 @CloseSec(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
