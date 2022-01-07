; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_hdlr_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_hdlr_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"dhlr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"url \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DataHandler\00", align 1
@MODE_MOV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mhlr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"vide\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"VideoHandler\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"soun\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"SoundHandler\00", align 1
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"clcp\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ClosedCaptionHandler\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"sbtl\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"subp\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"SubtitleHandler\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"HintHandler\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"tmcd\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"TimeCodeHandler\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"GoPro MET\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [48 x i8] c"Unknown hldr_type for %s, writing dummy values\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"handler_name\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"hdlr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, %struct.TYPE_14__*)* @mov_write_hdlr_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_hdlr_tag(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @avio_tell(i32* %16)
  store i32 %17, i32* %11, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %144

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MODE_MOV, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %118

36:                                               ; preds = %20
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %117

45:                                               ; preds = %36
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %45
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = call i64 @is_clcp_track(%struct.TYPE_14__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %75

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @MKTAG(i8 signext 116, i8 signext 120, i8 signext 51, i8 signext 103)
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %74

65:                                               ; preds = %58
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @MKTAG(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 115)
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %73

72:                                               ; preds = %65
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %64
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %57
  br label %116

76:                                               ; preds = %45
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %115

85:                                               ; preds = %76
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %114

94:                                               ; preds = %85
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @MKTAG(i8 signext 103, i8 signext 112, i8 signext 109, i8 signext 100)
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %113

103:                                              ; preds = %94
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = load i32, i32* @AV_LOG_WARNING, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @av_fourcc2str(i64 %110)
  %112 = call i32 @av_log(%struct.TYPE_16__* %104, i32 %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %103, %102
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %84
  br label %116

116:                                              ; preds = %115, %75
  br label %117

117:                                              ; preds = %116, %44
  br label %118

118:                                              ; preds = %117, %35
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = icmp ne %struct.TYPE_13__* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.TYPE_17__* @av_dict_get(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %12, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %131 = icmp ne %struct.TYPE_17__* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %123
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @utf8len(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %9, align 8
  br label %142

142:                                              ; preds = %138, %132, %123
  br label %143

143:                                              ; preds = %142, %118
  br label %144

144:                                              ; preds = %143, %3
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8** %9, align 8
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @avio_wb32(i32* %151, i32 0)
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @ffio_wfourcc(i32* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @avio_wb32(i32* %155, i32 0)
  %157 = load i32*, i32** %5, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @avio_write(i32* %157, i8* %158, i32 4)
  %160 = load i32*, i32** %5, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @ffio_wfourcc(i32* %160, i8* %161)
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @avio_wb32(i32* %163, i32 0)
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @avio_wb32(i32* %165, i32 0)
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @avio_wb32(i32* %167, i32 0)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = icmp ne %struct.TYPE_14__* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %150
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @MODE_MOV, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171, %150
  %178 = load i32*, i32** %5, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = call i32 @avio_w8(i32* %178, i32 %180)
  br label %182

182:                                              ; preds = %177, %171
  %183 = load i32*, i32** %5, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @strlen(i8* %185)
  %187 = call i32 @avio_write(i32* %183, i8* %184, i32 %186)
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %189 = icmp ne %struct.TYPE_14__* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %182
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MODE_MOV, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @avio_w8(i32* %197, i32 0)
  br label %199

199:                                              ; preds = %196, %190, %182
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @update_size(i32* %200, i32 %201)
  ret i32 %202
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i64 @is_clcp_track(%struct.TYPE_14__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @av_fourcc2str(i64) #1

declare dso_local %struct.TYPE_17__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
