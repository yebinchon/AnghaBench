; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_rtp_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_rtp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i8*, i8*, i8*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i8*, i8*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rtcpport\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"localport\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"localrtpport\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"localrtcpport\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pkt_size\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"write_to_source\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dscp\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sources\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed to parse the FEC protocol value\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"prompeg\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Unsupported FEC protocol %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Failed to parse the FEC options\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32)* @rtp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_open(%struct.TYPE_14__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %8, align 8
  store i32* null, i32** %9, align 8
  %26 = bitcast [1024 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 1024, i1 false)
  %27 = bitcast [1024 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 1024, i1 false)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %28, i8** %14, align 8
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  store i8* %29, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 3, i32* %21, align 4
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %30, i32 256, i32* %10, i8* %31, i32 1024, i8* %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %3
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 63)
  store i8* %45, i8** %19, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %194

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %50 = load i8*, i8** %19, align 8
  %51 = call i64 @av_find_info_tag(i8* %49, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %55 = call i8* @strtol(i8* %54, i32* null, i32 10)
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %61 = load i8*, i8** %19, align 8
  %62 = call i64 @av_find_info_tag(i8* %60, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %66 = call i8* @strtol(i8* %65, i32* null, i32 10)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %72 = load i8*, i8** %19, align 8
  %73 = call i64 @av_find_info_tag(i8* %71, i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %77 = call i8* @strtol(i8* %76, i32* null, i32 10)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %83 = load i8*, i8** %19, align 8
  %84 = call i64 @av_find_info_tag(i8* %82, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %88 = call i8* @strtol(i8* %87, i32* null, i32 10)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %94 = load i8*, i8** %19, align 8
  %95 = call i64 @av_find_info_tag(i8* %93, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %99 = call i8* @strtol(i8* %98, i32* null, i32 10)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %105 = load i8*, i8** %19, align 8
  %106 = call i64 @av_find_info_tag(i8* %104, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %110 = call i8* @strtol(i8* %109, i32* null, i32 10)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 16
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %115 = load i8*, i8** %19, align 8
  %116 = call i64 @av_find_info_tag(i8* %114, i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %120 = call i8* @strtol(i8* %119, i32* null, i32 10)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 15
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %113
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %125 = load i8*, i8** %19, align 8
  %126 = call i64 @av_find_info_tag(i8* %124, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %130 = call i8* @strtol(i8* %129, i32* null, i32 10)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 14
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %123
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %135 = load i8*, i8** %19, align 8
  %136 = call i64 @av_find_info_tag(i8* %134, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %140 = call i8* @strtol(i8* %139, i32* null, i32 10)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 13
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %145 = load i8*, i8** %19, align 8
  %146 = call i64 @av_find_info_tag(i8* %144, i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %151 = call i32 @av_strlcpy(i8* %149, i8* %150, i32 1024)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 12
  %156 = call i32 @ff_ip_parse_sources(%struct.TYPE_14__* %152, i8* %153, i32* %155)
  br label %168

157:                                              ; preds = %143
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 12
  %164 = call i32 @ff_ip_parse_sources(%struct.TYPE_14__* %158, i8* %161, i32* %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %14, align 8
  br label %168

168:                                              ; preds = %157, %148
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %170 = load i8*, i8** %19, align 8
  %171 = call i64 @av_find_info_tag(i8* %169, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %175 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %176 = call i32 @av_strlcpy(i8* %174, i8* %175, i32 1024)
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 12
  %181 = call i32 @ff_ip_parse_blocks(%struct.TYPE_14__* %177, i8* %178, i32* %180)
  br label %193

182:                                              ; preds = %168
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 12
  %189 = call i32 @ff_ip_parse_blocks(%struct.TYPE_14__* %183, i8* %186, i32* %188)
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 5
  %192 = load i8*, i8** %191, align 8
  store i8* %192, i8** %15, align 8
  br label %193

193:                                              ; preds = %182, %173
  br label %194

194:                                              ; preds = %193, %43
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 6
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %263

199:                                              ; preds = %194
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 6
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %19, align 8
  %203 = call i8* @av_get_token(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i8* %203, i8** %16, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %199
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %207 = load i32, i32* @AV_LOG_ERROR, align 4
  %208 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %206, i32 %207, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %443

209:                                              ; preds = %199
  %210 = load i8*, i8** %16, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %215 = load i32, i32* @AV_LOG_ERROR, align 4
  %216 = load i8*, i8** %16, align 8
  %217 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %214, i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %216)
  br label %443

218:                                              ; preds = %209
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 6
  %221 = load i8*, i8** %220, align 8
  %222 = load i8*, i8** %16, align 8
  %223 = call i32 @strlen(i8* %222)
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  store i8* %225, i8** %19, align 8
  br label %226

226:                                              ; preds = %238, %218
  %227 = load i8*, i8** %19, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i8*, i8** %19, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 61
  br label %236

236:                                              ; preds = %231, %226
  %237 = phi i1 [ false, %226 ], [ %235, %231 ]
  br i1 %237, label %238, label %241

238:                                              ; preds = %236
  %239 = load i8*, i8** %19, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %19, align 8
  br label %226

241:                                              ; preds = %236
  %242 = load i8*, i8** %19, align 8
  %243 = call i64 @av_dict_parse_string(i32** %9, i8* %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %244 = icmp slt i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %247 = load i32, i32* @AV_LOG_ERROR, align 4
  %248 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %246, i32 %247, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %443

249:                                              ; preds = %241
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @snprintf(i8* %255, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 %258)
  %260 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %261 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %260, i32 0)
  br label %262

262:                                              ; preds = %254, %249
  br label %263

263:                                              ; preds = %262, %194
  store i32 0, i32* %20, align 4
  br label %264

264:                                              ; preds = %387, %263
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* %21, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %390

268:                                              ; preds = %264
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %270 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i8*, i8** %14, align 8
  %277 = load i8*, i8** %15, align 8
  %278 = call i32 @build_udp_url(%struct.TYPE_15__* %269, i8* %270, i32 1024, i8* %271, i32 %272, i32 %275, i8* %276, i8* %277)
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 9
  %281 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %292 = call i64 @ffurl_open_whitelist(%struct.TYPE_16__** %280, i8* %281, i32 %282, i32* %284, i32** null, i32 %287, i32 %290, %struct.TYPE_14__* %291)
  %293 = icmp slt i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %268
  br label %443

295:                                              ; preds = %268
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 9
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = call i32 @ff_udp_get_local_port(%struct.TYPE_16__* %298)
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 65535
  br i1 %305, label %306, label %309

306:                                              ; preds = %295
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 2
  store i32 -1, i32* %308, align 8
  br label %387

309:                                              ; preds = %295
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %312 = or i32 %310, %311
  store i32 %312, i32* %22, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %357

317:                                              ; preds = %309
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, 1
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %325 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %326 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load i8*, i8** %14, align 8
  %334 = load i8*, i8** %15, align 8
  %335 = call i32 @build_udp_url(%struct.TYPE_15__* %324, i8* %325, i32 1024, i8* %326, i32 %329, i32 %332, i8* %333, i8* %334)
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 8
  %338 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %339 = load i32, i32* %22, align 4
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 4
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %349 = call i64 @ffurl_open_whitelist(%struct.TYPE_16__** %337, i8* %338, i32 %339, i32* %341, i32** null, i32 %344, i32 %347, %struct.TYPE_14__* %348)
  %350 = icmp slt i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %317
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 3
  store i32 -1, i32* %353, align 4
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 2
  store i32 -1, i32* %355, align 8
  br label %387

356:                                              ; preds = %317
  br label %390

357:                                              ; preds = %309
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %359 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %360 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load i8*, i8** %14, align 8
  %368 = load i8*, i8** %15, align 8
  %369 = call i32 @build_udp_url(%struct.TYPE_15__* %358, i8* %359, i32 1024, i8* %360, i32 %363, i32 %366, i8* %367, i8* %368)
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 8
  %372 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %373 = load i32, i32* %22, align 4
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 4
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %383 = call i64 @ffurl_open_whitelist(%struct.TYPE_16__** %371, i8* %372, i32 %373, i32* %375, i32** null, i32 %378, i32 %381, %struct.TYPE_14__* %382)
  %384 = icmp slt i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %357
  br label %443

386:                                              ; preds = %357
  br label %390

387:                                              ; preds = %351, %306
  %388 = load i32, i32* %20, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %20, align 4
  br label %264

390:                                              ; preds = %386, %356, %264
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 7
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %392, align 8
  %393 = load i8*, i8** %16, align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %395, label %418

395:                                              ; preds = %390
  %396 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %397 = load i8*, i8** %16, align 8
  %398 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %399 = load i32, i32* %10, align 4
  %400 = call i32 @ff_url_join(i8* %396, i32 1024, i8* %397, i32* null, i8* %398, i32 %399, i32* null)
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 7
  %403 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %404 = load i32, i32* %7, align 4
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 4
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %414 = call i64 @ffurl_open_whitelist(%struct.TYPE_16__** %402, i8* %403, i32 %404, i32* %406, i32** %9, i32 %409, i32 %412, %struct.TYPE_14__* %413)
  %415 = icmp slt i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %395
  br label %443

417:                                              ; preds = %395
  br label %418

418:                                              ; preds = %417, %390
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 9
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %420, align 8
  %422 = call i8* @ffurl_get_file_handle(%struct.TYPE_16__* %421)
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 11
  store i8* %422, i8** %424, align 8
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i32 0, i32 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %426, align 8
  %428 = call i8* @ffurl_get_file_handle(%struct.TYPE_16__* %427)
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i32 0, i32 10
  store i8* %428, i8** %430, align 8
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 9
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 1
  store i32 %435, i32* %437, align 4
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 0
  store i32 1, i32* %439, align 8
  %440 = load i8*, i8** %16, align 8
  %441 = call i32 @av_free(i8* %440)
  %442 = call i32 @av_dict_free(i32** %9)
  store i32 0, i32* %4, align 4
  br label %472

443:                                              ; preds = %416, %385, %294, %245, %213, %205
  %444 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 9
  %446 = load %struct.TYPE_16__*, %struct.TYPE_16__** %445, align 8
  %447 = icmp ne %struct.TYPE_16__* %446, null
  br i1 %447, label %448, label %453

448:                                              ; preds = %443
  %449 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 9
  %451 = load %struct.TYPE_16__*, %struct.TYPE_16__** %450, align 8
  %452 = call i32 @ffurl_close(%struct.TYPE_16__* %451)
  br label %453

453:                                              ; preds = %448, %443
  %454 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i32 0, i32 8
  %456 = load %struct.TYPE_16__*, %struct.TYPE_16__** %455, align 8
  %457 = icmp ne %struct.TYPE_16__* %456, null
  br i1 %457, label %458, label %463

458:                                              ; preds = %453
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 8
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %460, align 8
  %462 = call i32 @ffurl_close(%struct.TYPE_16__* %461)
  br label %463

463:                                              ; preds = %458, %453
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 7
  %466 = call i32 @ffurl_closep(%struct.TYPE_16__** %465)
  %467 = load i8*, i8** %16, align 8
  %468 = call i32 @av_free(i8* %467)
  %469 = call i32 @av_dict_free(i32** %9)
  %470 = load i32, i32* @EIO, align 4
  %471 = call i32 @AVERROR(i32 %470)
  store i32 %471, i32* %4, align 4
  br label %472

472:                                              ; preds = %463, %418
  %473 = load i32, i32* %4, align 4
  ret i32 %473
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i8*, i32, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strtol(i8*, i32*, i32) #2

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @ff_ip_parse_sources(%struct.TYPE_14__*, i8*, i32*) #2

declare dso_local i32 @ff_ip_parse_blocks(%struct.TYPE_14__*, i8*, i32*) #2

declare dso_local i8* @av_get_token(i8**, i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @av_dict_parse_string(i32**, i8*, i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #2

declare dso_local i32 @build_udp_url(%struct.TYPE_15__*, i8*, i32, i8*, i32, i32, i8*, i8*) #2

declare dso_local i64 @ffurl_open_whitelist(%struct.TYPE_16__**, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @ff_udp_get_local_port(%struct.TYPE_16__*) #2

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #2

declare dso_local i8* @ffurl_get_file_handle(%struct.TYPE_16__*) #2

declare dso_local i32 @av_free(i8*) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @ffurl_close(%struct.TYPE_16__*) #2

declare dso_local i32 @ffurl_closep(%struct.TYPE_16__**) #2

declare dso_local i32 @AVERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
