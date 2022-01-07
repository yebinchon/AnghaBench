; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_printoption.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_printoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CURL_IAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s IAC %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s IAC %d\0A\00", align 1
@CURL_WILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"WILL\00", align 1
@CURL_WONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"WONT\00", align 1
@CURL_DO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@CURL_DONT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"DONT\00", align 1
@CURL_TELOPT_EXOPL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"EXOPL\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s %s %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*, i8*, i32, i32)* @printoption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printoption(%struct.Curl_easy* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CURL_IAC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @CURL_TELCMD_OK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CURL_TELCMD(i32 %27)
  %29 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %28)
  br label %35

30:                                               ; preds = %20
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  br label %102

36:                                               ; preds = %16
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CURL_WILL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %61

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @CURL_WONT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @CURL_DO, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @CURL_DONT, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* null
  br label %57

57:                                               ; preds = %51, %50
  %58 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %50 ], [ %56, %51 ]
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %45 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %40
  %62 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %40 ], [ %60, %59 ]
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @CURL_TELOPT_OK(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = call i8* @CURL_TELOPT(i32 %70)
  store i8* %71, i8** %10, align 8
  br label %79

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @CURL_TELOPT_EXOPL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %78

77:                                               ; preds = %72
  store i8* null, i8** %10, align 8
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %84, i8* %85, i8* %86)
  br label %94

88:                                               ; preds = %79
  %89 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %82
  br label %101

95:                                               ; preds = %61
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %94
  br label %102

102:                                              ; preds = %101, %35
  br label %103

103:                                              ; preds = %102, %4
  ret void
}

declare dso_local i64 @CURL_TELCMD_OK(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, ...) #1

declare dso_local i32 @CURL_TELCMD(i32) #1

declare dso_local i64 @CURL_TELOPT_OK(i32) #1

declare dso_local i8* @CURL_TELOPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
