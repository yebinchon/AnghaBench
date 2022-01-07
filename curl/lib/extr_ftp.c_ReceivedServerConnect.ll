; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ReceivedServerConnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ReceivedServerConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, i32*, %struct.Curl_easy* }
%struct.TYPE_2__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { %struct.pingpong }
%struct.pingpong = type { i8*, i64 }
%struct.Curl_easy = type { i32 }

@FIRSTSOCKET = common dso_local global i64 0, align 8
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Checking for server connect\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Accept timeout occurred while waiting server connect\00", align 1
@CURLE_FTP_ACCEPT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"There is negative response in cache while serv connect\0A\00", align 1
@CURLE_FTP_ACCEPT_FAILED = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Error while waiting for server connect\00", align 1
@CURL_CSELECT_IN2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Ready to accept data connection from server\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CURL_CSELECT_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Ctrl conn has data while waiting for data conn\0A\00", align 1
@CURLE_WEIRD_SERVER_REPLY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32*)* @ReceivedServerConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReceivedServerConnect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ftp_conn*, align 8
  %10 = alloca %struct.pingpong*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 2
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  store %struct.Curl_easy* %17, %struct.Curl_easy** %6, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @FIRSTSOCKET, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @SECONDARYSOCKET, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.ftp_conn* %32, %struct.ftp_conn** %9, align 8
  %33 = load %struct.ftp_conn*, %struct.ftp_conn** %9, align 8
  %34 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %33, i32 0, i32 0
  store %struct.pingpong* %34, %struct.pingpong** %10, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %38 = call i64 @ftp_timeleft_accept(%struct.Curl_easy* %37)
  store i64 %38, i64* %12, align 8
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %40 = call i32 @infof(%struct.Curl_easy* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %12, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %45 = call i32 @failf(%struct.Curl_easy* %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @CURLE_FTP_ACCEPT_TIMEOUT, align 4
  store i32 %46, i32* %3, align 4
  br label %113

47:                                               ; preds = %2
  %48 = load %struct.pingpong*, %struct.pingpong** %10, align 8
  %49 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.pingpong*, %struct.pingpong** %10, align 8
  %54 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.pingpong*, %struct.pingpong** %10, align 8
  %59 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sgt i32 %63, 51
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %67 = call i32 @infof(%struct.Curl_easy* %66, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %69 = call i32 @Curl_GetFTPResponse(i32* %13, %struct.connectdata* %68, i32* %14)
  %70 = load i32, i32* @CURLE_FTP_ACCEPT_FAILED, align 4
  store i32 %70, i32* %3, align 4
  br label %113

71:                                               ; preds = %57, %52, %47
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %75 = call i32 @Curl_socket_check(i32 %72, i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  switch i32 %76, label %82 [
    i32 -1, label %77
    i32 0, label %81
  ]

77:                                               ; preds = %71
  %78 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %79 = call i32 @failf(%struct.Curl_easy* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @CURLE_FTP_ACCEPT_FAILED, align 4
  store i32 %80, i32* %3, align 4
  br label %113

81:                                               ; preds = %71
  br label %111

82:                                               ; preds = %71
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @CURL_CSELECT_IN2, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %89 = call i32 @infof(%struct.Curl_easy* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @TRUE, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  br label %110

92:                                               ; preds = %82
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @CURL_CSELECT_IN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %99 = call i32 @infof(%struct.Curl_easy* %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %101 = call i32 @Curl_GetFTPResponse(i32* %13, %struct.connectdata* %100, i32* %14)
  %102 = load i32, i32* %14, align 4
  %103 = sdiv i32 %102, 100
  %104 = icmp sgt i32 %103, 3
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @CURLE_FTP_ACCEPT_FAILED, align 4
  store i32 %106, i32* %3, align 4
  br label %113

107:                                              ; preds = %97
  %108 = load i32, i32* @CURLE_WEIRD_SERVER_REPLY, align 4
  store i32 %108, i32* %3, align 4
  br label %113

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %87
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i32, i32* @CURLE_OK, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %107, %105, %77, %65, %43
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @ftp_timeleft_accept(%struct.Curl_easy*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_GetFTPResponse(i32*, %struct.connectdata*, i32*) #1

declare dso_local i32 @Curl_socket_check(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
