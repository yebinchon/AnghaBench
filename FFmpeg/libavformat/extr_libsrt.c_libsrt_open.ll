; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"maxbw\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pbkeylen\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"passphrase\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mss\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ipttl\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"iptos\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"inputbw\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"oheadbw\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"tsbpddelay\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"rcvlatency\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"peerlatency\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"tlpktdrop\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"nakreport\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"connect_timeout\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"payload_size\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"pkt_size\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@SRT_MODE_CALLER = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"listener\00", align 1
@SRT_MODE_LISTENER = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"rendezvous\00", align 1
@SRT_MODE_RENDEZVOUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"sndbuf\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"rcvbuf\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"lossmaxttl\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"minversion\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"streamid\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"smoother\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"messageapi\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"transtype\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@SRTT_LIVE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@SRTT_FILE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @libsrt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsrt_open(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = call i64 (...) @srt_startup()
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %18, i32* %4, align 4
  br label %368

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 63)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %355

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @av_find_info_tag(i8* %25, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %31 = call i8* @strtoll(i8* %30, i32* null, i32 0)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 24
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @av_find_info_tag(i8* %35, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %41 = call i8* @strtol(i8* %40, i32* null, i32 10)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 23
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @av_find_info_tag(i8* %45, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @av_strndup(i8* %50, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 22
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %44
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @av_find_info_tag(i8* %57, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %63 = call i8* @strtol(i8* %62, i32* null, i32 10)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 21
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @av_find_info_tag(i8* %67, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %73 = call i8* @strtol(i8* %72, i32* null, i32 10)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 20
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @av_find_info_tag(i8* %77, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %83 = call i8* @strtol(i8* %82, i32* null, i32 10)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 19
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @av_find_info_tag(i8* %87, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %93 = call i8* @strtol(i8* %92, i32* null, i32 10)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 18
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %86
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @av_find_info_tag(i8* %97, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %103 = call i8* @strtoll(i8* %102, i32* null, i32 10)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 17
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %96
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %108 = load i8*, i8** %9, align 8
  %109 = call i64 @av_find_info_tag(i8* %107, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %113 = call i8* @strtoll(i8* %112, i32* null, i32 10)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 16
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %111, %106
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %118 = load i8*, i8** %9, align 8
  %119 = call i64 @av_find_info_tag(i8* %117, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %123 = call i8* @strtol(i8* %122, i32* null, i32 10)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 15
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %121, %116
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %128 = load i8*, i8** %9, align 8
  %129 = call i64 @av_find_info_tag(i8* %127, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %133 = call i8* @strtol(i8* %132, i32* null, i32 10)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 15
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %126
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %138 = load i8*, i8** %9, align 8
  %139 = call i64 @av_find_info_tag(i8* %137, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %143 = call i8* @strtol(i8* %142, i32* null, i32 10)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 14
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %136
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %148 = load i8*, i8** %9, align 8
  %149 = call i64 @av_find_info_tag(i8* %147, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %153 = call i8* @strtol(i8* %152, i32* null, i32 10)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 13
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %151, %146
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %158 = load i8*, i8** %9, align 8
  %159 = call i64 @av_find_info_tag(i8* %157, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %163 = call i8* @strtol(i8* %162, i32* null, i32 10)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 12
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %161, %156
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %168 = load i8*, i8** %9, align 8
  %169 = call i64 @av_find_info_tag(i8* %167, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %173 = call i8* @strtol(i8* %172, i32* null, i32 10)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 11
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %171, %166
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %178 = load i8*, i8** %9, align 8
  %179 = call i64 @av_find_info_tag(i8* %177, i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %183 = call i8* @strtol(i8* %182, i32* null, i32 10)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 10
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %181, %176
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %188 = load i8*, i8** %9, align 8
  %189 = call i64 @av_find_info_tag(i8* %187, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %193 = load i8*, i8** %9, align 8
  %194 = call i64 @av_find_info_tag(i8* %192, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191, %186
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %198 = call i8* @strtol(i8* %197, i32* null, i32 10)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 9
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %196, %191
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %203 = load i8*, i8** %9, align 8
  %204 = call i64 @av_find_info_tag(i8* %202, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %201
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* @SRT_MODE_CALLER, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 8
  br label %235

214:                                              ; preds = %206
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* @SRT_MODE_LISTENER, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 8
  store i32 %219, i32* %221, align 8
  br label %234

222:                                              ; preds = %214
  %223 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %224 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* @SRT_MODE_RENDEZVOUS, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  br label %233

230:                                              ; preds = %222
  %231 = load i32, i32* @EIO, align 4
  %232 = call i32 @AVERROR(i32 %231)
  store i32 %232, i32* %4, align 4
  br label %368

233:                                              ; preds = %226
  br label %234

234:                                              ; preds = %233, %218
  br label %235

235:                                              ; preds = %234, %210
  br label %236

236:                                              ; preds = %235, %201
  %237 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %238 = load i8*, i8** %9, align 8
  %239 = call i64 @av_find_info_tag(i8* %237, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %243 = call i8* @strtol(i8* %242, i32* null, i32 10)
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 7
  store i8* %243, i8** %245, align 8
  br label %246

246:                                              ; preds = %241, %236
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %248 = load i8*, i8** %9, align 8
  %249 = call i64 @av_find_info_tag(i8* %247, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %253 = call i8* @strtol(i8* %252, i32* null, i32 10)
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 6
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %251, %246
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %258 = load i8*, i8** %9, align 8
  %259 = call i64 @av_find_info_tag(i8* %257, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %263 = call i8* @strtol(i8* %262, i32* null, i32 10)
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 5
  store i8* %263, i8** %265, align 8
  br label %266

266:                                              ; preds = %261, %256
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %268 = load i8*, i8** %9, align 8
  %269 = call i64 @av_find_info_tag(i8* %267, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %273 = call i8* @strtol(i8* %272, i32* null, i32 0)
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 4
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %271, %266
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %278 = load i8*, i8** %9, align 8
  %279 = call i64 @av_find_info_tag(i8* %277, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %276
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = call i32 @av_freep(i8** %283)
  %285 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %286 = call i8* @av_strdup(i8* %285)
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  store i8* %286, i8** %288, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %281
  %294 = load i32, i32* @ENOMEM, align 4
  %295 = call i32 @AVERROR(i32 %294)
  store i32 %295, i32* %11, align 4
  br label %360

296:                                              ; preds = %281
  br label %297

297:                                              ; preds = %296, %276
  %298 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %299 = load i8*, i8** %9, align 8
  %300 = call i64 @av_find_info_tag(i8* %298, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %318

302:                                              ; preds = %297
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = call i32 @av_freep(i8** %304)
  %306 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %307 = call i8* @av_strdup(i8* %306)
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  store i8* %307, i8** %309, align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %302
  %315 = load i32, i32* @ENOMEM, align 4
  %316 = call i32 @AVERROR(i32 %315)
  store i32 %316, i32* %11, align 4
  br label %360

317:                                              ; preds = %302
  br label %318

318:                                              ; preds = %317, %297
  %319 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %320 = load i8*, i8** %9, align 8
  %321 = call i64 @av_find_info_tag(i8* %319, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %325 = call i8* @strtol(i8* %324, i32* null, i32 10)
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  br label %328

328:                                              ; preds = %323, %318
  %329 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %330 = load i8*, i8** %9, align 8
  %331 = call i64 @av_find_info_tag(i8* %329, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %354

333:                                              ; preds = %328
  %334 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %335 = call i32 @strcmp(i8* %334, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* @SRTT_LIVE, align 4
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 8
  br label %353

341:                                              ; preds = %333
  %342 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %343 = call i32 @strcmp(i8* %342, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* @SRTT_FILE, align 4
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 2
  store i32 %346, i32* %348, align 8
  br label %352

349:                                              ; preds = %341
  %350 = load i32, i32* @EINVAL, align 4
  %351 = call i32 @AVERROR(i32 %350)
  store i32 %351, i32* %11, align 4
  br label %360

352:                                              ; preds = %345
  br label %353

353:                                              ; preds = %352, %337
  br label %354

354:                                              ; preds = %353, %328
  br label %355

355:                                              ; preds = %354, %19
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %357 = load i8*, i8** %6, align 8
  %358 = load i32, i32* %7, align 4
  %359 = call i32 @libsrt_setup(%struct.TYPE_5__* %356, i8* %357, i32 %358)
  store i32 %359, i32* %4, align 4
  br label %368

360:                                              ; preds = %349, %314, %293
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 1
  %363 = call i32 @av_freep(i8** %362)
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = call i32 @av_freep(i8** %365)
  %367 = load i32, i32* %11, align 4
  store i32 %367, i32* %4, align 4
  br label %368

368:                                              ; preds = %360, %355, %230, %17
  %369 = load i32, i32* %4, align 4
  ret i32 %369
}

declare dso_local i64 @srt_startup(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strtoll(i8*, i32*, i32) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @av_strndup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @libsrt_setup(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
