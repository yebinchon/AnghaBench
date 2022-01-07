; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_command_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_command_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_5__, %struct.Curl_easy* }
%struct.TYPE_5__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i32, %struct.pingpong }
%struct.pingpong = type { i64, i64 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.POP3* }
%struct.POP3 = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@POP3_STOP = common dso_local global i32 0, align 4
@CURLE_RECV_ERROR = common dso_local global i64 0, align 8
@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32, i32)* @pop3_state_command_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_state_command_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.POP3*, align 8
  %11 = alloca %struct.pop3_conn*, align 8
  %12 = alloca %struct.pingpong*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @CURLE_OK, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 1
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %9, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.POP3*, %struct.POP3** %19, align 8
  store %struct.POP3* %20, %struct.POP3** %10, align 8
  %21 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.pop3_conn* %23, %struct.pop3_conn** %11, align 8
  %24 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %25 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %24, i32 0, i32 2
  store %struct.pingpong* %25, %struct.pingpong** %12, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 43
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %31 = load i32, i32* @POP3_STOP, align 4
  %32 = call i32 @state(%struct.connectdata* %30, i32 %31)
  %33 = load i64, i64* @CURLE_RECV_ERROR, align 8
  store i64 %33, i64* %4, align 8
  br label %86

34:                                               ; preds = %3
  %35 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %36 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %35, i32 0, i32 0
  store i32 2, i32* %36, align 8
  %37 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %38 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  %39 = load %struct.POP3*, %struct.POP3** %10, align 8
  %40 = getelementptr inbounds %struct.POP3, %struct.POP3* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %34
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %46 = load i32, i32* @FIRSTSOCKET, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %45, i32 %46, i32 -1, i32 %47, i32 -1)
  %49 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %50 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %44
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %61 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %62 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %65 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @Curl_pop3_write(%struct.connectdata* %60, i64 %63, i64 %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %4, align 8
  br label %86

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %75 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @Curl_safefree(i64 %76)
  %78 = load %struct.pingpong*, %struct.pingpong** %12, align 8
  %79 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %44
  br label %81

81:                                               ; preds = %80, %34
  %82 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %83 = load i32, i32* @POP3_STOP, align 4
  %84 = call i32 @state(%struct.connectdata* %82, i32 %83)
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %81, %70, %29
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i32, i32, i32, i32) #1

declare dso_local i64 @Curl_pop3_write(%struct.connectdata*, i64, i64) #1

declare dso_local i32 @Curl_safefree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
