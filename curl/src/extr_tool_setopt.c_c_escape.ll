; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_c_escape.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_c_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_ZERO_TERMINATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @c_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @c_escape(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CURL_ZERO_TERMINATED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp ugt i64 %17, 4611686018427387903
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %109

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = mul i64 4, %21
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %109

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %103, %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %32
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %9, align 8
  br label %102

46:                                               ; preds = %37
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %9, align 8
  br label %101

55:                                               ; preds = %46
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strcpy(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %9, align 8
  br label %100

64:                                               ; preds = %55
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 92
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %72, i8** %9, align 8
  br label %99

73:                                               ; preds = %64
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %9, align 8
  br label %98

82:                                               ; preds = %73
  %83 = load i8, i8* %7, align 1
  %84 = call i32 @isprint(i8 zeroext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = call i32 @msnprintf(i8* %87, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8* %92, i8** %9, align 8
  br label %97

93:                                               ; preds = %82
  %94 = load i8, i8* %7, align 1
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  store i8 %94, i8* %95, align 1
  br label %97

97:                                               ; preds = %93, %86
  br label %98

98:                                               ; preds = %97, %77
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99, %59
  br label %101

101:                                              ; preds = %100, %50
  br label %102

102:                                              ; preds = %101, %41
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %32

106:                                              ; preds = %32
  %107 = load i8*, i8** %9, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %8, align 8
  store i8* %108, i8** %3, align 8
  br label %109

109:                                              ; preds = %106, %28, %19
  %110 = load i8*, i8** %3, align 8
  ret i8* %110
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
