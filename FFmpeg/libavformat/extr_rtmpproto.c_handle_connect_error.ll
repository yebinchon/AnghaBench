; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_connect_error.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_connect_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i8*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"authmod=adobe\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"authmod=llnw\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Unknown connect error (unsupported authentication method?)\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"authmod=\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No credentials set\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"?reason=authfailed\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Incorrect username/password\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"?reason=nosuchuser\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Incorrect username\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Authentication failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"code=403 need auth\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"?authmod=%s&user=%s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"?reason=needauth\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"No auth parameters found\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Ignoring unsupported var %s\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"Variable %s has NULL value\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"adobe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @handle_connect_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_connect_error(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca [300 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [15 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %16, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %31, i32 %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %34, i32* %3, align 4
  br label %239

35:                                               ; preds = %26, %2
  %36 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i8*, i8** %16, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %16, align 8
  br label %40

40:                                               ; preds = %56, %35
  %41 = load i8*, i8** %16, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %16, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 14
  br label %54

54:                                               ; preds = %50, %45, %40
  %55 = phi i1 [ false, %45 ], [ false, %40 ], [ %53, %50 ]
  br i1 %55, label %56, label %64

56:                                               ; preds = %54
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %16, align 8
  %59 = load i8, i8* %57, align 1
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 %62
  store i8 %59, i8* %63, align 1
  br label %40

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74, %64
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %82, i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %85, i32* %3, align 4
  br label %239

86:                                               ; preds = %74
  %87 = load i8*, i8** %5, align 8
  %88 = call i8* @strstr(i8* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %94, i32* %3, align 4
  br label %239

95:                                               ; preds = %86
  %96 = load i8*, i8** %5, align 8
  %97 = call i8* @strstr(i8* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %100, i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %103 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %103, i32* %3, align 4
  br label %239

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %111, i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %114 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %114, i32* %3, align 4
  br label %239

115:                                              ; preds = %105
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %5, align 8
  %121 = call i8* @strstr(i8* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %115
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @snprintf(i8* %126, i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %127, i8* %130)
  store i32 0, i32* %3, align 4
  br label %239

132:                                              ; preds = %115
  %133 = load i8*, i8** %5, align 8
  %134 = call i8* @strstr(i8* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  store i8* %134, i8** %16, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %137, i32 %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %140 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %140, i32* %3, align 4
  br label %239

141:                                              ; preds = %132
  %142 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %143 = load i8*, i8** %16, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = call i32 @av_strlcpy(i8* %142, i8* %144, i32 300)
  %146 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  store i8* %146, i8** %8, align 8
  br label %147

147:                                              ; preds = %210, %141
  %148 = load i8*, i8** %8, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %212

150:                                              ; preds = %147
  %151 = load i8*, i8** %8, align 8
  %152 = call i8* @strchr(i8* %151, i8 signext 38)
  store i8* %152, i8** %18, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 61)
  store i8* %154, i8** %19, align 8
  %155 = load i8*, i8** %18, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i8*, i8** %18, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %18, align 8
  store i8 0, i8* %158, align 1
  br label %160

160:                                              ; preds = %157, %150
  %161 = load i8*, i8** %19, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %205

163:                                              ; preds = %160
  %164 = load i8*, i8** %19, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %19, align 8
  store i8 0, i8* %164, align 1
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @strcmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %163
  %170 = load i8*, i8** %19, align 8
  store i8* %170, i8** %12, align 8
  br label %204

171:                                              ; preds = %163
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %19, align 8
  store i8* %176, i8** %13, align 8
  br label %203

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %19, align 8
  store i8* %182, i8** %14, align 8
  br label %202

183:                                              ; preds = %177
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %19, align 8
  store i8* %188, i8** %15, align 8
  br label %201

189:                                              ; preds = %183
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = load i8*, i8** %19, align 8
  store i8* %194, i8** %17, align 8
  br label %200

195:                                              ; preds = %189
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = load i32, i32* @AV_LOG_INFO, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %196, i32 %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %195, %193
  br label %201

201:                                              ; preds = %200, %187
  br label %202

202:                                              ; preds = %201, %181
  br label %203

203:                                              ; preds = %202, %175
  br label %204

204:                                              ; preds = %203, %169
  br label %210

205:                                              ; preds = %160
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = load i32, i32* @AV_LOG_WARNING, align 4
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %206, i32 %207, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %205, %204
  %211 = load i8*, i8** %18, align 8
  store i8* %211, i8** %8, align 8
  br label %147

212:                                              ; preds = %147
  %213 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %212
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = call i32 @do_adobe_auth(%struct.TYPE_8__* %217, i8* %218, i8* %219, i8* %220, i8* %221)
  store i32 %222, i32* %11, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %3, align 4
  br label %239

226:                                              ; preds = %216
  br label %236

227:                                              ; preds = %212
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = load i8*, i8** %12, align 8
  %230 = load i8*, i8** %17, align 8
  %231 = call i32 @do_llnw_auth(%struct.TYPE_8__* %228, i8* %229, i8* %230)
  store i32 %231, i32* %11, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %3, align 4
  br label %239

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %226
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  store i32 1, i32* %238, align 8
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %236, %233, %224, %136, %123, %110, %99, %90, %81, %30
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @do_adobe_auth(%struct.TYPE_8__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @do_llnw_auth(%struct.TYPE_8__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
