; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_readresp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_readresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { %struct.connectdata* }
%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"We got a 421 - timeout!\0A\00", align 1
@FTP_STOP = common dso_local global i32 0, align 4
@CURLE_OPERATION_TIMEDOUT = common dso_local global i32 0, align 4
@PROT_CONFIDENTIAL = common dso_local global i32 0, align 4
@PROT_PRIVATE = common dso_local global i32 0, align 4
@PROT_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pingpong*, i32*, i64*)* @ftp_readresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_readresp(i32 %0, %struct.pingpong* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pingpong*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.connectdata*, align 8
  %11 = alloca %struct.Curl_easy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.pingpong* %1, %struct.pingpong** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %15 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %14, i32 0, i32 0
  %16 = load %struct.connectdata*, %struct.connectdata** %15, align 8
  store %struct.connectdata* %16, %struct.connectdata** %10, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %18, align 8
  store %struct.Curl_easy* %19, %struct.Curl_easy** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pingpong*, %struct.pingpong** %7, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = call i32 @Curl_pp_readresp(i32 %20, %struct.pingpong* %21, i32* %12, i64* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 421, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %38 = call i32 @infof(%struct.Curl_easy* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %40 = load i32, i32* @FTP_STOP, align 4
  %41 = call i32 @state(%struct.connectdata* %39, i32 %40)
  %42 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @Curl_pp_readresp(i32, %struct.pingpong*, i32*, i64*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
