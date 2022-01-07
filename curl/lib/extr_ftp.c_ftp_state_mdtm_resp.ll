; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_mdtm_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_mdtm_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__, %struct.Curl_easy* }
%struct.TYPE_7__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.FTP* }
%struct.FTP = type { i8* }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%04d%02d%02d %02d:%02d:%02d GMT\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unsupported MDTM reply format\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Given file does not exist\00", align 1
@CURLE_FTP_COULDNT_RETR_FILE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"The requested document is not new enough\0A\00", align 1
@FTPTRANSFER_NONE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FTP_STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"The requested document is not old enough\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Skipping time comparison\0A\00", align 1
@CLIENTWRITE_BOTH = common dso_local global i32 0, align 4
@Curl_month = common dso_local global i32* null, align 8
@Curl_wkday = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32)* @ftp_state_mdtm_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_state_mdtm_resp(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.FTP*, align 8
  %9 = alloca %struct.ftp_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [24 x i8], align 16
  %17 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i64, i64* @CURLE_OK, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 1
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %20, align 8
  store %struct.Curl_easy* %21, %struct.Curl_easy** %7, align 8
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.FTP*, %struct.FTP** %24, align 8
  store %struct.FTP* %25, %struct.FTP** %8, align 8
  %26 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.ftp_conn* %28, %struct.ftp_conn** %9, align 8
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %54 [
    i32 213, label %30
    i32 550, label %57
  ]

30:                                               ; preds = %2
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = call i32 @sscanf(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  %37 = icmp eq i32 6, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = call i64 @time(i32* null)
  store i64 %39, i64* %17, align 8
  %40 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @msnprintf(i8* %40, i32 24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  %49 = call i64 @curl_getdate(i8* %48, i64* %17)
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %38, %30
  br label %61

54:                                               ; preds = %2
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %56 = call i32 @infof(%struct.Curl_easy* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %61

57:                                               ; preds = %2
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %59 = call i32 @failf(%struct.Curl_easy* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64, i64* @CURLE_FTP_COULDNT_RETR_FILE, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %57, %54, %53
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %140

67:                                               ; preds = %61
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %69 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %136

73:                                               ; preds = %67
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %75 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %73
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %85 [
    i32 129, label %84
    i32 128, label %110
  ]

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %79, %84
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %89, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %85
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %97 = call i32 @infof(%struct.Curl_easy* %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i8*, i8** @FTPTRANSFER_NONE, align 8
  %99 = load %struct.FTP*, %struct.FTP** %8, align 8
  %100 = getelementptr inbounds %struct.FTP, %struct.FTP* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %103 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %106 = load i32, i32* @FTP_STOP, align 4
  %107 = call i32 @state(%struct.connectdata* %105, i32 %106)
  %108 = load i64, i64* @CURLE_OK, align 8
  store i64 %108, i64* %3, align 8
  br label %148

109:                                              ; preds = %85
  br label %135

110:                                              ; preds = %79
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %112 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %116 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %114, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %110
  %121 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %122 = call i32 @infof(%struct.Curl_easy* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i8*, i8** @FTPTRANSFER_NONE, align 8
  %124 = load %struct.FTP*, %struct.FTP** %8, align 8
  %125 = getelementptr inbounds %struct.FTP, %struct.FTP* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %128 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %131 = load i32, i32* @FTP_STOP, align 4
  %132 = call i32 @state(%struct.connectdata* %130, i32 %131)
  %133 = load i64, i64* @CURLE_OK, align 8
  store i64 %133, i64* %3, align 8
  br label %148

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134, %109
  br label %139

136:                                              ; preds = %73, %67
  %137 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %138 = call i32 @infof(%struct.Curl_easy* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %135
  br label %140

140:                                              ; preds = %139, %61
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %145 = call i64 @ftp_state_type(%struct.connectdata* %144)
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i64, i64* %6, align 8
  store i64 %147, i64* %3, align 8
  br label %148

148:                                              ; preds = %146, %120, %95
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i64 @curl_getdate(i8*, i64*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @ftp_state_type(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
