; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_icecast.c_icecast_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_icecast.c_icecast_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64 }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Ice-Name\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Ice-Description\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Ice-URL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Ice-Genre\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Ice-Public\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SOURCE\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"auth_type\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"chunked_post\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"send_expect_100\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"content_type\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"audio/mpeg\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"user_agent\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [49 x i8] c"Overwriting -password <pass> with URI password!\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@DEFAULT_ICE_USER = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"No mountpoint (path) specified!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @icecast_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icecast_open(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AVIO_FLAG_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %211

30:                                               ; preds = %3
  %31 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %32 = call i32 @av_bprint_init(i32* %18, i32 0, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @cat_header(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @cat_header(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cat_header(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @cat_header(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %55 = call i32 @cat_header(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  %56 = call i32 @av_bprint_is_complete(i32* %18)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %30
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %17, align 4
  br label %206

61:                                               ; preds = %30
  %62 = call i32 @av_bprint_finalize(i32* %18, i8** %14)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %69 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %68, i32 0)
  %70 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %71, i32 0)
  %73 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %80 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %79, i32 0)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @NOT_EMPTY(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %61
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %89, i32 0)
  br label %93

91:                                               ; preds = %61
  %92 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 0)
  br label %93

93:                                               ; preds = %91, %86
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @NOT_EMPTY(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %102, i32 0)
  br label %104

104:                                              ; preds = %99, %93
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @av_url_split(i32* null, i32 0, i8* %105, i32 1024, i8* %106, i32 1024, i32* %16, i8* %107, i32 1024, i8* %108)
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %111 = load i8, i8* %110, align 16
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %104
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %115 = call i8* @strchr(i8* %114, i8 signext 58)
  store i8* %115, i8** %19, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %144

118:                                              ; preds = %113
  %119 = load i8*, i8** %19, align 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %19, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %19, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @av_free(i8* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = load i32, i32* @AV_LOG_WARNING, align 4
  %133 = call i32 @av_log(%struct.TYPE_6__* %131, i32 %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0))
  br label %134

134:                                              ; preds = %126, %118
  %135 = load i8*, i8** %19, align 8
  %136 = call i8* @av_strdup(i8* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = icmp ne i8* %136, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %17, align 4
  br label %206

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %113
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %146 = call i8* @av_strdup(i8* %145)
  store i8* %146, i8** %15, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = call i32 @AVERROR(i32 %149)
  store i32 %150, i32* %17, align 4
  br label %206

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %104
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %154 = load i8*, i8** %15, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i8*, i8** %15, align 8
  br label %160

158:                                              ; preds = %152
  %159 = load i8*, i8** @DEFAULT_ICE_USER, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i8* [ %157, %156 ], [ %159, %158 ]
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 6
  %169 = load i8*, i8** %168, align 8
  br label %171

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i8* [ %169, %166 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %170 ]
  %173 = call i32 @snprintf(i8* %153, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %161, i8* %172)
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %175 = load i8, i8* %174, align 16
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177, %171
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = load i32, i32* @AV_LOG_ERROR, align 4
  %184 = call i32 @av_log(%struct.TYPE_6__* %182, i32 %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  %185 = load i32, i32* @EIO, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %17, align 4
  br label %206

187:                                              ; preds = %177
  %188 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %191 = load i32, i32* %16, align 4
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %193 = call i32 @ff_url_join(i8* %188, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %189, i8* %190, i32 %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %192)
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 7
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %197 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = call i32 @ffurl_open_whitelist(i32* %195, i8* %196, i32 %197, i32* null, i32** %9, i32 %200, i32 %203, %struct.TYPE_6__* %204)
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %187, %181, %148, %140, %58
  %207 = call i32 @av_freep(i8** %15)
  %208 = call i32 @av_freep(i8** %14)
  %209 = call i32 @av_dict_free(i32** %9)
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %206, %27
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @cat_header(i32*, i8*, i8*) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i64 @NOT_EMPTY(i8*) #1

declare dso_local i32 @av_url_split(i32*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
