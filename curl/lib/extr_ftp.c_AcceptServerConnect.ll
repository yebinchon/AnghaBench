; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_AcceptServerConnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_AcceptServerConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, i32*, %struct.TYPE_3__, %struct.Curl_easy* }
%struct.TYPE_3__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i64, i32)*, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@SECONDARYSOCKET = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error accept()ing server connect\00", align 1
@CURLE_FTP_PORT_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Connection accepted from server\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLSOCKTYPE_ACCEPT = common dso_local global i32 0, align 4
@CURLE_ABORTED_BY_CALLBACK = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @AcceptServerConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcceptServerConnect(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 3
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %4, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @SECONDARYSOCKET, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %19, i64* %6, align 8
  store i32 4, i32* %8, align 4
  %20 = load i64, i64* %5, align 8
  %21 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %22 = call i64 @getsockname(i64 %20, %struct.sockaddr* %21, i32* %8)
  %23 = icmp eq i64 0, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  store i32 4, i32* %8, align 4
  %25 = load i64, i64* %5, align 8
  %26 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %27 = call i64 @accept(i64 %25, %struct.sockaddr* %26, i32* %8)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @Curl_closesocket(%struct.connectdata* %29, i64 %30)
  %32 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %37 = call i32 @failf(%struct.Curl_easy* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @CURLE_FTP_PORT_FAILED, align 4
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %28
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %41 = call i32 @infof(%struct.Curl_easy* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FALSE, align 4
  %43 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %48 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @SECONDARYSOCKET, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %46, i64* %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @curlx_nonblock(i64 %52, i32 %53)
  %55 = load i32, i32* @TRUE, align 4
  %56 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @SECONDARYSOCKET, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i64, i32)* %64, null
  br i1 %65, label %66, label %89

66:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %68 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %67, i32 1)
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %71, align 8
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %74 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @CURLSOCKTYPE_ACCEPT, align 4
  %79 = call i32 %72(i32 %76, i64 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %81 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %80, i32 0)
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %66
  %85 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %86 = call i32 @close_secondarysocket(%struct.connectdata* %85)
  %87 = load i32, i32* @CURLE_ABORTED_BY_CALLBACK, align 4
  store i32 %87, i32* %2, align 4
  br label %91

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %39
  %90 = load i32, i32* @CURLE_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %84, %35
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @Curl_closesocket(%struct.connectdata*, i64) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @curlx_nonblock(i64, i32) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i32 @close_secondarysocket(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
