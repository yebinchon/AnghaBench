; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_quit.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failure sending QUIT command: %s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"QUIT command failed\00", align 1
@FTP_STOP = common dso_local global i32 0, align 4
@FTP_QUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @ftp_quit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_quit(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %5 = load i64, i64* @CURLE_OK, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i64 @Curl_pp_sendf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @curl_easy_strerror(i64 %24)
  %26 = call i32 @failf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @FALSE, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  %32 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %33 = call i32 @connclose(%struct.connectdata* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %35 = load i32, i32* @FTP_STOP, align 4
  %36 = call i32 @state(%struct.connectdata* %34, i32 %35)
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %46

38:                                               ; preds = %12
  %39 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %40 = load i32, i32* @FTP_QUIT, align 4
  %41 = call i32 @state(%struct.connectdata* %39, i32 %40)
  %42 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %43 = call i64 @ftp_block_statemach(%struct.connectdata* %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %38, %1
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %20
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @Curl_pp_sendf(i32*, i8*, i8*) #1

declare dso_local i32 @failf(i32, i8*, i32) #1

declare dso_local i32 @curl_easy_strerror(i64) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @ftp_block_statemach(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
