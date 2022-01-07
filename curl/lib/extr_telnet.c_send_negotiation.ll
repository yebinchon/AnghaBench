; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_send_negotiation.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_send_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, i32* }
%struct.Curl_easy = type { i32 }

@CURL_IAC = common dso_local global i8 0, align 1
@FIRSTSOCKET = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending data failed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SENT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32, i32)* @send_negotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_negotiation(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  store %struct.Curl_easy* %13, %struct.Curl_easy** %9, align 8
  %14 = load i8, i8* @CURL_IAC, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* %5, align 4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load i32, i32* %6, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %20, i8* %21, align 1
  %22 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @FIRSTSOCKET, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %29 = call i64 @swrite(i32 %27, i8* %28, i32 3)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @SOCKERRNO, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @failf(%struct.Curl_easy* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 0
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @printoption(%struct.Curl_easy* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  ret void
}

declare dso_local i64 @swrite(i32, i8*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @printoption(%struct.Curl_easy*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
