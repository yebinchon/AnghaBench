; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpParseHead.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpParseHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, i8*, i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"context:%p, fd:%d, ip:%s, Content-Length:%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Accept-Encoding: \00", align 1
@tsHttpEnableCompress = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@HTTP_COMPRESS_GZIP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"context:%p, fd:%d, ip:%s, Accept-Encoding:gzip\00", align 1
@HTTP_COMPRESS_IDENTITY = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"context:%p, fd:%d, ip:%s, Accept-Encoding:identity\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Content-Encoding: \00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"context:%p, fd:%d, ip:%s, Content-Encoding:gzip\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"context:%p, fd:%d, ip:%s, Content-Encoding:identity\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Connection: \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@HTTP_KEEPALIVE_ENABLE = common dso_local global i64 0, align 8
@HTTP_KEEPALIVE_DISABLE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"context:%p, fd:%d, ip:%s, keepAlive:%d\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Transfer-Encoding: \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@HTTP_CHUNKED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"Authorization: \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Basic \00", align 1
@HTTP_INVALID_BASIC_AUTH_TOKEN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"Taosd \00", align 1
@HTTP_INVALID_TAOSD_AUTH_TOKEN = common dso_local global i32 0, align 4
@HTTP_INVALID_AUTH_TOKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpParseHead(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 6
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @strncasecmp(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 16
  %19 = call i64 @atoi(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %23, i32 %26, i32 %29, i64 %33)
  br label %275

35:                                               ; preds = %1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strncasecmp(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 17)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load i64, i64* @tsHttpEnableCompress, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 17
  %49 = call i32* @strstr(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i8*, i8** @HTTP_COMPRESS_GZIP, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %55, i32 %58, i32 %61)
  br label %75

63:                                               ; preds = %44, %41
  %64 = load i8*, i8** @HTTP_COMPRESS_IDENTITY, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %63, %51
  br label %274

76:                                               ; preds = %35
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @strncasecmp(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 18)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 18
  %87 = call i32* @strstr(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load i8*, i8** @HTTP_COMPRESS_GZIP, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_13__* %93, i32 %96, i32 %99)
  br label %113

101:                                              ; preds = %82
  %102 = load i8*, i8** @HTTP_COMPRESS_IDENTITY, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_13__* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %101, %89
  br label %273

114:                                              ; preds = %76
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @strncasecmp(i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %114
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 12
  %125 = call i64 @strncasecmp(i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 10)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i64, i64* @HTTP_KEEPALIVE_ENABLE, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %135

131:                                              ; preds = %120
  %132 = load i64, i64* @HTTP_KEEPALIVE_DISABLE, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, %struct.TYPE_13__*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_13__* %136, i32 %139, i32 %142, i64 %145)
  br label %272

147:                                              ; preds = %114
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @strncasecmp(i32 %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 19)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 19
  %158 = call i64 @strncasecmp(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 7)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @HTTP_CHUNKED, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %153
  br label %271

165:                                              ; preds = %147
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @strncasecmp(i32 %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 15)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %269

171:                                              ; preds = %165
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 15
  %176 = call i64 @strncasecmp(i32 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 6)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %217

178:                                              ; preds = %171
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 21
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %188, %192
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  store i8* %196, i8** %199, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @httpParseBasicAuthToken(%struct.TYPE_13__* %200, i32 %204, i8* %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %178
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %214 = load i32, i32* @HTTP_INVALID_BASIC_AUTH_TOKEN, align 4
  %215 = call i32 @httpSendErrorResp(%struct.TYPE_13__* %213, i32 %214)
  store i32 0, i32* %2, align 4
  br label %276

216:                                              ; preds = %178
  br label %268

217:                                              ; preds = %171
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 15
  %222 = call i64 @strncasecmp(i32 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 6)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %263

224:                                              ; preds = %217
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 21
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  store i32 %228, i32* %231, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %234, %238
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i8* %242, i8** %245, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @httpParseTaosdAuthToken(%struct.TYPE_13__* %246, i32 %250, i8* %254)
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %224
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %260 = load i32, i32* @HTTP_INVALID_TAOSD_AUTH_TOKEN, align 4
  %261 = call i32 @httpSendErrorResp(%struct.TYPE_13__* %259, i32 %260)
  store i32 0, i32* %2, align 4
  br label %276

262:                                              ; preds = %224
  br label %267

263:                                              ; preds = %217
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %265 = load i32, i32* @HTTP_INVALID_AUTH_TOKEN, align 4
  %266 = call i32 @httpSendErrorResp(%struct.TYPE_13__* %264, i32 %265)
  store i32 0, i32* %2, align 4
  br label %276

267:                                              ; preds = %262
  br label %268

268:                                              ; preds = %267, %216
  br label %270

269:                                              ; preds = %165
  br label %270

270:                                              ; preds = %269, %268
  br label %271

271:                                              ; preds = %270, %164
  br label %272

272:                                              ; preds = %271, %135
  br label %273

273:                                              ; preds = %272, %113
  br label %274

274:                                              ; preds = %273, %75
  br label %275

275:                                              ; preds = %274, %14
  store i32 1, i32* %2, align 4
  br label %276

276:                                              ; preds = %275, %263, %258, %212
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i64 @strncasecmp(i32, i8*, i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_13__*, i32, i32, ...) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @httpParseBasicAuthToken(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @httpParseTaosdAuthToken(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
