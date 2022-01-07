; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_check_telnet_options.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_check_telnet_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_5__, %struct.Curl_easy* }
%struct.TYPE_5__ = type { i64 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.curl_slist* }
%struct.curl_slist = type { i8*, %struct.curl_slist* }
%struct.TYPE_4__ = type { i64 }
%struct.TELNET = type { i8, i8, %struct.curl_slist*, i8**, i8**, i64*, i64* }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"USER,%s\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURL_YES = common dso_local global i8* null, align 8
@CURL_TELOPT_NEW_ENVIRON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%127[^= ]%*[ =]%255s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"TTYPE\00", align 1
@CURL_TELOPT_TTYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"XDISPLOC\00", align 1
@CURL_TELOPT_XDISPLOC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"NEW_ENV\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"WS\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%hu%*[xX]%hu\00", align 1
@CURL_TELOPT_NAWS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Syntax error in telnet option: %s\00", align 1
@CURLE_TELNET_OPTION_SYNTAX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@CURL_NO = common dso_local global i8* null, align 8
@CURL_TELOPT_BINARY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Unknown telnet option %s\00", align 1
@CURLE_UNKNOWN_OPTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @check_telnet_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_telnet_options(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.TELNET*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %12 = bitcast [128 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 128, i1 false)
  %13 = bitcast [256 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 256, i1 false)
  %14 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 2
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %8, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 2
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %18, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TELNET*
  store %struct.TELNET* %23, %struct.TELNET** %9, align 8
  %24 = load i64, i64* @CURLE_OK, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %1
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %32 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @msnprintf(i8* %31, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %37 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %36, i32 0, i32 2
  %38 = load %struct.curl_slist*, %struct.curl_slist** %37, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %40 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %38, i8* %39)
  store %struct.curl_slist* %40, %struct.curl_slist** %5, align 8
  %41 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %42 = icmp ne %struct.curl_slist* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %45 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %44, i32 0, i32 2
  %46 = load %struct.curl_slist*, %struct.curl_slist** %45, align 8
  %47 = call i32 @curl_slist_free_all(%struct.curl_slist* %46)
  %48 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %49 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %48, i32 0, i32 2
  store %struct.curl_slist* null, %struct.curl_slist** %49, align 8
  %50 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %50, i64* %2, align 8
  br label %221

51:                                               ; preds = %30
  %52 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %53 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %54 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %53, i32 0, i32 2
  store %struct.curl_slist* %52, %struct.curl_slist** %54, align 8
  %55 = load i8*, i8** @CURL_YES, align 8
  %56 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %57 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %56, i32 0, i32 4
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* @CURL_TELOPT_NEW_ENVIRON, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %55, i8** %60, align 8
  br label %61

61:                                               ; preds = %51, %1
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.curl_slist*, %struct.curl_slist** %64, align 8
  store %struct.curl_slist* %65, %struct.curl_slist** %4, align 8
  br label %66

66:                                               ; preds = %205, %61
  %67 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %68 = icmp ne %struct.curl_slist* %67, null
  br i1 %68, label %69, label %209

69:                                               ; preds = %66
  %70 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %71 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %75 = call i32 @sscanf(i8* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %74)
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %198

77:                                               ; preds = %69
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %79 = call i64 @strcasecompare(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %83 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %82, i32 0, i32 6
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %86 = call i32 @strncpy(i64* %84, i8* %85, i32 31)
  %87 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %88 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %87, i32 0, i32 6
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 31
  store i64 0, i64* %90, align 8
  %91 = load i8*, i8** @CURL_YES, align 8
  %92 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %93 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %92, i32 0, i32 4
  %94 = load i8**, i8*** %93, align 8
  %95 = load i64, i64* @CURL_TELOPT_TTYPE, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  store i8* %91, i8** %96, align 8
  br label %205

97:                                               ; preds = %77
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %99 = call i64 @strcasecompare(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %103 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %102, i32 0, i32 5
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %106 = call i32 @strncpy(i64* %104, i8* %105, i32 127)
  %107 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %108 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %107, i32 0, i32 5
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 127
  store i64 0, i64* %110, align 8
  %111 = load i8*, i8** @CURL_YES, align 8
  %112 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %113 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %112, i32 0, i32 4
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* @CURL_TELOPT_XDISPLOC, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  store i8* %111, i8** %116, align 8
  br label %205

117:                                              ; preds = %97
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %119 = call i64 @strcasecompare(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %123 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %122, i32 0, i32 2
  %124 = load %struct.curl_slist*, %struct.curl_slist** %123, align 8
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %126 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %124, i8* %125)
  store %struct.curl_slist* %126, %struct.curl_slist** %5, align 8
  %127 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %128 = icmp ne %struct.curl_slist* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %121
  %130 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %130, i64* %10, align 8
  br label %209

131:                                              ; preds = %121
  %132 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %133 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %134 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %133, i32 0, i32 2
  store %struct.curl_slist* %132, %struct.curl_slist** %134, align 8
  %135 = load i8*, i8** @CURL_YES, align 8
  %136 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %137 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %136, i32 0, i32 4
  %138 = load i8**, i8*** %137, align 8
  %139 = load i64, i64* @CURL_TELOPT_NEW_ENVIRON, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* %135, i8** %140, align 8
  br label %205

141:                                              ; preds = %117
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %143 = call i64 @strcasecompare(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %141
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %147 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %148 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %147, i32 0, i32 0
  %149 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %150 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %149, i32 0, i32 1
  %151 = call i32 @sscanf(i8* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %148, i8* %150)
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i8*, i8** @CURL_YES, align 8
  %155 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %156 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %155, i32 0, i32 4
  %157 = load i8**, i8*** %156, align 8
  %158 = load i64, i64* @CURL_TELOPT_NAWS, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  store i8* %154, i8** %159, align 8
  br label %167

160:                                              ; preds = %145
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %162 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %163 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @failf(%struct.Curl_easy* %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  %166 = load i64, i64* @CURLE_TELNET_OPTION_SYNTAX, align 8
  store i64 %166, i64* %10, align 8
  br label %209

167:                                              ; preds = %153
  br label %205

168:                                              ; preds = %141
  %169 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %170 = call i64 @strcasecompare(i8* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %168
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %174 = call i32 @atoi(i8* %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 1
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = load i8*, i8** @CURL_NO, align 8
  %179 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %180 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %179, i32 0, i32 4
  %181 = load i8**, i8*** %180, align 8
  %182 = load i64, i64* @CURL_TELOPT_BINARY, align 8
  %183 = getelementptr inbounds i8*, i8** %181, i64 %182
  store i8* %178, i8** %183, align 8
  %184 = load i8*, i8** @CURL_NO, align 8
  %185 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %186 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %185, i32 0, i32 3
  %187 = load i8**, i8*** %186, align 8
  %188 = load i64, i64* @CURL_TELOPT_BINARY, align 8
  %189 = getelementptr inbounds i8*, i8** %187, i64 %188
  store i8* %184, i8** %189, align 8
  br label %190

190:                                              ; preds = %177, %172
  br label %205

191:                                              ; preds = %168
  %192 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %193 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %194 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @failf(%struct.Curl_easy* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %195)
  %197 = load i64, i64* @CURLE_UNKNOWN_OPTION, align 8
  store i64 %197, i64* %10, align 8
  br label %209

198:                                              ; preds = %69
  %199 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %200 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %201 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @failf(%struct.Curl_easy* %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %202)
  %204 = load i64, i64* @CURLE_TELNET_OPTION_SYNTAX, align 8
  store i64 %204, i64* %10, align 8
  br label %209

205:                                              ; preds = %190, %167, %131, %101, %81
  %206 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %207 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %206, i32 0, i32 1
  %208 = load %struct.curl_slist*, %struct.curl_slist** %207, align 8
  store %struct.curl_slist* %208, %struct.curl_slist** %4, align 8
  br label %66

209:                                              ; preds = %198, %191, %160, %129, %66
  %210 = load i64, i64* %10, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %214 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %213, i32 0, i32 2
  %215 = load %struct.curl_slist*, %struct.curl_slist** %214, align 8
  %216 = call i32 @curl_slist_free_all(%struct.curl_slist* %215)
  %217 = load %struct.TELNET*, %struct.TELNET** %9, align 8
  %218 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %217, i32 0, i32 2
  store %struct.curl_slist* null, %struct.curl_slist** %218, align 8
  br label %219

219:                                              ; preds = %212, %209
  %220 = load i64, i64* %10, align 8
  store i64 %220, i64* %2, align 8
  br label %221

221:                                              ; preds = %219, %43
  %222 = load i64, i64* %2, align 8
  ret i64 %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #2

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @strcasecompare(i8*, i8*) #2

declare dso_local i32 @strncpy(i64*, i8*, i32) #2

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
