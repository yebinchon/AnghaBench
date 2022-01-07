; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_sendquote.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_sendquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { %struct.pingpong }
%struct.pingpong = type { i32 }
%struct.curl_slist = type { i8*, %struct.curl_slist* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"QUOT string not accepted: %s\00", align 1
@CURLE_QUOTE_ERROR = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, %struct.curl_slist*)* @ftp_sendquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_sendquote(%struct.connectdata* %0, %struct.curl_slist* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ftp_conn*, align 8
  %11 = alloca %struct.pingpong*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store %struct.curl_slist* %1, %struct.curl_slist** %5, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ftp_conn* %16, %struct.ftp_conn** %10, align 8
  %17 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %18 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %17, i32 0, i32 0
  store %struct.pingpong* %18, %struct.pingpong** %11, align 8
  %19 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  store %struct.curl_slist* %19, %struct.curl_slist** %6, align 8
  br label %20

20:                                               ; preds = %72, %2
  %21 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %22 = icmp ne %struct.curl_slist* %21, null
  br i1 %22, label %23, label %76

23:                                               ; preds = %20
  %24 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %25 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %23
  %29 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %30 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %12, align 8
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %45, i32 0, i32 0
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @PPSENDF(%struct.pingpong* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 (...) @Curl_now()
  %50 = load %struct.pingpong*, %struct.pingpong** %11, align 8
  %51 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %53 = call i64 @Curl_GetFTPResponse(i32* %7, %struct.connectdata* %52, i32* %8)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %3, align 8
  br label %78

58:                                               ; preds = %42
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 400
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %66 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @failf(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i64, i64* @CURLE_QUOTE_ERROR, align 8
  store i64 %70, i64* %3, align 8
  br label %78

71:                                               ; preds = %61, %58
  br label %72

72:                                               ; preds = %71, %23
  %73 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %74 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %73, i32 0, i32 1
  %75 = load %struct.curl_slist*, %struct.curl_slist** %74, align 8
  store %struct.curl_slist* %75, %struct.curl_slist** %6, align 8
  br label %20

76:                                               ; preds = %20
  %77 = load i64, i64* @CURLE_OK, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %76, %64, %56
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i32 @PPSENDF(%struct.pingpong*, i8*, i8*) #1

declare dso_local i32 @Curl_now(...) #1

declare dso_local i64 @Curl_GetFTPResponse(i32*, %struct.connectdata*, i32*) #1

declare dso_local i32 @failf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
