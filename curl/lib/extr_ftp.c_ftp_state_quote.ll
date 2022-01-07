; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_quote.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_5__, %struct.Curl_easy* }
%struct.TYPE_5__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32, i32, i32, i8*, i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.curl_slist*, %struct.curl_slist*, %struct.curl_slist* }
%struct.curl_slist = type { i8*, %struct.curl_slist* }
%struct.TYPE_4__ = type { %struct.FTP* }
%struct.FTP = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FTPTRANSFER_BODY = common dso_local global i32 0, align 4
@FTP_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"RETR %s\00", align 1
@FTP_RETR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"SIZE %s\00", align 1
@FTP_RETR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @ftp_state_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_quote(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.FTP*, align 8
  %10 = alloca %struct.ftp_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.curl_slist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @CURLE_OK, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %17, align 8
  store %struct.Curl_easy* %18, %struct.Curl_easy** %8, align 8
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.FTP*, %struct.FTP** %21, align 8
  store %struct.FTP* %22, %struct.FTP** %9, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.ftp_conn* %25, %struct.ftp_conn** %10, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %29 [
    i32 130, label %28
    i32 129, label %34
    i32 128, label %34
    i32 131, label %39
  ]

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load %struct.curl_slist*, %struct.curl_slist** %32, align 8
  store %struct.curl_slist* %33, %struct.curl_slist** %12, align 8
  br label %44

34:                                               ; preds = %3, %3
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.curl_slist*, %struct.curl_slist** %37, align 8
  store %struct.curl_slist* %38, %struct.curl_slist** %12, align 8
  br label %44

39:                                               ; preds = %3
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.curl_slist*, %struct.curl_slist** %42, align 8
  store %struct.curl_slist* %43, %struct.curl_slist** %12, align 8
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %49 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %55

50:                                               ; preds = %44
  %51 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %52 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  %57 = icmp ne %struct.curl_slist* %56, null
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %62 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  %67 = icmp ne %struct.curl_slist* %66, null
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i1 [ false, %59 ], [ %67, %65 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  %72 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %71, i32 0, i32 1
  %73 = load %struct.curl_slist*, %struct.curl_slist** %72, align 8
  store %struct.curl_slist* %73, %struct.curl_slist** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %59

76:                                               ; preds = %68
  %77 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  %78 = icmp ne %struct.curl_slist* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  %81 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 42
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %14, align 8
  %91 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %92 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %96

93:                                               ; preds = %79
  %94 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %95 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %98 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %97, i32 0, i32 4
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @PPSENDF(i32* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @state(%struct.connectdata* %101, i32 %102)
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %96, %76
  br label %106

106:                                              ; preds = %105, %55
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %176, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  switch i32 %110, label %112 [
    i32 130, label %111
    i32 129, label %115
    i32 128, label %170
    i32 131, label %174
  ]

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %109, %111
  %113 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %114 = call i32 @ftp_state_cwd(%struct.connectdata* %113)
  store i32 %114, i32* %7, align 4
  br label %175

115:                                              ; preds = %109
  %116 = load %struct.FTP*, %struct.FTP** %9, align 8
  %117 = getelementptr inbounds %struct.FTP, %struct.FTP* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @FTPTRANSFER_BODY, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %123 = load i32, i32* @FTP_STOP, align 4
  %124 = call i32 @state(%struct.connectdata* %122, i32 %123)
  br label %169

125:                                              ; preds = %115
  %126 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %127 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %132 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %133 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy* %131, i32 %134)
  %136 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %137 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %138 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ftp_state_retr(%struct.connectdata* %136, i32 %139)
  store i32 %140, i32* %7, align 4
  br label %168

141:                                              ; preds = %125
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %143 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %149 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %148, i32 0, i32 4
  %150 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %151 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @PPSENDF(i32* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %152)
  %154 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %155 = load i32, i32* @FTP_RETR, align 4
  %156 = call i32 @state(%struct.connectdata* %154, i32 %155)
  br label %167

157:                                              ; preds = %141
  %158 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %159 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %158, i32 0, i32 4
  %160 = load %struct.ftp_conn*, %struct.ftp_conn** %10, align 8
  %161 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @PPSENDF(i32* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %162)
  %164 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %165 = load i32, i32* @FTP_RETR_SIZE, align 4
  %166 = call i32 @state(%struct.connectdata* %164, i32 %165)
  br label %167

167:                                              ; preds = %157, %147
  br label %168

168:                                              ; preds = %167, %130
  br label %169

169:                                              ; preds = %168, %121
  br label %175

170:                                              ; preds = %109
  %171 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %172 = load i32, i32* @FALSE, align 4
  %173 = call i32 @ftp_state_ul_setup(%struct.connectdata* %171, i32 %172)
  store i32 %173, i32* %7, align 4
  br label %175

174:                                              ; preds = %109
  br label %175

175:                                              ; preds = %174, %170, %169, %112
  br label %176

176:                                              ; preds = %175, %106
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @PPSENDF(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_cwd(%struct.connectdata*) #1

declare dso_local i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy*, i32) #1

declare dso_local i32 @ftp_state_retr(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_ul_setup(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
