; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_user_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_user_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_6__ }
%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_5__ = type { %struct.FTP* }
%struct.FTP = type { i8* }
%struct.TYPE_6__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@FTP_USER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FTP_PASS = common dso_local global i64 0, align 8
@STRING_FTP_ACCOUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@FTP_ACCT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"ACCT requested but none available\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i32 0, align 4
@STRING_FTP_ALTERNATIVE_TO_USER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Access denied: %03d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @ftp_state_user_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_user_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.FTP*, align 8
  %10 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @CURLE_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %8, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.FTP*, %struct.FTP** %17, align 8
  store %struct.FTP* %18, %struct.FTP** %9, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.ftp_conn* %21, %struct.ftp_conn** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 331
  br i1 %24, label %25, label %49

25:                                               ; preds = %3
  %26 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %27 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FTP_USER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %33 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %32, i32 0, i32 1
  %34 = load %struct.FTP*, %struct.FTP** %9, align 8
  %35 = getelementptr inbounds %struct.FTP, %struct.FTP* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.FTP*, %struct.FTP** %9, align 8
  %40 = getelementptr inbounds %struct.FTP, %struct.FTP* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = call i32 @PPSENDF(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %47 = load i64, i64* @FTP_PASS, align 8
  %48 = call i32 @state(%struct.connectdata* %46, i64 %47)
  br label %139

49:                                               ; preds = %25, %3
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, 100
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %55 = call i32 @ftp_state_loggedin(%struct.connectdata* %54)
  store i32 %55, i32* %7, align 4
  br label %138

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 332
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i64, i64* @STRING_FTP_ACCOUNT, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %70 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %69, i32 0, i32 1
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* @STRING_FTP_ACCOUNT, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PPSENDF(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %80 = load i64, i64* @FTP_ACCT, align 8
  %81 = call i32 @state(%struct.connectdata* %79, i64 %80)
  br label %86

82:                                               ; preds = %59
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %84 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @CURLE_LOGIN_DENIED, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %68
  br label %137

87:                                               ; preds = %56
  %88 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %89 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %88, i32 0, i32 0
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %89, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64, i64* @STRING_FTP_ALTERNATIVE_TO_USER, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %131

98:                                               ; preds = %87
  %99 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %100 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %99, i32 0, i32 0
  %101 = load %struct.Curl_easy*, %struct.Curl_easy** %100, align 8
  %102 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %131, label %106

106:                                              ; preds = %98
  %107 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %108 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %109, i32 0, i32 1
  %111 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %112 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %111, i32 0, i32 0
  %113 = load %struct.Curl_easy*, %struct.Curl_easy** %112, align 8
  %114 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* @STRING_FTP_ALTERNATIVE_TO_USER, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PPSENDF(i32* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = load i64, i64* @TRUE, align 8
  %122 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %123 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %122, i32 0, i32 0
  %124 = load %struct.Curl_easy*, %struct.Curl_easy** %123, align 8
  %125 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i64 %121, i64* %126, align 8
  %127 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %128 = load i64, i64* @FTP_USER, align 8
  %129 = call i32 @state(%struct.connectdata* %127, i64 %128)
  %130 = load i32, i32* @CURLE_OK, align 4
  store i32 %130, i32* %7, align 4
  br label %136

131:                                              ; preds = %98, %87
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @CURLE_LOGIN_DENIED, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %131, %106
  br label %137

137:                                              ; preds = %136, %86
  br label %138

138:                                              ; preds = %137, %53
  br label %139

139:                                              ; preds = %138, %43
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @PPSENDF(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i64) #1

declare dso_local i32 @ftp_state_loggedin(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
