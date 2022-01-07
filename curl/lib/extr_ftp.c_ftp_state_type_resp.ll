; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_type_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_type_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Couldn't set desired mode\00", align 1
@CURLE_FTP_COULDNT_SET_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Got a %03d response code instead of the assumed 200\0A\00", align 1
@FTP_TYPE = common dso_local global i64 0, align 8
@FTP_LIST_TYPE = common dso_local global i64 0, align 8
@FTP_RETR_TYPE = common dso_local global i64 0, align 8
@FTP_STOR_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i64)* @ftp_state_type_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_type_resp(%struct.connectdata* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @CURLE_OK, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  store %struct.Curl_easy* %13, %struct.Curl_easy** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 100
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %19 = call i32 @failf(%struct.Curl_easy* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @CURLE_FTP_COULDNT_SET_TYPE, align 4
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 200
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @infof(%struct.Curl_easy* %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @FTP_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %34 = call i32 @ftp_state_size(%struct.connectdata* %33)
  store i32 %34, i32* %8, align 4
  br label %59

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @FTP_LIST_TYPE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %41 = call i32 @ftp_state_list(%struct.connectdata* %40)
  store i32 %41, i32* %8, align 4
  br label %58

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @FTP_RETR_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %48 = call i32 @ftp_state_retr_prequote(%struct.connectdata* %47)
  store i32 %48, i32* %8, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @FTP_STOR_TYPE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %55 = call i32 @ftp_state_stor_prequote(%struct.connectdata* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @ftp_state_size(%struct.connectdata*) #1

declare dso_local i32 @ftp_state_list(%struct.connectdata*) #1

declare dso_local i32 @ftp_state_retr_prequote(%struct.connectdata*) #1

declare dso_local i32 @ftp_state_stor_prequote(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
