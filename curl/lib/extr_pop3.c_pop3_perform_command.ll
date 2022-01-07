; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_command.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.Curl_easy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.POP3* }
%struct.POP3 = type { i8*, i8*, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@FTPTRANSFER_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@POP3_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @pop3_perform_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_perform_command(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.POP3*, align 8
  %6 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  store %struct.Curl_easy* %10, %struct.Curl_easy** %4, align 8
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.POP3*, %struct.POP3** %13, align 8
  store %struct.POP3* %14, %struct.POP3** %5, align 8
  store i8* null, i8** %6, align 8
  %15 = load %struct.POP3*, %struct.POP3** %5, align 8
  %16 = getelementptr inbounds %struct.POP3, %struct.POP3* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 1
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %24, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %22, %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %31 = load %struct.POP3*, %struct.POP3** %5, align 8
  %32 = getelementptr inbounds %struct.POP3, %struct.POP3* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @FTPTRANSFER_INFO, align 4
  %40 = load %struct.POP3*, %struct.POP3** %5, align 8
  %41 = getelementptr inbounds %struct.POP3, %struct.POP3* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %30
  br label %44

43:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.POP3*, %struct.POP3** %5, align 8
  %46 = getelementptr inbounds %struct.POP3, %struct.POP3* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %44
  %53 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.POP3*, %struct.POP3** %5, align 8
  %58 = getelementptr inbounds %struct.POP3, %struct.POP3* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load %struct.POP3*, %struct.POP3** %5, align 8
  %63 = getelementptr inbounds %struct.POP3, %struct.POP3* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.POP3*, %struct.POP3** %5, align 8
  %71 = getelementptr inbounds %struct.POP3, %struct.POP3* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  br label %75

73:                                               ; preds = %61, %52
  %74 = load i8*, i8** %6, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i8* [ %72, %69 ], [ %74, %73 ]
  %77 = load %struct.POP3*, %struct.POP3** %5, align 8
  %78 = getelementptr inbounds %struct.POP3, %struct.POP3* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32*, i8*, i8*, ...) @Curl_pp_sendf(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %79)
  store i32 %80, i32* %3, align 4
  br label %107

81:                                               ; preds = %44
  %82 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %83 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.POP3*, %struct.POP3** %5, align 8
  %87 = getelementptr inbounds %struct.POP3, %struct.POP3* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = load %struct.POP3*, %struct.POP3** %5, align 8
  %92 = getelementptr inbounds %struct.POP3, %struct.POP3* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.POP3*, %struct.POP3** %5, align 8
  %100 = getelementptr inbounds %struct.POP3, %struct.POP3* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  br label %104

102:                                              ; preds = %90, %81
  %103 = load i8*, i8** %6, align 8
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i8* [ %101, %98 ], [ %103, %102 ]
  %106 = call i32 (i32*, i8*, i8*, ...) @Curl_pp_sendf(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %75
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %112 = load i32, i32* @POP3_COMMAND, align 4
  %113 = call i32 @state(%struct.connectdata* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
