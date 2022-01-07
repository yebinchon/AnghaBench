; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_init_wc_data.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_init_wc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.WildcardData, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, %struct.connectdata*, i32 }
%struct.WildcardData = type { %struct.ftp_wc*, i32, i8*, i8*, i8* }
%struct.ftp_wc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.connectdata*, i32 }
%struct.TYPE_5__ = type { %struct.FTP* }
%struct.FTP = type { i8* }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLWC_CLEAN = common dso_local global i8* null, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@wc_data_dtor = common dso_local global i32 0, align 4
@FTPFILE_NOCWD = common dso_local global i64 0, align 8
@FTPFILE_MULTICWD = common dso_local global i64 0, align 8
@Curl_ftp_parselist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wildcard - Parsing started\0A\00", align 1
@ZERO_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @init_wc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_wc_data(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.FTP*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.WildcardData*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ftp_wc*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.FTP*, %struct.FTP** %14, align 8
  store %struct.FTP* %15, %struct.FTP** %5, align 8
  %16 = load %struct.FTP*, %struct.FTP** %5, align 8
  %17 = getelementptr inbounds %struct.FTP, %struct.FTP* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store %struct.WildcardData* %22, %struct.WildcardData** %7, align 8
  %23 = load i64, i64* @CURLE_OK, align 8
  store i64 %23, i64* %8, align 8
  store %struct.ftp_wc* null, %struct.ftp_wc** %9, align 8
  %24 = load %struct.FTP*, %struct.FTP** %5, align 8
  %25 = getelementptr inbounds %struct.FTP, %struct.FTP* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i8*, i8** @CURLWC_CLEAN, align 8
  %40 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %41 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %43 = call i64 @ftp_parse_url_path(%struct.connectdata* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %2, align 8
  br label %199

45:                                               ; preds = %30
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @strdup(i8* %46)
  %48 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %49 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %51 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %55, i64* %2, align 8
  br label %199

56:                                               ; preds = %45
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  br label %86

59:                                               ; preds = %1
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @strdup(i8* %65)
  %67 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %68 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %70 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %74, i64* %2, align 8
  br label %199

75:                                               ; preds = %64
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 0, i8* %77, align 1
  br label %85

78:                                               ; preds = %59
  %79 = load i8*, i8** @CURLWC_CLEAN, align 8
  %80 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %81 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %83 = call i64 @ftp_parse_url_path(%struct.connectdata* %82)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %2, align 8
  br label %199

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %56
  %87 = call %struct.ftp_wc* @calloc(i32 1, i32 24)
  store %struct.ftp_wc* %87, %struct.ftp_wc** %9, align 8
  %88 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %89 = icmp ne %struct.ftp_wc* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %91, i64* %8, align 8
  br label %179

92:                                               ; preds = %86
  %93 = call i32 (...) @Curl_ftp_parselist_data_alloc()
  %94 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %95 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %97 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %101, i64* %8, align 8
  br label %179

102:                                              ; preds = %92
  %103 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %104 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %105 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %104, i32 0, i32 0
  store %struct.ftp_wc* %103, %struct.ftp_wc** %105, align 8
  %106 = load i32, i32* @wc_data_dtor, align 4
  %107 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %108 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %110 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FTPFILE_NOCWD, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %102
  %118 = load i64, i64* @FTPFILE_MULTICWD, align 8
  %119 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %120 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i64 %118, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %102
  %125 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %126 = call i64 @ftp_parse_url_path(%struct.connectdata* %125)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %179

130:                                              ; preds = %124
  %131 = load %struct.FTP*, %struct.FTP** %5, align 8
  %132 = getelementptr inbounds %struct.FTP, %struct.FTP* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @strdup(i8* %133)
  %135 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %136 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %138 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  %142 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %142, i64* %8, align 8
  br label %179

143:                                              ; preds = %130
  %144 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %145 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %151 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @Curl_ftp_parselist, align 4
  %154 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %155 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i32 %153, i32* %158, align 8
  %159 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %160 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load %struct.connectdata*, %struct.connectdata** %163, align 8
  %165 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %166 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store %struct.connectdata* %164, %struct.connectdata** %167, align 8
  %168 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %169 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %170 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store %struct.connectdata* %168, %struct.connectdata** %173, align 8
  %174 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %175 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = call i32 @infof(%struct.TYPE_8__* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %178 = load i64, i64* @CURLE_OK, align 8
  store i64 %178, i64* %2, align 8
  br label %199

179:                                              ; preds = %141, %129, %100, %90
  %180 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %181 = icmp ne %struct.ftp_wc* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %184 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %183, i32 0, i32 0
  %185 = call i32 @Curl_ftp_parselist_data_free(i32* %184)
  %186 = load %struct.ftp_wc*, %struct.ftp_wc** %9, align 8
  %187 = call i32 @free(%struct.ftp_wc* %186)
  br label %188

188:                                              ; preds = %182, %179
  %189 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %190 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @Curl_safefree(i8* %191)
  %193 = load i32, i32* @ZERO_NULL, align 4
  %194 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %195 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  %196 = load %struct.WildcardData*, %struct.WildcardData** %7, align 8
  %197 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %196, i32 0, i32 0
  store %struct.ftp_wc* null, %struct.ftp_wc** %197, align 8
  %198 = load i64, i64* %8, align 8
  store i64 %198, i64* %2, align 8
  br label %199

199:                                              ; preds = %188, %143, %78, %73, %54, %38
  %200 = load i64, i64* %2, align 8
  ret i64 %200
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @ftp_parse_url_path(%struct.connectdata*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.ftp_wc* @calloc(i32, i32) #1

declare dso_local i32 @Curl_ftp_parselist_data_alloc(...) #1

declare dso_local i32 @infof(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @Curl_ftp_parselist_data_free(i32*) #1

declare dso_local i32 @free(%struct.ftp_wc*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
