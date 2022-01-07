; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapenc.c_sap_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapenc.c_sap_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_19__**, i32, %struct.SAPState* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.SAPState = type { i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.addrinfo = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"announce_port\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"same_port\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"announce_addr\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Unable to resolve %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"224.2.127.254\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Host %s resolved to unsupported address family\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"rtp\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"?ttl=%d\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"?ttl=%d&connect=1\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Unsupported protocol family\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"application/sdp\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"SDP:\0A%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Announcement too large to send in one packet\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @sap_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sap_write_header(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.SAPState*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [50 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_storage, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca [50 x i8], align 16
  %23 = alloca %struct.addrinfo, align 8
  %24 = alloca %struct.addrinfo*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 8
  %29 = load %struct.SAPState*, %struct.SAPState** %28, align 8
  store %struct.SAPState* %29, %struct.SAPState** %4, align 8
  %30 = bitcast [50 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 50, i1 false)
  store i32 9875, i32* %10, align 4
  store i32 5004, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 255, i32* %15, align 4
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 8, i32* %19, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_22__* @av_dict_get(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %21, align 8
  %35 = call i32 (...) @ff_network_init()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @EIO, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %475

40:                                               ; preds = %1
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %41, i32 1024, i32* %11, i8* %42, i32 1024, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 5004, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %52 = call i8* @strrchr(i8* %51, i8 signext 63)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @av_find_info_tag(i8* %56, i32 50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %62 = call i32 @strtol(i8* %61, i32* null, i32 10)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @av_find_info_tag(i8* %64, i32 50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %70 = call i32 @strtol(i8* %69, i32* null, i32 10)
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @av_find_info_tag(i8* %72, i32 50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %78 = call i32 @strtol(i8* %77, i32* null, i32 10)
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @av_find_info_tag(i8* %80, i32 50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %86 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %87 = call i32 @av_strlcpy(i8* %85, i8* %86, i32 50)
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %50
  %90 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %91 = load i8, i8* %90, align 16
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %128, label %93

93:                                               ; preds = %89
  %94 = bitcast %struct.addrinfo* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %94, i8 0, i64 16, i1 false)
  store %struct.addrinfo* null, %struct.addrinfo** %24, align 8
  %95 = load i64, i64* @AF_UNSPEC, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %98 = call i64 @getaddrinfo(i8* %97, i32* null, %struct.addrinfo* %23, %struct.addrinfo** %24)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %104 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %101, i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %17, align 4
  br label %469

107:                                              ; preds = %93
  %108 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %109 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @AF_INET, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %115 = call i32 @av_strlcpy(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 50)
  br label %125

116:                                              ; preds = %107
  %117 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %118 = call i32 @freeaddrinfo(%struct.addrinfo* %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %122 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %119, i32 %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @EIO, align 4
  %124 = call i32 @AVERROR(i32 %123)
  store i32 %124, i32* %17, align 4
  br label %469

125:                                              ; preds = %113
  %126 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %127 = call i32 @freeaddrinfo(%struct.addrinfo* %126)
  br label %128

128:                                              ; preds = %125, %89
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.TYPE_21__** @av_mallocz_array(i32 %131, i32 8)
  store %struct.TYPE_21__** %132, %struct.TYPE_21__*** %16, align 8
  %133 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %134 = icmp ne %struct.TYPE_21__** %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = call i32 @AVERROR(i32 %136)
  store i32 %137, i32* %17, align 4
  br label %469

138:                                              ; preds = %128
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143, %138
  %150 = call i64 (...) @av_gettime()
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %143
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %255, %153
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %258

160:                                              ; preds = %154
  %161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @ff_url_join(i8* %161, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* %162, i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %168, %160
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %173 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @ffurl_open_whitelist(%struct.TYPE_20__** %25, i8* %172, i32 %173, i32* %175, i32* null, i32 %178, i32 %181, i32* null)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %171
  %186 = load i32, i32* @EIO, align 4
  %187 = call i32 @AVERROR(i32 %186)
  store i32 %187, i32* %17, align 4
  br label %469

188:                                              ; preds = %171
  %189 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %189, i64 %191
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %196, i64 %198
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @ff_rtp_chain_mux_open(%struct.TYPE_21__** %192, %struct.TYPE_21__* %193, %struct.TYPE_19__* %200, %struct.TYPE_20__* %201, i32 0, i32 %202)
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %17, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %188
  br label %469

207:                                              ; preds = %188
  %208 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %208, i64 %210
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 6
  %215 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %215, i64 %217
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  store %struct.TYPE_21__* %212, %struct.TYPE_21__** %220, align 8
  %221 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %221, i64 %223
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %227, i64 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 6
  %234 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %234, i64 %236
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  store i32 %231, i32* %239, align 8
  %240 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %241 = call i8* @av_strdup(i8* %240)
  store i8* %241, i8** %26, align 8
  %242 = load i8*, i8** %26, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %207
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = call i32 @AVERROR(i32 %245)
  store i32 %246, i32* %17, align 4
  br label %469

247:                                              ; preds = %207
  %248 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %248, i64 %250
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = load i8*, i8** %26, align 8
  %254 = call i32 @ff_format_set_url(%struct.TYPE_21__* %252, i8* %253)
  br label %255

255:                                              ; preds = %247
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %154

258:                                              ; preds = %154
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %258
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %265 = icmp ne %struct.TYPE_22__* %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %263
  %267 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %267, i64 0
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @av_dict_set(i32* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %273, i32 0)
  br label %275

275:                                              ; preds = %266, %263, %258
  %276 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %277 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %15, align 4
  %280 = call i32 @ff_url_join(i8* %276, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* %277, i32 %278, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %279)
  %281 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %282 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %281, i32 0, i32 2
  %283 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %284 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @ffurl_open_whitelist(%struct.TYPE_20__** %282, i8* %283, i32 %284, i32* %286, i32* null, i32 %289, i32 %292, i32* null)
  store i32 %293, i32* %17, align 4
  %294 = load i32, i32* %17, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %275
  %297 = load i32, i32* @EIO, align 4
  %298 = call i32 @AVERROR(i32 %297)
  store i32 %298, i32* %17, align 4
  br label %469

299:                                              ; preds = %275
  %300 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %301 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %300, i32 0, i32 2
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %301, align 8
  %303 = call i32 @ffurl_get_file_handle(%struct.TYPE_20__* %302)
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %20, align 4
  %305 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr*
  %306 = call i64 @getsockname(i32 %304, %struct.sockaddr* %305, i32* %19)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load i32, i32* @EIO, align 4
  %310 = call i32 @AVERROR(i32 %309)
  store i32 %310, i32* %17, align 4
  br label %469

311:                                              ; preds = %299
  %312 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %18, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @AF_INET, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %311
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %318 = load i32, i32* @AV_LOG_ERROR, align 4
  %319 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %317, i32 %318, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %320 = load i32, i32* @EIO, align 4
  %321 = call i32 @AVERROR(i32 %320)
  store i32 %321, i32* %17, align 4
  br label %469

322:                                              ; preds = %311
  %323 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %324 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %323, i32 0, i32 0
  store i32 8192, i32* %324, align 8
  %325 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %326 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32* @av_mallocz(i32 %327)
  %329 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %330 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %329, i32 0, i32 1
  store i32* %328, i32** %330, align 8
  %331 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %332 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %338, label %335

335:                                              ; preds = %322
  %336 = load i32, i32* @EIO, align 4
  %337 = call i32 @AVERROR(i32 %336)
  store i32 %337, i32* %17, align 4
  br label %469

338:                                              ; preds = %322
  %339 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %340 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 32, i32* %344, align 4
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %13, align 4
  %347 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %348 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %13, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %13, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  store i32 0, i32* %353, align 4
  %354 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %355 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = call i32 (...) @av_get_random_seed()
  %361 = call i32 @AV_WB16(i32* %359, i32 %360)
  %362 = load i32, i32* %13, align 4
  %363 = add nsw i32 %362, 2
  store i32 %363, i32* %13, align 4
  %364 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %18, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @AF_INET, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %382

368:                                              ; preds = %338
  %369 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %370 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*
  %376 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %375, i32 0, i32 0
  %377 = call i32 @memcpy(i32* %374, i32* %376, i32 4)
  %378 = load i32, i32* %13, align 4
  %379 = sext i32 %378 to i64
  %380 = add i64 %379, 4
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %13, align 4
  br label %382

382:                                              ; preds = %368, %338
  %383 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %384 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = bitcast i32* %388 to i8*
  %390 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %391 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* %13, align 4
  %394 = sub nsw i32 %392, %393
  %395 = call i32 @av_strlcpy(i8* %389, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %394)
  %396 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %397 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %13, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = bitcast i32* %401 to i8*
  %403 = call i64 @strlen(i8* %402)
  %404 = add nsw i64 %403, 1
  %405 = load i32, i32* %13, align 4
  %406 = sext i32 %405 to i64
  %407 = add nsw i64 %406, %404
  %408 = trunc i64 %407 to i32
  store i32 %408, i32* %13, align 4
  %409 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %414 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %13, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = bitcast i32* %418 to i8*
  %420 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %421 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %13, align 4
  %424 = sub nsw i32 %422, %423
  %425 = call i64 @av_sdp_create(%struct.TYPE_21__** %409, i32 %412, i8* %419, i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %382
  %428 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %428, i32* %17, align 4
  br label %469

429:                                              ; preds = %382
  %430 = call i32 @av_freep(%struct.TYPE_21__*** %16)
  %431 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %432 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %433 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %434 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %433, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %13, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %431, i32 %432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* %438)
  %440 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %441 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %13, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = bitcast i32* %445 to i8*
  %447 = call i64 @strlen(i8* %446)
  %448 = load i32, i32* %13, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %447
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %13, align 4
  %452 = load i32, i32* %13, align 4
  %453 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %454 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %453, i32 0, i32 0
  store i32 %452, i32* %454, align 8
  %455 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %456 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.SAPState*, %struct.SAPState** %4, align 8
  %459 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %458, i32 0, i32 2
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = icmp sgt i32 %457, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %429
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %466 = load i32, i32* @AV_LOG_ERROR, align 4
  %467 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %465, i32 %466, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  br label %469

468:                                              ; preds = %429
  store i32 0, i32* %2, align 4
  br label %475

469:                                              ; preds = %464, %427, %335, %316, %308, %296, %244, %206, %185, %135, %116, %100
  %470 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %471 = call i32 @av_free(%struct.TYPE_21__** %470)
  %472 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %473 = call i32 @sap_write_close(%struct.TYPE_21__* %472)
  %474 = load i32, i32* %17, align 4
  store i32 %474, i32* %2, align 4
  br label %475

475:                                              ; preds = %469, %468, %37
  %476 = load i32, i32* %2, align 4
  ret i32 %476
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_22__* @av_dict_get(i32, i8*, i32*, i32) #2

declare dso_local i32 @ff_network_init(...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i8*, i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local %struct.TYPE_21__** @av_mallocz_array(i32, i32) #2

declare dso_local i64 @av_gettime(...) #2

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i8*, i32) #2

declare dso_local i32 @ffurl_open_whitelist(%struct.TYPE_20__**, i8*, i32, i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @ff_rtp_chain_mux_open(%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32) #2

declare dso_local i8* @av_strdup(i8*) #2

declare dso_local i32 @ff_format_set_url(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i32, i32) #2

declare dso_local i32 @ffurl_get_file_handle(%struct.TYPE_20__*) #2

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32* @av_mallocz(i32) #2

declare dso_local i32 @AV_WB16(i32*, i32) #2

declare dso_local i32 @av_get_random_seed(...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @av_sdp_create(%struct.TYPE_21__**, i32, i8*, i32) #2

declare dso_local i32 @av_freep(%struct.TYPE_21__***) #2

declare dso_local i32 @av_free(%struct.TYPE_21__**) #2

declare dso_local i32 @sap_write_close(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
