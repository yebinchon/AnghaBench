; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_process_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_process_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8*, i32, i8*, i64, i32, i32, i32, i8*, i32, i8*, i32, i32, i64, i32, i8*, i64 }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Received method: %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Received and expected HTTP method do not match. (%s expected, %s received)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Autodetected %s HTTP method\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"Received and autodetected HTTP method did not match (%s autodetected %s received)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Requested resource: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Malformed HTTP version string.\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"HTTP version string: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"http_code=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Content-Range\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Accept-Ranges\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Authentication-Info\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Proxy-Authenticate\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"AkamaiGHost\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"MediaGateway\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Set-Cookie\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [22 x i8] c"Unable to parse '%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Icy-MetaInt\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Icy-\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32*)* @process_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_line(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %10, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AVIO_FLAG_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  store i32 0, i32* %5, align 4
  br label %539

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %295

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 16
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %209

47:                                               ; preds = %42
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %15, align 8
  br label %49

49:                                               ; preds = %62, %47
  %50 = load i8*, i8** %13, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @av_isspace(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %54, %49
  %61 = phi i1 [ false, %49 ], [ %59, %54 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %13, align 8
  br label %49

65:                                               ; preds = %60
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %13, align 8
  store i8 0, i8* %66, align 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32, i32* @AV_LOG_TRACE, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %68, i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %65
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i64 @av_strcasecmp(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %84, i32 %85, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i8* %88, i8* %89)
  %91 = load i32, i32* @EIO, align 4
  %92 = call i32 @AVERROR(i32 %91)
  %93 = call i32 @ff_http_averror(i32 400, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %539

94:                                               ; preds = %76
  br label %123

95:                                               ; preds = %65
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load i32, i32* @AV_LOG_TRACE, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %96, i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = call i64 @av_strcasecmp(i8* %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %105, i32 %106, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = call i32 @AVERROR(i32 %110)
  %112 = call i32 @ff_http_averror(i32 400, i32 %111)
  store i32 %112, i32* %5, align 4
  br label %539

113:                                              ; preds = %95
  %114 = load i8*, i8** %15, align 8
  %115 = call i8* @av_strdup(i8* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = icmp ne i8* %115, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %5, align 4
  br label %539

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %94
  br label %124

124:                                              ; preds = %129, %123
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @av_isspace(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %13, align 8
  br label %124

132:                                              ; preds = %124
  %133 = load i8*, i8** %13, align 8
  store i8* %133, i8** %16, align 8
  br label %134

134:                                              ; preds = %147, %132
  %135 = load i8*, i8** %13, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i8*, i8** %13, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @av_isspace(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi i1 [ false, %134 ], [ %144, %139 ]
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i8*, i8** %13, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %13, align 8
  br label %134

150:                                              ; preds = %145
  %151 = load i8*, i8** %13, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %13, align 8
  store i8 0, i8* %151, align 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = load i32, i32* @AV_LOG_TRACE, align 4
  %155 = load i8*, i8** %16, align 8
  %156 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %153, i32 %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %155)
  %157 = load i8*, i8** %16, align 8
  %158 = call i8* @av_strdup(i8* %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 15
  store i8* %158, i8** %160, align 8
  %161 = icmp ne i8* %158, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %150
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %5, align 4
  br label %539

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %171, %165
  %167 = load i8*, i8** %13, align 8
  %168 = load i8, i8* %167, align 1
  %169 = call i64 @av_isspace(i8 signext %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i8*, i8** %13, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %13, align 8
  br label %166

174:                                              ; preds = %166
  %175 = load i8*, i8** %13, align 8
  store i8* %175, i8** %17, align 8
  br label %176

176:                                              ; preds = %189, %174
  %177 = load i8*, i8** %13, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i8*, i8** %13, align 8
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @av_isspace(i8 signext %183)
  %185 = icmp ne i64 %184, 0
  %186 = xor i1 %185, true
  br label %187

187:                                              ; preds = %181, %176
  %188 = phi i1 [ false, %176 ], [ %186, %181 ]
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i8*, i8** %13, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %13, align 8
  br label %176

192:                                              ; preds = %187
  %193 = load i8*, i8** %13, align 8
  store i8 0, i8* %193, align 1
  %194 = load i8*, i8** %17, align 8
  %195 = call i64 @av_strncasecmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = load i32, i32* @AV_LOG_ERROR, align 4
  %200 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %198, i32 %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %201 = load i32, i32* @EIO, align 4
  %202 = call i32 @AVERROR(i32 %201)
  %203 = call i32 @ff_http_averror(i32 400, i32 %202)
  store i32 %203, i32* %5, align 4
  br label %539

204:                                              ; preds = %192
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = load i32, i32* @AV_LOG_TRACE, align 4
  %207 = load i8*, i8** %17, align 8
  %208 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %205, i32 %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %207)
  br label %294

209:                                              ; preds = %42
  %210 = load i8*, i8** %13, align 8
  %211 = call i64 @av_strncasecmp(i8* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %209
  br label %217

217:                                              ; preds = %229, %216
  %218 = load i8*, i8** %13, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 47
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load i8*, i8** %13, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 0
  br label %227

227:                                              ; preds = %222, %217
  %228 = phi i1 [ false, %217 ], [ %226, %222 ]
  br i1 %228, label %229, label %232

229:                                              ; preds = %227
  %230 = load i8*, i8** %13, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %13, align 8
  br label %217

232:                                              ; preds = %227
  br label %233

233:                                              ; preds = %238, %232
  %234 = load i8*, i8** %13, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 47
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i8*, i8** %13, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %13, align 8
  br label %233

241:                                              ; preds = %233
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 14
  %244 = call i32 @av_freep(i32* %243)
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @av_strndup(i8* %245, i32 3)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 14
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %261, %241
  %250 = load i8*, i8** %13, align 8
  %251 = load i8, i8* %250, align 1
  %252 = call i64 @av_isspace(i8 signext %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i8*, i8** %13, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br label %259

259:                                              ; preds = %254, %249
  %260 = phi i1 [ false, %249 ], [ %258, %254 ]
  br i1 %260, label %261, label %264

261:                                              ; preds = %259
  %262 = load i8*, i8** %13, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %13, align 8
  br label %249

264:                                              ; preds = %259
  br label %265

265:                                              ; preds = %270, %264
  %266 = load i8*, i8** %13, align 8
  %267 = load i8, i8* %266, align 1
  %268 = call i64 @av_isspace(i8 signext %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i8*, i8** %13, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %13, align 8
  br label %265

273:                                              ; preds = %265
  %274 = load i8*, i8** %13, align 8
  %275 = call i8* @strtol(i8* %274, i8** %14, i32 10)
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  store i8* %275, i8** %277, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %279 = load i32, i32* @AV_LOG_TRACE, align 4
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 3
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %278, i32 %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %282)
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 3
  %287 = load i8*, i8** %286, align 8
  %288 = load i8*, i8** %14, align 8
  %289 = call i32 @check_http_code(%struct.TYPE_11__* %284, i8* %287, i8* %288)
  store i32 %289, i32* %18, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %273
  %292 = load i32, i32* %18, align 4
  store i32 %292, i32* %5, align 4
  br label %539

293:                                              ; preds = %273
  br label %294

294:                                              ; preds = %293, %204
  br label %538

295:                                              ; preds = %38
  br label %296

296:                                              ; preds = %308, %295
  %297 = load i8*, i8** %13, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i8*, i8** %13, align 8
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 58
  br label %306

306:                                              ; preds = %301, %296
  %307 = phi i1 [ false, %296 ], [ %305, %301 ]
  br i1 %307, label %308, label %311

308:                                              ; preds = %306
  %309 = load i8*, i8** %13, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %13, align 8
  br label %296

311:                                              ; preds = %306
  %312 = load i8*, i8** %13, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 58
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store i32 1, i32* %5, align 4
  br label %539

317:                                              ; preds = %311
  %318 = load i8*, i8** %13, align 8
  store i8 0, i8* %318, align 1
  %319 = load i8*, i8** %7, align 8
  store i8* %319, i8** %12, align 8
  %320 = load i8*, i8** %13, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %13, align 8
  br label %322

322:                                              ; preds = %327, %317
  %323 = load i8*, i8** %13, align 8
  %324 = load i8, i8* %323, align 1
  %325 = call i64 @av_isspace(i8 signext %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load i8*, i8** %13, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %13, align 8
  br label %322

330:                                              ; preds = %322
  %331 = load i8*, i8** %12, align 8
  %332 = call i64 @av_strcasecmp(i8* %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %330
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %336 = load i8*, i8** %13, align 8
  %337 = call i32 @parse_location(%struct.TYPE_12__* %335, i8* %336)
  store i32 %337, i32* %18, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = load i32, i32* %18, align 4
  store i32 %340, i32* %5, align 4
  br label %539

341:                                              ; preds = %334
  %342 = load i32*, i32** %9, align 8
  store i32 1, i32* %342, align 4
  br label %537

343:                                              ; preds = %330
  %344 = load i8*, i8** %12, align 8
  %345 = call i64 @av_strcasecmp(i8* %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %359, label %347

347:                                              ; preds = %343
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 4
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @UINT64_MAX, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %359

353:                                              ; preds = %347
  %354 = load i8*, i8** %13, align 8
  %355 = call i8* @strtoull(i8* %354, i32* null, i32 10)
  %356 = ptrtoint i8* %355 to i64
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 4
  store i64 %356, i64* %358, align 8
  br label %536

359:                                              ; preds = %347, %343
  %360 = load i8*, i8** %12, align 8
  %361 = call i64 @av_strcasecmp(i8* %360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %365 = load i8*, i8** %13, align 8
  %366 = call i32 @parse_content_range(%struct.TYPE_11__* %364, i8* %365)
  br label %535

367:                                              ; preds = %359
  %368 = load i8*, i8** %12, align 8
  %369 = call i64 @av_strcasecmp(i8* %368, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %383, label %371

371:                                              ; preds = %367
  %372 = load i8*, i8** %13, align 8
  %373 = call i32 @strncmp(i8* %372, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %371
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  store i64 0, i64* %382, align 8
  br label %534

383:                                              ; preds = %375, %371, %367
  %384 = load i8*, i8** %12, align 8
  %385 = call i64 @av_strcasecmp(i8* %384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %397, label %387

387:                                              ; preds = %383
  %388 = load i8*, i8** %13, align 8
  %389 = call i64 @av_strncasecmp(i8* %388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 7)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %397, label %391

391:                                              ; preds = %387
  %392 = load i64, i64* @UINT64_MAX, align 8
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 4
  store i64 %392, i64* %394, align 8
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 13
  store i64 0, i64* %396, align 8
  br label %533

397:                                              ; preds = %387, %383
  %398 = load i8*, i8** %12, align 8
  %399 = call i64 @av_strcasecmp(i8* %398, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %407, label %401

401:                                              ; preds = %397
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 12
  %404 = load i8*, i8** %12, align 8
  %405 = load i8*, i8** %13, align 8
  %406 = call i32 @ff_http_auth_handle_header(i32* %403, i8* %404, i8* %405)
  br label %532

407:                                              ; preds = %397
  %408 = load i8*, i8** %12, align 8
  %409 = call i64 @av_strcasecmp(i8* %408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %407
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 12
  %414 = load i8*, i8** %12, align 8
  %415 = load i8*, i8** %13, align 8
  %416 = call i32 @ff_http_auth_handle_header(i32* %413, i8* %414, i8* %415)
  br label %531

417:                                              ; preds = %407
  %418 = load i8*, i8** %12, align 8
  %419 = call i64 @av_strcasecmp(i8* %418, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %417
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 11
  %424 = load i8*, i8** %12, align 8
  %425 = load i8*, i8** %13, align 8
  %426 = call i32 @ff_http_auth_handle_header(i32* %423, i8* %424, i8* %425)
  br label %530

427:                                              ; preds = %417
  %428 = load i8*, i8** %12, align 8
  %429 = call i64 @av_strcasecmp(i8* %428, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %439, label %431

431:                                              ; preds = %427
  %432 = load i8*, i8** %13, align 8
  %433 = call i32 @strcmp(i8* %432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %431
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 2
  store i32 1, i32* %437, align 8
  br label %438

438:                                              ; preds = %435, %431
  br label %529

439:                                              ; preds = %427
  %440 = load i8*, i8** %12, align 8
  %441 = call i64 @av_strcasecmp(i8* %440, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %459, label %443

443:                                              ; preds = %439
  %444 = load i8*, i8** %13, align 8
  %445 = call i64 @av_strcasecmp(i8* %444, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %443
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 6
  store i32 1, i32* %449, align 4
  br label %458

450:                                              ; preds = %443
  %451 = load i8*, i8** %13, align 8
  %452 = call i64 @av_strncasecmp(i8* %451, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 12)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %450
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 7
  store i32 1, i32* %456, align 8
  br label %457

457:                                              ; preds = %454, %450
  br label %458

458:                                              ; preds = %457, %447
  br label %528

459:                                              ; preds = %439
  %460 = load i8*, i8** %12, align 8
  %461 = call i64 @av_strcasecmp(i8* %460, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %472, label %463

463:                                              ; preds = %459
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 10
  %466 = load i8*, i8** %465, align 8
  %467 = call i32 @av_free(i8* %466)
  %468 = load i8*, i8** %13, align 8
  %469 = call i8* @av_strdup(i8* %468)
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 10
  store i8* %469, i8** %471, align 8
  br label %527

472:                                              ; preds = %459
  %473 = load i8*, i8** %12, align 8
  %474 = call i64 @av_strcasecmp(i8* %473, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %489, label %476

476:                                              ; preds = %472
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %478 = load i8*, i8** %13, align 8
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 9
  %481 = call i64 @parse_cookie(%struct.TYPE_12__* %477, i8* %478, i32* %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %476
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %485 = load i32, i32* @AV_LOG_WARNING, align 4
  %486 = load i8*, i8** %13, align 8
  %487 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %484, i32 %485, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* %486)
  br label %488

488:                                              ; preds = %483, %476
  br label %526

489:                                              ; preds = %472
  %490 = load i8*, i8** %12, align 8
  %491 = call i64 @av_strcasecmp(i8* %490, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %489
  %494 = load i8*, i8** %13, align 8
  %495 = call i8* @strtoull(i8* %494, i32* null, i32 10)
  %496 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 8
  store i8* %495, i8** %497, align 8
  br label %525

498:                                              ; preds = %489
  %499 = load i8*, i8** %12, align 8
  %500 = call i64 @av_strncasecmp(i8* %499, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 4)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %511, label %502

502:                                              ; preds = %498
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %504 = load i8*, i8** %12, align 8
  %505 = load i8*, i8** %13, align 8
  %506 = call i32 @parse_icy(%struct.TYPE_12__* %503, i8* %504, i8* %505)
  store i32 %506, i32* %18, align 4
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %502
  %509 = load i32, i32* %18, align 4
  store i32 %509, i32* %5, align 4
  br label %539

510:                                              ; preds = %502
  br label %524

511:                                              ; preds = %498
  %512 = load i8*, i8** %12, align 8
  %513 = call i64 @av_strcasecmp(i8* %512, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0))
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %523, label %515

515:                                              ; preds = %511
  %516 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %517 = load i8*, i8** %13, align 8
  %518 = call i32 @parse_content_encoding(%struct.TYPE_11__* %516, i8* %517)
  store i32 %518, i32* %18, align 4
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %515
  %521 = load i32, i32* %18, align 4
  store i32 %521, i32* %5, align 4
  br label %539

522:                                              ; preds = %515
  br label %523

523:                                              ; preds = %522, %511
  br label %524

524:                                              ; preds = %523, %510
  br label %525

525:                                              ; preds = %524, %493
  br label %526

526:                                              ; preds = %525, %488
  br label %527

527:                                              ; preds = %526, %463
  br label %528

528:                                              ; preds = %527, %458
  br label %529

529:                                              ; preds = %528, %438
  br label %530

530:                                              ; preds = %529, %421
  br label %531

531:                                              ; preds = %530, %411
  br label %532

532:                                              ; preds = %531, %401
  br label %533

533:                                              ; preds = %532, %391
  br label %534

534:                                              ; preds = %533, %380
  br label %535

535:                                              ; preds = %534, %363
  br label %536

536:                                              ; preds = %535, %353
  br label %537

537:                                              ; preds = %536, %341
  br label %538

538:                                              ; preds = %537, %294
  store i32 1, i32* %5, align 4
  br label %539

539:                                              ; preds = %538, %520, %508, %339, %316, %291, %197, %162, %119, %104, %83, %35
  %540 = load i32, i32* %5, align 4
  ret i32 %540
}

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i64 @av_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ff_http_averror(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i64 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_strndup(i8*, i32) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @check_http_code(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @parse_location(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @parse_content_range(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ff_http_auth_handle_header(i32*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i64 @parse_cookie(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @parse_icy(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @parse_content_encoding(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
