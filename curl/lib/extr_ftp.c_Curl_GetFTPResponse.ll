; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_Curl_GetFTPResponse.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_Curl_GetFTPResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, %struct.Curl_easy*, i32* }
%struct.TYPE_2__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { %struct.pingpong }
%struct.pingpong = type { i32, i64 }
%struct.Curl_easy = type { i32 }

@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"FTP response timeout\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"FTP response aborted due to select/poll error: %d\00", align 1
@SOCKERRNO = common dso_local global i32 0, align 4
@CURLE_RECV_ERROR = common dso_local global i64 0, align 8
@CURLE_ABORTED_BY_CALLBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_GetFTPResponse(i64* %0, %struct.connectdata* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ftp_conn*, align 8
  %12 = alloca %struct.pingpong*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.connectdata* %1, %struct.connectdata** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @FIRSTSOCKET, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 1
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %25, align 8
  store %struct.Curl_easy* %26, %struct.Curl_easy** %9, align 8
  %27 = load i64, i64* @CURLE_OK, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.ftp_conn* %30, %struct.ftp_conn** %11, align 8
  %31 = load %struct.ftp_conn*, %struct.ftp_conn** %11, align 8
  %32 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %31, i32 0, i32 0
  store %struct.pingpong* %32, %struct.pingpong** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  br label %38

37:                                               ; preds = %3
  store i32* %15, i32** %7, align 8
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i64*, i64** %5, align 8
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %119, %95, %38
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %124

50:                                               ; preds = %48
  %51 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @Curl_pp_state_timeout(%struct.pingpong* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %58 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %59 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %59, i64* %4, align 8
  br label %129

60:                                               ; preds = %50
  store i32 1000, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %68 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %99

75:                                               ; preds = %71, %66
  %76 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %77 = load i64, i64* @FIRSTSOCKET, align 8
  %78 = call i32 @Curl_conn_data_pending(%struct.connectdata* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @SOCKET_READABLE(i32 %81, i32 %82)
  switch i32 %83, label %96 [
    i32 -1, label %84
    i32 0, label %89
  ]

84:                                               ; preds = %80
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %86 = load i32, i32* @SOCKERRNO, align 4
  %87 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* @CURLE_RECV_ERROR, align 8
  store i64 %88, i64* %4, align 8
  br label %129

89:                                               ; preds = %80
  %90 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %91 = call i32 @Curl_pgrsUpdate(%struct.connectdata* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* @CURLE_ABORTED_BY_CALLBACK, align 8
  store i64 %94, i64* %4, align 8
  br label %129

95:                                               ; preds = %89
  br label %40

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %98, %74
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i64 @ftp_readresp(i32 %100, %struct.pingpong* %101, i32* %102, i64* %13)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %124

107:                                              ; preds = %99
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %112 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %119

118:                                              ; preds = %110, %107
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i64, i64* %13, align 8
  %121 = load i64*, i64** %5, align 8
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, %120
  store i64 %123, i64* %121, align 8
  br label %40

124:                                              ; preds = %106, %48
  %125 = load i32, i32* @FALSE, align 4
  %126 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %127 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %124, %93, %84, %56
  %130 = load i64, i64* %4, align 8
  ret i64 %130
}

declare dso_local i32 @Curl_pp_state_timeout(%struct.pingpong*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @Curl_conn_data_pending(%struct.connectdata*, i64) #1

declare dso_local i32 @SOCKET_READABLE(i32, i32) #1

declare dso_local i32 @Curl_pgrsUpdate(%struct.connectdata*) #1

declare dso_local i64 @ftp_readresp(i32, %struct.pingpong*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
