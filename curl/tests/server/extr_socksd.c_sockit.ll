; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_sockit.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_sockit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32 }

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"READ %d bytes\00", align 1
@SOCKS5_VERSION = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"VERSION byte not %d\00", align 1
@SOCKS5_NMETHODS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"NMETHODS byte not within %d - %d \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Expected %d bytes, got %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Incoming request deemed fine!\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Sending response failed!\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Sent %d bytes\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Too short auth input: %d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Auth VERSION byte not 1, got %d\00", align 1
@SOCKS5_ULEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Too short packet for username: %d\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Too short packet for ulen %d plen %d: %d\00", align 1
@SOCKS5_UNAME = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"mismatched credentials!\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Sending auth response failed!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Too short for request: %d\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Request VERSION byte not %d\00", align 1
@SOCKS5_REQCMD = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"Request COMMAND byte not %d\00", align 1
@SOCKS5_RESERVED = common dso_local global i64 0, align 8
@SOCKS5_ATYP = common dso_local global i64 0, align 8
@SOCKS5_DSTADDR = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"Unknown ATYP %d\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Request too short: %d, expected %d\00", align 1
@SOCKS5_REP = common dso_local global i64 0, align 8
@SOCKS5_BNDADDR = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"Sending connect response failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @sockit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sockit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [272 x i8], align 16
  %5 = alloca [272 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8 0, i8* %9, align 1
  %18 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %18, i64* %12, align 8
  %19 = call i32 (...) @getconfig()
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %22 = call zeroext i8 @recv(i64 %20, i8* %21, i32 272, i32 0)
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %27 = load i8, i8* %6, align 1
  %28 = call i32 @loghex(i8* %26, i8 zeroext %27)
  %29 = load i64, i64* @SOCKS5_VERSION, align 8
  %30 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %37 = load i8, i8* %6, align 1
  %38 = call i64 @socks4(i64 %35, i8* %36, i8 zeroext %37)
  store i64 %38, i64* %2, align 8
  br label %446

39:                                               ; preds = %1
  %40 = load i64, i64* @SOCKS5_VERSION, align 8
  %41 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %49 = zext i8 %48 to i32
  %50 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %51, i64* %2, align 8
  br label %446

52:                                               ; preds = %39
  %53 = load i64, i64* @SOCKS5_NMETHODS, align 8
  %54 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i64, i64* @SOCKS5_NMETHODS, align 8
  %62 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 2
  %66 = zext i8 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60, %52
  %69 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 2
  %72 = zext i8 %71 to i32
  %73 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %72)
  %74 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %74, i64* %2, align 8
  br label %446

75:                                               ; preds = %60
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = load i64, i64* @SOCKS5_NMETHODS, align 8
  %79 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nsw i32 %81, 2
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load i64, i64* @SOCKS5_NMETHODS, align 8
  %86 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %88, 2
  %90 = load i8, i8* %6, align 1
  %91 = zext i8 %90 to i32
  %92 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %91)
  %93 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %93, i64* %2, align 8
  br label %446

94:                                               ; preds = %75
  %95 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 1
  %97 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  store i8 %96, i8* %97, align 16
  %98 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 4
  %99 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 1
  store i8 %98, i8* %99, align 1
  %100 = load i64, i64* %3, align 8
  %101 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %6, align 1
  %102 = load i8, i8* %6, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 2
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %107, i64* %2, align 8
  br label %446

108:                                              ; preds = %94
  %109 = load i8, i8* %6, align 1
  %110 = zext i8 %109 to i32
  %111 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  %113 = load i8, i8* %6, align 1
  %114 = call i32 @loghex(i8* %112, i8 zeroext %113)
  %115 = load i64, i64* %3, align 8
  %116 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %117 = call zeroext i8 @recv(i64 %115, i8* %116, i32 272, i32 0)
  store i8 %117, i8* %6, align 1
  %118 = load i8, i8* %6, align 1
  %119 = zext i8 %118 to i32
  %120 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %122 = load i8, i8* %6, align 1
  %123 = call i32 @loghex(i8* %121, i8 zeroext %122)
  %124 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 4
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %263

127:                                              ; preds = %108
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %16, align 4
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp slt i32 %130, 5
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i8, i8* %6, align 1
  %134 = zext i8 %133 to i32
  %135 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %136, i64* %2, align 8
  br label %446

137:                                              ; preds = %127
  %138 = load i64, i64* @SOCKS5_VERSION, align 8
  %139 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i64, i64* @SOCKS5_VERSION, align 8
  %145 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %149, i64* %2, align 8
  br label %446

150:                                              ; preds = %137
  %151 = load i64, i64* @SOCKS5_ULEN, align 8
  %152 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  store i8 %153, i8* %14, align 1
  %154 = load i8, i8* %6, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* %14, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 4, %157
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load i8, i8* %6, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %164, i64* %2, align 8
  br label %446

165:                                              ; preds = %150
  %166 = load i64, i64* @SOCKS5_ULEN, align 8
  %167 = load i8, i8* %14, align 1
  %168 = zext i8 %167 to i64
  %169 = add i64 %166, %168
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1
  store i8 %172, i8* %15, align 1
  %173 = load i8, i8* %6, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* %14, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 3, %176
  %178 = load i8, i8* %15, align 1
  %179 = zext i8 %178 to i32
  %180 = add nsw i32 %177, %179
  %181 = icmp slt i32 %174, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %165
  %183 = load i8, i8* %14, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8, i8* %15, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* %6, align 1
  %188 = zext i8 %187 to i32
  %189 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %184, i32 %186, i32 %188)
  %190 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %190, i64* %2, align 8
  br label %446

191:                                              ; preds = %165
  %192 = load i8, i8* %14, align 1
  %193 = zext i8 %192 to i32
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 4
  %195 = call zeroext i8 @strlen(i32 %194)
  %196 = zext i8 %195 to i32
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %223, label %198

198:                                              ; preds = %191
  %199 = load i8, i8* %15, align 1
  %200 = zext i8 %199 to i32
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 4
  %202 = call zeroext i8 @strlen(i32 %201)
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %223, label %205

205:                                              ; preds = %198
  %206 = load i64, i64* @SOCKS5_UNAME, align 8
  %207 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %206
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 4
  %209 = load i8, i8* %14, align 1
  %210 = call i64 @memcmp(i8* %207, i32 %208, i8 zeroext %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %205
  %213 = load i64, i64* @SOCKS5_UNAME, align 8
  %214 = load i8, i8* %14, align 1
  %215 = zext i8 %214 to i64
  %216 = add i64 %213, %215
  %217 = add i64 %216, 1
  %218 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %217
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 4
  %220 = load i8, i8* %15, align 1
  %221 = call i64 @memcmp(i8* %218, i32 %219, i8 zeroext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %212, %205, %198, %191
  %224 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %225 = load i32, i32* @FALSE, align 4
  store i32 %225, i32* %16, align 4
  br label %226

226:                                              ; preds = %223, %212
  %227 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  store i8 1, i8* %227, align 16
  %228 = load i32, i32* %16, align 4
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 0, i32 1
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 1
  store i8 %232, i8* %233, align 1
  %234 = load i64, i64* %3, align 8
  %235 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %6, align 1
  %236 = load i8, i8* %6, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp ne i32 %237, 2
  br i1 %238, label %239, label %242

239:                                              ; preds = %226
  %240 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %241 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %241, i64* %2, align 8
  br label %446

242:                                              ; preds = %226
  %243 = load i8, i8* %6, align 1
  %244 = zext i8 %243 to i32
  %245 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %244)
  %246 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  %247 = load i8, i8* %6, align 1
  %248 = call i32 @loghex(i8* %246, i8 zeroext %247)
  %249 = load i32, i32* %16, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %242
  %252 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %252, i64* %2, align 8
  br label %446

253:                                              ; preds = %242
  %254 = load i64, i64* %3, align 8
  %255 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %256 = call zeroext i8 @recv(i64 %254, i8* %255, i32 272, i32 0)
  store i8 %256, i8* %6, align 1
  %257 = load i8, i8* %6, align 1
  %258 = zext i8 %257 to i32
  %259 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %258)
  %260 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 0
  %261 = load i8, i8* %6, align 1
  %262 = call i32 @loghex(i8* %260, i8 zeroext %261)
  br label %263

263:                                              ; preds = %253, %108
  %264 = load i8, i8* %6, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp slt i32 %265, 6
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load i8, i8* %6, align 1
  %269 = zext i8 %268 to i32
  %270 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %269)
  %271 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %271, i64* %2, align 8
  br label %446

272:                                              ; preds = %263
  %273 = load i64, i64* @SOCKS5_VERSION, align 8
  %274 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %278 = zext i8 %277 to i32
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %272
  %281 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %282 = zext i8 %281 to i32
  %283 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %282)
  %284 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %284, i64* %2, align 8
  br label %446

285:                                              ; preds = %272
  %286 = load i64, i64* @SOCKS5_REQCMD, align 8
  %287 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 1
  %291 = zext i8 %290 to i32
  %292 = icmp ne i32 %289, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %285
  %294 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 1
  %295 = zext i8 %294 to i32
  %296 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %295)
  %297 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %297, i64* %2, align 8
  br label %446

298:                                              ; preds = %285
  %299 = load i64, i64* @SOCKS5_RESERVED, align 8
  %300 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %298
  %305 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 1
  %306 = zext i8 %305 to i32
  %307 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %306)
  %308 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %308, i64* %2, align 8
  br label %446

309:                                              ; preds = %298
  %310 = load i64, i64* @SOCKS5_ATYP, align 8
  %311 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %310
  %312 = load i8, i8* %311, align 1
  store i8 %312, i8* %8, align 1
  %313 = load i64, i64* @SOCKS5_DSTADDR, align 8
  %314 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %313
  store i8* %314, i8** %10, align 8
  %315 = load i8, i8* %8, align 1
  %316 = zext i8 %315 to i32
  switch i32 %316, label %325 [
    i32 1, label %317
    i32 3, label %318
    i32 4, label %324
  ]

317:                                              ; preds = %309
  store i8 4, i8* %7, align 1
  br label %330

318:                                              ; preds = %309
  %319 = load i64, i64* @SOCKS5_DSTADDR, align 8
  %320 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %319
  %321 = load i8, i8* %320, align 1
  store i8 %321, i8* %7, align 1
  %322 = load i8, i8* %7, align 1
  %323 = add i8 %322, 1
  store i8 %323, i8* %7, align 1
  br label %330

324:                                              ; preds = %309
  store i8 16, i8* %7, align 1
  br label %330

325:                                              ; preds = %309
  %326 = load i8, i8* %8, align 1
  %327 = zext i8 %326 to i32
  %328 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %327)
  %329 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %329, i64* %2, align 8
  br label %446

330:                                              ; preds = %324, %318, %317
  %331 = load i8, i8* %6, align 1
  %332 = zext i8 %331 to i32
  %333 = load i8, i8* %7, align 1
  %334 = zext i8 %333 to i32
  %335 = add nsw i32 4, %334
  %336 = add nsw i32 %335, 2
  %337 = icmp slt i32 %332, %336
  br i1 %337, label %338, label %347

338:                                              ; preds = %330
  %339 = load i8, i8* %6, align 1
  %340 = zext i8 %339 to i32
  %341 = load i8, i8* %7, align 1
  %342 = zext i8 %341 to i32
  %343 = add nsw i32 4, %342
  %344 = add nsw i32 %343, 2
  %345 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %340, i32 %344)
  %346 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %346, i64* %2, align 8
  br label %446

347:                                              ; preds = %330
  %348 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 2
  %349 = icmp ne i16 %348, 0
  br i1 %349, label %367, label %350

350:                                              ; preds = %347
  %351 = load i64, i64* @SOCKS5_DSTADDR, align 8
  %352 = load i8, i8* %7, align 1
  %353 = zext i8 %352 to i64
  %354 = add i64 %351, %353
  %355 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %354
  store i8* %355, i8** %17, align 8
  %356 = load i8*, i8** %17, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 0
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = shl i32 %359, 8
  %361 = load i8*, i8** %17, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 1
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = or i32 %360, %364
  %366 = trunc i32 %365 to i16
  store i16 %366, i16* %13, align 2
  br label %369

367:                                              ; preds = %347
  %368 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 2
  store i16 %368, i16* %13, align 2
  br label %369

369:                                              ; preds = %367, %350
  %370 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 4
  %371 = icmp ne i8 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %369
  %373 = load i16, i16* %13, align 2
  %374 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 4
  %375 = call i64 @socksconnect(i16 zeroext %373, i32 %374)
  store i64 %375, i64* %12, align 8
  br label %376

376:                                              ; preds = %372, %369
  %377 = load i64, i64* %12, align 8
  %378 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i8 1, i8* %9, align 1
  br label %383

381:                                              ; preds = %376
  %382 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 4
  store i8 %382, i8* %9, align 1
  br label %383

383:                                              ; preds = %381, %380
  %384 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 1
  %385 = load i64, i64* @SOCKS5_VERSION, align 8
  %386 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 %385
  store i8 %384, i8* %386, align 1
  %387 = load i8, i8* %9, align 1
  %388 = load i64, i64* @SOCKS5_REP, align 8
  %389 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 %388
  store i8 %387, i8* %389, align 1
  %390 = load i64, i64* @SOCKS5_RESERVED, align 8
  %391 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 %390
  store i8 0, i8* %391, align 1
  %392 = load i8, i8* %8, align 1
  %393 = load i64, i64* @SOCKS5_ATYP, align 8
  %394 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 %393
  store i8 %392, i8* %394, align 1
  %395 = load i64, i64* @SOCKS5_BNDADDR, align 8
  %396 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 %395
  %397 = load i8*, i8** %10, align 8
  %398 = load i8, i8* %7, align 1
  %399 = zext i8 %398 to i32
  %400 = call i32 @memcpy(i8* %396, i8* %397, i32 %399)
  %401 = load i64, i64* @SOCKS5_BNDADDR, align 8
  %402 = load i8, i8* %7, align 1
  %403 = zext i8 %402 to i64
  %404 = add i64 %401, %403
  %405 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 %404
  %406 = load i64, i64* @SOCKS5_DSTADDR, align 8
  %407 = load i8, i8* %7, align 1
  %408 = zext i8 %407 to i64
  %409 = add i64 %406, %408
  %410 = getelementptr inbounds [272 x i8], [272 x i8]* %4, i64 0, i64 %409
  %411 = call i32 @memcpy(i8* %405, i8* %410, i32 2)
  %412 = load i64, i64* %3, align 8
  %413 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  %414 = load i8, i8* %7, align 1
  %415 = zext i8 %414 to i32
  %416 = add nsw i32 %415, 6
  store i8 0, i8* %6, align 1
  %417 = load i8, i8* %6, align 1
  %418 = zext i8 %417 to i32
  %419 = load i8, i8* %7, align 1
  %420 = zext i8 %419 to i32
  %421 = add nsw i32 %420, 6
  %422 = icmp ne i32 %418, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %383
  %424 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %425 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %425, i64* %2, align 8
  br label %446

426:                                              ; preds = %383
  %427 = load i8, i8* %6, align 1
  %428 = zext i8 %427 to i32
  %429 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %428)
  %430 = getelementptr inbounds [272 x i8], [272 x i8]* %5, i64 0, i64 0
  %431 = load i8, i8* %6, align 1
  %432 = call i32 @loghex(i8* %430, i8 zeroext %431)
  %433 = load i8, i8* %9, align 1
  %434 = icmp ne i8 %433, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %426
  %436 = load i64, i64* %12, align 8
  store i64 %436, i64* %2, align 8
  br label %446

437:                                              ; preds = %426
  %438 = load i64, i64* %12, align 8
  %439 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %440 = icmp ne i64 %438, %439
  br i1 %440, label %441, label %444

441:                                              ; preds = %437
  %442 = load i64, i64* %12, align 8
  %443 = call i32 @sclose(i64 %442)
  br label %444

444:                                              ; preds = %441, %437
  %445 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %445, i64* %2, align 8
  br label %446

446:                                              ; preds = %444, %435, %423, %338, %325, %304, %293, %280, %267, %251, %239, %182, %160, %143, %132, %105, %84, %68, %47, %34
  %447 = load i64, i64* %2, align 8
  ret i64 %447
}

declare dso_local i32 @getconfig(...) #1

declare dso_local zeroext i8 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @loghex(i8*, i8 zeroext) #1

declare dso_local i64 @socks4(i64, i8*, i8 zeroext) #1

declare dso_local zeroext i8 @strlen(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i8 zeroext) #1

declare dso_local i64 @socksconnect(i16 zeroext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
