; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_setup_connection.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_setup_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_16__, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.Curl_easy* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32* }
%struct.Curl_easy = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.FTP* }
%struct.FTP = type { i32, i32, i64, i32, i32* }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c";type=\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@FTPTRANSFER_BODY = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_setup_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_setup_connection(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.FTP*, align 8
  %7 = alloca i8, align 1
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 5
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  store %struct.Curl_easy* %10, %struct.Curl_easy** %4, align 8
  %11 = call %struct.FTP* @calloc(i32 32, i32 1)
  store %struct.FTP* %11, %struct.FTP** %6, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 5
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.FTP* %11, %struct.FTP** %16, align 8
  %17 = load %struct.FTP*, %struct.FTP** %6, align 8
  %18 = icmp eq %struct.FTP* null, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %20, i32* %2, align 4
  br label %111

21:                                               ; preds = %1
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load %struct.FTP*, %struct.FTP** %6, align 8
  %29 = getelementptr inbounds %struct.FTP, %struct.FTP* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load %struct.FTP*, %struct.FTP** %6, align 8
  %31 = getelementptr inbounds %struct.FTP, %struct.FTP* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i8* @strstr(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %21
  %37 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @strstr(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %36, %21
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = call signext i8 @Curl_raw_toupper(i8 signext %49)
  store i8 %50, i8* %7, align 1
  %51 = load i8*, i8** @TRUE, align 8
  %52 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %53 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %68 [
    i32 65, label %57
    i32 68, label %62
    i32 73, label %67
  ]

57:                                               ; preds = %45
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  br label %73

62:                                               ; preds = %45
  %63 = load i8*, i8** @TRUE, align 8
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  br label %73

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %45, %67
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %71 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %68, %62, %57
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32, i32* @FTPTRANSFER_BODY, align 4
  %76 = load %struct.FTP*, %struct.FTP** %6, align 8
  %77 = getelementptr inbounds %struct.FTP, %struct.FTP* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.FTP*, %struct.FTP** %6, align 8
  %79 = getelementptr inbounds %struct.FTP, %struct.FTP* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %81 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.FTP*, %struct.FTP** %6, align 8
  %84 = getelementptr inbounds %struct.FTP, %struct.FTP* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %86 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.FTP*, %struct.FTP** %6, align 8
  %89 = getelementptr inbounds %struct.FTP, %struct.FTP* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.FTP*, %struct.FTP** %6, align 8
  %91 = getelementptr inbounds %struct.FTP, %struct.FTP* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @isBadFtpString(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %74
  %96 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %96, i32* %2, align 4
  br label %111

97:                                               ; preds = %74
  %98 = load %struct.FTP*, %struct.FTP** %6, align 8
  %99 = getelementptr inbounds %struct.FTP, %struct.FTP* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @isBadFtpString(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %104, i32* %2, align 4
  br label %111

105:                                              ; preds = %97
  %106 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %107 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load i32, i32* @CURLE_OK, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %103, %95, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.FTP* @calloc(i32, i32) #1

declare dso_local i8* @strstr(i32*, i8*) #1

declare dso_local signext i8 @Curl_raw_toupper(i8 signext) #1

declare dso_local i64 @isBadFtpString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
