; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_wc_statemach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_wc_statemach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.WildcardData, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.WildcardData = type { i32, %struct.ftp_wc*, i32 (%struct.ftp_wc*)*, %struct.TYPE_14__, i32, i32 }
%struct.ftp_wc = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.curl_fileinfo* }
%struct.curl_fileinfo = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 (%struct.curl_fileinfo*, i32, i32)*, i32 (i32)*, i32*, i32 }
%struct.TYPE_11__ = type { %struct.FTP* }
%struct.FTP = type { i8*, i8* }
%struct.TYPE_10__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@ZERO_NULL = common dso_local global i32 0, align 4
@CURLE_REMOTE_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Wildcard - START of \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Wildcard - \22%s\22 skipped by user\0A\00", align 1
@CURLE_CHUNK_FAILED = common dso_local global i32 0, align 4
@CURLFILETYPE_FILE = common dso_local global i32 0, align 4
@CURLFINFOFLAG_KNOWN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @wc_statemach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wc_statemach(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.WildcardData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftp_wc*, align 8
  %7 = alloca %struct.ftp_conn*, align 8
  %8 = alloca %struct.curl_fileinfo*, align 8
  %9 = alloca %struct.FTP*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ftp_wc*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store %struct.WildcardData* %16, %struct.WildcardData** %4, align 8
  %17 = load i32, i32* @CURLE_OK, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %19 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %313 [
    i32 132, label %21
    i32 131, label %36
    i32 134, label %90
    i32 130, label %231
    i32 137, label %280
    i32 135, label %299
    i32 133, label %299
    i32 136, label %299
  ]

21:                                               ; preds = %1
  %22 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %23 = call i32 @init_wc_data(%struct.connectdata* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %25 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 137
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %313

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 133, i32 131
  %34 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %35 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %313

36:                                               ; preds = %1
  %37 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %38 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %37, i32 0, i32 1
  %39 = load %struct.ftp_wc*, %struct.ftp_wc** %38, align 8
  store %struct.ftp_wc* %39, %struct.ftp_wc** %6, align 8
  %40 = load %struct.ftp_wc*, %struct.ftp_wc** %6, align 8
  %41 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %45 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  store i32 %43, i32* %48, align 8
  %49 = load %struct.ftp_wc*, %struct.ftp_wc** %6, align 8
  %50 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i32* %52, i32** %57, align 8
  %58 = load i32, i32* @ZERO_NULL, align 4
  %59 = load %struct.ftp_wc*, %struct.ftp_wc** %6, align 8
  %60 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.ftp_wc*, %struct.ftp_wc** %6, align 8
  %63 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %66 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %65, i32 0, i32 0
  store i32 134, i32* %66, align 8
  %67 = load %struct.ftp_wc*, %struct.ftp_wc** %6, align 8
  %68 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @Curl_ftp_parselist_geterror(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %36
  %73 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %74 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %73, i32 0, i32 0
  store i32 137, i32* %74, align 8
  %75 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %76 = call i32 @wc_statemach(%struct.connectdata* %75)
  store i32 %76, i32* %2, align 4
  br label %315

77:                                               ; preds = %36
  %78 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %79 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %85 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %84, i32 0, i32 0
  store i32 137, i32* %85, align 8
  %86 = load i32, i32* @CURLE_REMOTE_FILE_NOT_FOUND, align 4
  store i32 %86, i32* %2, align 4
  br label %315

87:                                               ; preds = %77
  %88 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %89 = call i32 @wc_statemach(%struct.connectdata* %88)
  store i32 %89, i32* %2, align 4
  br label %315

90:                                               ; preds = %1
  %91 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %92 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store %struct.ftp_conn* %93, %struct.ftp_conn** %7, align 8
  %94 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %95 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %98, align 8
  store %struct.curl_fileinfo* %99, %struct.curl_fileinfo** %8, align 8
  %100 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %101 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.FTP*, %struct.FTP** %104, align 8
  store %struct.FTP* %105, %struct.FTP** %9, align 8
  %106 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %107 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %110 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @aprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111)
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %90
  %116 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %116, i32* %2, align 4
  br label %315

117:                                              ; preds = %90
  %118 = load %struct.FTP*, %struct.FTP** %9, align 8
  %119 = getelementptr inbounds %struct.FTP, %struct.FTP* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.FTP*, %struct.FTP** %9, align 8
  %124 = getelementptr inbounds %struct.FTP, %struct.FTP* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.FTP*, %struct.FTP** %9, align 8
  %126 = getelementptr inbounds %struct.FTP, %struct.FTP* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  %127 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %128 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %131 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @infof(%struct.TYPE_13__* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %135 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64 (%struct.curl_fileinfo*, i32, i32)*, i64 (%struct.curl_fileinfo*, i32, i32)** %138, align 8
  %140 = icmp ne i64 (%struct.curl_fileinfo*, i32, i32)* %139, null
  br i1 %140, label %141, label %182

141:                                              ; preds = %117
  %142 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %143 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = call i32 @Curl_set_in_callback(%struct.TYPE_13__* %144, i32 1)
  %146 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %147 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64 (%struct.curl_fileinfo*, i32, i32)*, i64 (%struct.curl_fileinfo*, i32, i32)** %150, align 8
  %152 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %153 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %154 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %157 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i64 %151(%struct.curl_fileinfo* %152, i32 %155, i32 %160)
  store i64 %161, i64* %11, align 8
  %162 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %163 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = call i32 @Curl_set_in_callback(%struct.TYPE_13__* %164, i32 0)
  %166 = load i64, i64* %11, align 8
  switch i64 %166, label %181 [
    i64 128, label %167
    i64 129, label %179
  ]

167:                                              ; preds = %141
  %168 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %169 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %168, i32 0, i32 0
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %172 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @infof(%struct.TYPE_13__* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %176 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %175, i32 0, i32 0
  store i32 130, i32* %176, align 8
  %177 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %178 = call i32 @wc_statemach(%struct.connectdata* %177)
  store i32 %178, i32* %2, align 4
  br label %315

179:                                              ; preds = %141
  %180 = load i32, i32* @CURLE_CHUNK_FAILED, align 4
  store i32 %180, i32* %2, align 4
  br label %315

181:                                              ; preds = %141
  br label %182

182:                                              ; preds = %181, %117
  %183 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %184 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CURLFILETYPE_FILE, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %190 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %189, i32 0, i32 0
  store i32 130, i32* %190, align 8
  %191 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %192 = call i32 @wc_statemach(%struct.connectdata* %191)
  store i32 %192, i32* %2, align 4
  br label %315

193:                                              ; preds = %182
  %194 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %195 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CURLFINFOFLAG_KNOWN_SIZE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %8, align 8
  %202 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %205 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %200, %193
  %207 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %208 = call i32 @ftp_parse_url_path(%struct.connectdata* %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* %2, align 4
  br label %315

213:                                              ; preds = %206
  %214 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %215 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %214, i32 0, i32 3
  %216 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %217 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = call i32 @Curl_llist_remove(%struct.TYPE_14__* %215, %struct.TYPE_15__* %219, i32* null)
  %221 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %222 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %213
  %227 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %228 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %227, i32 0, i32 0
  store i32 137, i32* %228, align 8
  %229 = load i32, i32* @CURLE_OK, align 4
  store i32 %229, i32* %2, align 4
  br label %315

230:                                              ; preds = %213
  br label %313

231:                                              ; preds = %1
  %232 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %233 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %232, i32 0, i32 0
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i32 (i32)*, i32 (i32)** %236, align 8
  %238 = icmp ne i32 (i32)* %237, null
  br i1 %238, label %239, label %261

239:                                              ; preds = %231
  %240 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %241 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %240, i32 0, i32 0
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = call i32 @Curl_set_in_callback(%struct.TYPE_13__* %242, i32 1)
  %244 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %245 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %244, i32 0, i32 0
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i32 (i32)*, i32 (i32)** %248, align 8
  %250 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %251 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %250, i32 0, i32 0
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i32 %249(i32 %255)
  %257 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %258 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %257, i32 0, i32 0
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = call i32 @Curl_set_in_callback(%struct.TYPE_13__* %259, i32 0)
  br label %261

261:                                              ; preds = %239, %231
  %262 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %263 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %262, i32 0, i32 3
  %264 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %265 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %266, align 8
  %268 = call i32 @Curl_llist_remove(%struct.TYPE_14__* %263, %struct.TYPE_15__* %267, i32* null)
  %269 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %270 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i32 137, i32 134
  %276 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %277 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %279 = call i32 @wc_statemach(%struct.connectdata* %278)
  store i32 %279, i32* %2, align 4
  br label %315

280:                                              ; preds = %1
  %281 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %282 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %281, i32 0, i32 1
  %283 = load %struct.ftp_wc*, %struct.ftp_wc** %282, align 8
  store %struct.ftp_wc* %283, %struct.ftp_wc** %12, align 8
  %284 = load i32, i32* @CURLE_OK, align 4
  store i32 %284, i32* %5, align 4
  %285 = load %struct.ftp_wc*, %struct.ftp_wc** %12, align 8
  %286 = icmp ne %struct.ftp_wc* %285, null
  br i1 %286, label %287, label %292

287:                                              ; preds = %280
  %288 = load %struct.ftp_wc*, %struct.ftp_wc** %12, align 8
  %289 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @Curl_ftp_parselist_geterror(i32 %290)
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %287, %280
  %293 = load i32, i32* %5, align 4
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 133, i32 135
  %297 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %298 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  br label %313

299:                                              ; preds = %1, %1, %1
  %300 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %301 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %300, i32 0, i32 2
  %302 = load i32 (%struct.ftp_wc*)*, i32 (%struct.ftp_wc*)** %301, align 8
  %303 = icmp ne i32 (%struct.ftp_wc*)* %302, null
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %306 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %305, i32 0, i32 2
  %307 = load i32 (%struct.ftp_wc*)*, i32 (%struct.ftp_wc*)** %306, align 8
  %308 = load %struct.WildcardData*, %struct.WildcardData** %4, align 8
  %309 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %308, i32 0, i32 1
  %310 = load %struct.ftp_wc*, %struct.ftp_wc** %309, align 8
  %311 = call i32 %307(%struct.ftp_wc* %310)
  br label %312

312:                                              ; preds = %304, %299
  br label %313

313:                                              ; preds = %1, %312, %292, %230, %29, %28
  %314 = load i32, i32* %5, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %313, %261, %226, %211, %188, %179, %167, %115, %87, %83, %72
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @init_wc_data(%struct.connectdata*) #1

declare dso_local i32 @Curl_ftp_parselist_geterror(i32) #1

declare dso_local i8* @aprintf(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @infof(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @Curl_set_in_callback(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ftp_parse_url_path(%struct.connectdata*) #1

declare dso_local i32 @Curl_llist_remove(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
