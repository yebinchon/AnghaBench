; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_MakeLogFileName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_MakeLogFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_LOG_SIZE_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"~%02u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%s%s%s%s.log\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MakeLogFileName(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i64 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [64 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca [32 x i8], align 16
  %27 = alloca i8, align 1
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %28 = load i32, i32* @MAX_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %9
  %35 = load i8*, i8** %12, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %15, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %19, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37, %34, %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %128

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = trunc i64 %29 to i32
  %47 = load i64, i64* %16, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @MakeLogFileNameStringFromTick(i32* %45, i8* %31, i32 %46, i64 %47, i32 %48)
  %50 = load i32, i32* %18, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %53, align 16
  br label %107

54:                                               ; preds = %44
  %55 = call i64 (...) @GetMaxLogSize()
  store i64 %55, i64* %25, align 8
  %56 = load i64, i64* %25, align 8
  %57 = load i64, i64* @MAX_LOG_SIZE_DEFAULT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %61 = load i32, i32* %18, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %106

63:                                               ; preds = %54
  store i8 50, i8* %27, align 1
  %64 = load i64, i64* %25, align 8
  %65 = icmp uge i64 %64, 1000000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8 51, i8* %27, align 1
  br label %97

67:                                               ; preds = %63
  %68 = load i64, i64* %25, align 8
  %69 = icmp uge i64 %68, 100000000
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8 52, i8* %27, align 1
  br label %96

71:                                               ; preds = %67
  %72 = load i64, i64* %25, align 8
  %73 = icmp uge i64 %72, 10000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i8 53, i8* %27, align 1
  br label %95

75:                                               ; preds = %71
  %76 = load i64, i64* %25, align 8
  %77 = icmp uge i64 %76, 1000000
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i8 54, i8* %27, align 1
  br label %94

79:                                               ; preds = %75
  %80 = load i64, i64* %25, align 8
  %81 = icmp uge i64 %80, 100000
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i8 55, i8* %27, align 1
  br label %93

83:                                               ; preds = %79
  %84 = load i64, i64* %25, align 8
  %85 = icmp uge i64 %84, 10000
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i8 56, i8* %27, align 1
  br label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %25, align 8
  %89 = icmp uge i64 %88, 1000
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i8 57, i8* %27, align 1
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %70
  br label %97

97:                                               ; preds = %96, %66
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %99 = call i32 @StrCpy(i8* %98, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %100 = load i8, i8* %27, align 1
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 3
  store i8 %100, i8* %101, align 1
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %104 = load i32, i32* %18, align 4
  %105 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %102, i32 64, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %59
  br label %107

107:                                              ; preds = %106, %52
  %108 = load i8*, i8** %19, align 8
  %109 = call i64 @strcmp(i8* %108, i8* %31)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  store i32 1, i32* %23, align 4
  %112 = load i8*, i8** %19, align 8
  %113 = load i32, i32* @MAX_SIZE, align 4
  %114 = call i32 @StrCpy(i8* %112, i32 %113, i8* %31)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = call i64 @StrLen(i8* %119)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %124 = load i8*, i8** %15, align 8
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %126 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %116, i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %118, i8* %123, i8* %124, i8* %31, i8* %125)
  %127 = load i32, i32* %23, align 4
  store i32 %127, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %128

128:                                              ; preds = %115, %43
  %129 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MakeLogFileNameStringFromTick(i32*, i8*, i32, i64, i32) #2

declare dso_local i64 @GetMaxLogSize(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @StrLen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
