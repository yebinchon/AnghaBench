; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_send_doc.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_send_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httprequest = type { i32, i32, i32, i32, i64, i64, i64 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@is_proxy = common dso_local global i64 0, align 8
@RESPONSE_PROXY_DUMP = common dso_local global i8* null, align 8
@RESPONSE_DUMP = common dso_local global i8* null, align 8
@send_doc.weare = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [32 x i8] c"a string to stream 01234567890\0A\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Stopped streaming\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Replying to QUIT\00", align 1
@docquit = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Identifying ourselves as friends\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"WE ROOLZ: %ld\0D\0A\00", align 1
@use_gopher = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Length: %zu\0D\0A\0D\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Replying to with a 404\00", align 1
@doc404 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s%ld\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Send response test%ld section <%s>\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"fopen() failed with error: %d %s\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"  [3] Error opening file: %s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"getpart() failed with error: %d\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"  [4] Error opening file: %s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"postcmd\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"swsclose\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"connection close instruction \22swsclose\22 found in response\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"swsbounce\00", align 1
@prevbounce = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [39 x i8] c"enable \22swsbounce\22 in the next request\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"  [5] Error opening file: %s\00", align 1
@EWOULDBLOCK = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"Pausing %d seconds\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [35 x i8] c"Error closing file %s error: %d %s\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"Sending response failed. Only (%zu bytes) of (%zu bytes) were sent\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Response sent (%zu bytes) and written to %s\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"%31s %d\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Told to sleep for %d seconds\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"wait_ms() failed with error: (%d) %s\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Continuing after sleeping %d seconds\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Unknown command in reply command section\00", align 1
@prevtestno = common dso_local global i32 0, align 4
@prevpartno = common dso_local global i64 0, align 8
@STREAMTHIS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.httprequest*)* @send_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_doc(i32 %0, %struct.httprequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.httprequest*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca [64 x i8], align 16
  %22 = alloca [80 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca [32 x i8], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.httprequest* %1, %struct.httprequest** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %30 = load i8*, i8** @TRUE, align 8
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %33 = load i64, i64* @is_proxy, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i8*, i8** @RESPONSE_PROXY_DUMP, align 8
  br label %39

37:                                               ; preds = %2
  %38 = load i8*, i8** @RESPONSE_DUMP, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i8* [ %36, %35 ], [ %38, %37 ]
  store i8* %40, i8** %19, align 8
  %41 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %42 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %44 [
    i32 129, label %45
    i32 128, label %46
    i32 130, label %62
  ]

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %39, %44
  br label %63

46:                                               ; preds = %39
  store i64 31, i64* %7, align 8
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @swrite(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* @got_exit_signal, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %459

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %61

60:                                               ; preds = %54
  br label %47

61:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %459

62:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %459

63:                                               ; preds = %45
  %64 = load i32, i32* @FALSE, align 4
  %65 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %66 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %68 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %63
  %72 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %73 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %96 [
    i32 132, label %75
    i32 131, label %78
    i32 133, label %95
  ]

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** @docquit, align 8
  store i8* %77, i8** %8, align 8
  br label %99

78:                                               ; preds = %71
  %79 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %81 = call i64 (...) @getpid()
  %82 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %80, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %81)
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %84 = call i64 @strlen(i8* %83)
  store i64 %84, i64* %20, align 8
  %85 = load i64, i64* @use_gopher, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %89 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @send_doc.weare, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %94

90:                                               ; preds = %78
  %91 = load i64, i64* %20, align 8
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %93 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @send_doc.weare, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %91, i8* %92)
  br label %94

94:                                               ; preds = %90, %87
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @send_doc.weare, i64 0, i64 0), i8** %8, align 8
  br label %99

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %71, %95
  %97 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i8*, i8** @doc404, align 8
  store i8* %98, i8** %8, align 8
  br label %99

99:                                               ; preds = %96, %94, %75
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @strlen(i8* %100)
  store i64 %101, i64* %7, align 8
  br label %194

102:                                              ; preds = %63
  %103 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %104 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @test2file(i32 %105)
  store i8* %106, i8** %23, align 8
  %107 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %108 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  store i8* %112, i8** %24, align 8
  %113 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %114 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %102
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %119 = load i8*, i8** %24, align 8
  %120 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %121 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %118, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %119, i64 %122)
  br label %128

124:                                              ; preds = %102
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %126 = load i8*, i8** %24, align 8
  %127 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %125, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %117
  %129 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %130 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %133 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %131, i8* %132)
  %134 = load i8*, i8** %23, align 8
  %135 = call i32* @fopen(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %135, i32** %10, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %128
  %139 = load i32, i32* @errno, align 4
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @strerror(i32 %141)
  %143 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %140, i32 %142)
  %144 = load i8*, i8** %23, align 8
  %145 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %144)
  store i32 0, i32* %3, align 4
  br label %459

146:                                              ; preds = %128
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @getpart(i8** %9, i64* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %147, i32* %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @fclose(i32* %150)
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %17, align 4
  %156 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %155)
  store i32 0, i32* %3, align 4
  br label %459

157:                                              ; preds = %146
  %158 = load i8*, i8** %9, align 8
  store i8* %158, i8** %8, align 8
  br label %159

159:                                              ; preds = %157
  %160 = load i64, i64* @got_exit_signal, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @free(i8* %163)
  store i32 -1, i32* %3, align 4
  br label %459

165:                                              ; preds = %159
  %166 = load i8*, i8** %23, align 8
  %167 = call i32* @fopen(i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %167, i32** %10, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* @errno, align 4
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @strerror(i32 %173)
  %175 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %172, i32 %174)
  %176 = load i8*, i8** %23, align 8
  %177 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %176)
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @free(i8* %178)
  store i32 0, i32* %3, align 4
  br label %459

180:                                              ; preds = %165
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @getpart(i8** %11, i64* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @fclose(i32* %183)
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load i32, i32* %17, align 4
  %189 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %188)
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 @free(i8* %190)
  store i32 0, i32* %3, align 4
  br label %459

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193, %99
  %195 = load i64, i64* @got_exit_signal, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 @free(i8* %198)
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 @free(i8* %200)
  store i32 -1, i32* %3, align 4
  br label %459

202:                                              ; preds = %194
  %203 = load i8*, i8** %8, align 8
  %204 = call i64 @strstr(i8* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %202
  %207 = load i64, i64* %7, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %211 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209, %206, %202
  %215 = load i32, i32* @FALSE, align 4
  store i32 %215, i32* %14, align 4
  %216 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.20, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i8*, i8** %8, align 8
  %219 = call i64 @strstr(i8* %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i8*, i8** @TRUE, align 8
  %223 = ptrtoint i8* %222 to i32
  store i32 %223, i32* @prevbounce, align 4
  %224 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0))
  br label %227

225:                                              ; preds = %217
  %226 = load i32, i32* @FALSE, align 4
  store i32 %226, i32* @prevbounce, align 4
  br label %227

227:                                              ; preds = %225, %221
  %228 = load i8*, i8** %19, align 8
  %229 = call i32* @fopen(i8* %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  store i32* %229, i32** %13, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %244, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* @errno, align 4
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @strerror(i32 %235)
  %237 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %234, i32 %236)
  %238 = load i8*, i8** %19, align 8
  %239 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i8* %238)
  %240 = load i8*, i8** %9, align 8
  %241 = call i32 @free(i8* %240)
  %242 = load i8*, i8** %11, align 8
  %243 = call i32 @free(i8* %242)
  store i32 -1, i32* %3, align 4
  br label %459

244:                                              ; preds = %227
  %245 = load i64, i64* %7, align 8
  store i64 %245, i64* %16, align 8
  br label %246

246:                                              ; preds = %318, %244
  %247 = load i64, i64* %7, align 8
  store i64 %247, i64* %25, align 8
  %248 = load i64, i64* %25, align 8
  %249 = icmp ugt i64 %248, 20
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i64 20, i64* %25, align 8
  br label %251

251:                                              ; preds = %250, %246
  br label %252

252:                                              ; preds = %267, %251
  %253 = load i32, i32* %4, align 4
  %254 = load i8*, i8** %8, align 8
  %255 = load i64, i64* %25, align 8
  %256 = call i64 @swrite(i32 %253, i8* %254, i64 %255)
  store i64 %256, i64* %6, align 8
  %257 = load i64, i64* %6, align 8
  %258 = icmp ult i64 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %252
  %260 = load i64, i64* @EWOULDBLOCK, align 8
  %261 = load i64, i64* @SOCKERRNO, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = load i64, i64* @EAGAIN, align 8
  %265 = load i64, i64* @SOCKERRNO, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %263, %259
  %268 = call i32 @wait_ms(i32 10)
  br label %252

269:                                              ; preds = %263
  %270 = load i8*, i8** @TRUE, align 8
  %271 = ptrtoint i8* %270 to i32
  store i32 %271, i32* %15, align 4
  br label %320

272:                                              ; preds = %252
  %273 = load i8*, i8** %8, align 8
  %274 = load i64, i64* %6, align 8
  %275 = load i32*, i32** %13, align 8
  %276 = call i32 @fwrite(i8* %273, i32 1, i64 %274, i32* %275)
  %277 = load i64, i64* %6, align 8
  %278 = load i64, i64* %7, align 8
  %279 = sub i64 %278, %277
  store i64 %279, i64* %7, align 8
  %280 = load i64, i64* %6, align 8
  %281 = load i8*, i8** %8, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 %280
  store i8* %282, i8** %8, align 8
  %283 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %284 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %310

287:                                              ; preds = %272
  %288 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %289 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %290, 4
  store i32 %291, i32* %26, align 4
  %292 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %293 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %305, %287
  %297 = load i32, i32* %26, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i64, i64* @got_exit_signal, align 8
  %301 = icmp ne i64 %300, 0
  %302 = xor i1 %301, true
  br label %303

303:                                              ; preds = %299, %296
  %304 = phi i1 [ false, %296 ], [ %302, %299 ]
  br i1 %304, label %305, label %309

305:                                              ; preds = %303
  %306 = load i32, i32* %26, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %26, align 4
  %308 = call i32 @wait_ms(i32 250)
  br label %296

309:                                              ; preds = %303
  br label %310

310:                                              ; preds = %309, %272
  br label %311

311:                                              ; preds = %310
  %312 = load i64, i64* %7, align 8
  %313 = icmp ugt i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load i64, i64* @got_exit_signal, align 8
  %316 = icmp ne i64 %315, 0
  %317 = xor i1 %316, true
  br label %318

318:                                              ; preds = %314, %311
  %319 = phi i1 [ false, %311 ], [ %317, %314 ]
  br i1 %319, label %246, label %320

320:                                              ; preds = %318, %269
  br label %321

321:                                              ; preds = %331, %320
  %322 = load i32*, i32** %13, align 8
  %323 = call i32 @fclose(i32* %322)
  store i32 %323, i32* %18, align 4
  br label %324

324:                                              ; preds = %321
  %325 = load i32, i32* %18, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %324
  %328 = load i32, i32* @errno, align 4
  store i32 %328, i32* %17, align 4
  %329 = load i32, i32* @EINTR, align 4
  %330 = icmp eq i32 %328, %329
  br label %331

331:                                              ; preds = %327, %324
  %332 = phi i1 [ false, %324 ], [ %330, %327 ]
  br i1 %332, label %321, label %333

333:                                              ; preds = %331
  %334 = load i32, i32* %18, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = load i8*, i8** %19, align 8
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* %17, align 4
  %340 = call i32 @strerror(i32 %339)
  %341 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i8* %337, i32 %338, i32 %340)
  br label %342

342:                                              ; preds = %336, %333
  %343 = load i64, i64* @got_exit_signal, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %342
  %346 = load i8*, i8** %9, align 8
  %347 = call i32 @free(i8* %346)
  %348 = load i8*, i8** %11, align 8
  %349 = call i32 @free(i8* %348)
  store i32 -1, i32* %3, align 4
  br label %459

350:                                              ; preds = %342
  %351 = load i32, i32* %15, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %350
  %354 = load i64, i64* %16, align 8
  %355 = load i64, i64* %7, align 8
  %356 = sub i64 %354, %355
  %357 = load i64, i64* %16, align 8
  %358 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0), i64 %356, i64 %357)
  %359 = load i8*, i8** %9, align 8
  %360 = call i32 @free(i8* %359)
  %361 = load i8*, i8** %11, align 8
  %362 = call i32 @free(i8* %361)
  store i32 -1, i32* %3, align 4
  br label %459

363:                                              ; preds = %350
  %364 = load i64, i64* %16, align 8
  %365 = load i8*, i8** %19, align 8
  %366 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i64 %364, i8* %365)
  %367 = load i8*, i8** %9, align 8
  %368 = call i32 @free(i8* %367)
  %369 = load i64, i64* %12, align 8
  %370 = icmp ugt i64 %369, 0
  br i1 %370, label %371, label %440

371:                                              ; preds = %363
  %372 = load i8*, i8** %11, align 8
  store i8* %372, i8** %9, align 8
  br label %373

373:                                              ; preds = %437, %371
  %374 = load i8*, i8** %9, align 8
  %375 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 0
  %376 = call i32 @sscanf(i8* %374, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %375, i32* %29)
  %377 = icmp eq i32 2, %376
  br i1 %377, label %378, label %419

378:                                              ; preds = %373
  %379 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 0
  %380 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %416, label %382

382:                                              ; preds = %378
  %383 = load i32, i32* %29, align 4
  %384 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* %29, align 4
  %386 = mul nsw i32 %385, 4
  store i32 %386, i32* %28, align 4
  br label %387

387:                                              ; preds = %408, %382
  %388 = load i32, i32* %28, align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = load i64, i64* @got_exit_signal, align 8
  %392 = icmp ne i64 %391, 0
  %393 = xor i1 %392, true
  br label %394

394:                                              ; preds = %390, %387
  %395 = phi i1 [ false, %387 ], [ %393, %390 ]
  br i1 %395, label %396, label %409

396:                                              ; preds = %394
  %397 = load i32, i32* %28, align 4
  %398 = add nsw i32 %397, -1
  store i32 %398, i32* %28, align 4
  %399 = call i32 @wait_ms(i32 250)
  store i32 %399, i32* %18, align 4
  %400 = load i32, i32* %18, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %396
  %403 = load i32, i32* @errno, align 4
  store i32 %403, i32* %17, align 4
  %404 = load i32, i32* %17, align 4
  %405 = load i32, i32* %17, align 4
  %406 = call i32 @strerror(i32 %405)
  %407 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i32 %404, i32 %406)
  br label %409

408:                                              ; preds = %396
  br label %387

409:                                              ; preds = %402, %394
  %410 = load i32, i32* %28, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %409
  %413 = load i32, i32* %29, align 4
  %414 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %412, %409
  br label %418

416:                                              ; preds = %378
  %417 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0))
  br label %418

418:                                              ; preds = %416, %415
  br label %419

419:                                              ; preds = %418, %373
  %420 = load i8*, i8** %9, align 8
  %421 = call i8* @strchr(i8* %420, i8 signext 10)
  store i8* %421, i8** %9, align 8
  %422 = load i8*, i8** %9, align 8
  %423 = icmp ne i8* %422, null
  br i1 %423, label %424, label %427

424:                                              ; preds = %419
  %425 = load i8*, i8** %9, align 8
  %426 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %426, i8** %9, align 8
  br label %428

427:                                              ; preds = %419
  store i8* null, i8** %9, align 8
  br label %428

428:                                              ; preds = %427, %424
  br label %429

429:                                              ; preds = %428
  %430 = load i8*, i8** %9, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %432, label %437

432:                                              ; preds = %429
  %433 = load i8*, i8** %9, align 8
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp ne i32 %435, 0
  br label %437

437:                                              ; preds = %432, %429
  %438 = phi i1 [ false, %429 ], [ %436, %432 ]
  br i1 %438, label %373, label %439

439:                                              ; preds = %437
  br label %440

440:                                              ; preds = %439, %363
  %441 = load i8*, i8** %11, align 8
  %442 = call i32 @free(i8* %441)
  %443 = load i64, i64* @use_gopher, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %440
  %446 = load i32, i32* @FALSE, align 4
  br label %449

447:                                              ; preds = %440
  %448 = load i32, i32* %14, align 4
  br label %449

449:                                              ; preds = %447, %445
  %450 = phi i32 [ %446, %445 ], [ %448, %447 ]
  %451 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %452 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %451, i32 0, i32 1
  store i32 %450, i32* %452, align 4
  %453 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %454 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  store i32 %455, i32* @prevtestno, align 4
  %456 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %457 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %456, i32 0, i32 4
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* @prevpartno, align 8
  store i32 0, i32* %3, align 4
  br label %459

459:                                              ; preds = %449, %353, %345, %232, %197, %187, %170, %162, %154, %138, %62, %61, %53
  %460 = load i32, i32* %3, align 4
  ret i32 %460
}

declare dso_local i64 @swrite(i32, i8*, i64) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @test2file(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getpart(i8**, i64*, i8*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
