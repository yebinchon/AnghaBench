; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.Curl_easy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8**, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.FTP* }
%struct.FTP = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@FTP_RETR_PREQUOTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EPRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PRET %s\00", align 1
@STRING_CUSTOMREQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PRET STOR %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PRET RETR %s\00", align 1
@FTP_PRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_state_prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_prepare_transfer(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.FTP*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load i32, i32* @CURLE_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 1
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.FTP*, %struct.FTP** %11, align 8
  store %struct.FTP* %12, %struct.FTP** %4, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %5, align 8
  %16 = load %struct.FTP*, %struct.FTP** %4, align 8
  %17 = getelementptr inbounds %struct.FTP, %struct.FTP* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %23 = load i32, i32* @FTP_RETR_PREQUOTE, align 4
  %24 = call i32 @state(%struct.connectdata* %22, i32 %23)
  %25 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @FTP_RETR_PREQUOTE, align 4
  %28 = call i32 @ftp_state_quote(%struct.connectdata* %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %122

29:                                               ; preds = %1
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %37 = load i32, i32* @EPRT, align 4
  %38 = call i32 @ftp_state_use_port(%struct.connectdata* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %121

39:                                               ; preds = %29
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %117

45:                                               ; preds = %39
  %46 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %47 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %84, label %52

52:                                               ; preds = %45
  %53 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %58 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* @STRING_CUSTOMREQUEST, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %52
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* @STRING_CUSTOMREQUEST, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  br label %81

73:                                               ; preds = %52
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %75 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  br label %81

81:                                               ; preds = %73, %65
  %82 = phi i8* [ %72, %65 ], [ %80, %73 ]
  %83 = call i32 @PPSENDF(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %82)
  br label %113

84:                                               ; preds = %45
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %86 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %92 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %96 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @PPSENDF(i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  br label %112

101:                                              ; preds = %84
  %102 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %103 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %107 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @PPSENDF(i32* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %101, %90
  br label %113

113:                                              ; preds = %112, %81
  %114 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %115 = load i32, i32* @FTP_PRET, align 4
  %116 = call i32 @state(%struct.connectdata* %114, i32 %115)
  br label %120

117:                                              ; preds = %39
  %118 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %119 = call i32 @ftp_state_use_pasv(%struct.connectdata* %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %35
  br label %122

122:                                              ; preds = %121, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_quote(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @ftp_state_use_port(%struct.connectdata*, i32) #1

declare dso_local i32 @PPSENDF(i32*, i8*, i8*) #1

declare dso_local i32 @ftp_state_use_pasv(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
