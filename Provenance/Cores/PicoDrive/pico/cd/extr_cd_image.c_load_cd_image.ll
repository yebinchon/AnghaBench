; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cd_image.c_load_cd_image.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cd_image.c_load_cd_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i64 }

@load_cd_image.exts = internal global [10 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"%02d.mp3\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" %02d.mp3\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-%02d.mp3\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"_%02d.mp3\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" - %02d.mp3\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%d.mp3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" %d.mp3\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"-%d.mp3\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"_%d.mp3\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" - %d.mp3\00", align 1
@cdd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@CT_UNKNOWN = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_11__* null, align 8
@CT_ISO = common dso_local global i32 0, align 4
@EL_STATUS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Track  1: %s %9i DATA  %s\00", align 1
@CT_MP3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"track %2i (%s): can't determine length\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Track %2i: %s %9i AUDIO %s\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Track %2i: %s %9i AUDIO - %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"End CD -  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_cd_image(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca [10 x i8], align 1
  %18 = alloca [10 x i8], align 1
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cdd, i32 0, i32 0, i32 2), align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %20, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @PicoCDLoadProgressCB(i8* %26, i32 1)
  %28 = load i32, i32* @CT_UNKNOWN, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Pico_mcd, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.TYPE_16__* @cue_parse(i8* %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %20, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %2
  %50 = load i8*, i8** %4, align 8
  %51 = call %struct.TYPE_15__* @pm_open(i8* %50)
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %21, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %53 = icmp eq %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %59 = call i32 @cue_destroy(%struct.TYPE_16__* %58)
  br label %60

60:                                               ; preds = %57, %54
  store i32 -1, i32* %3, align 4
  br label %549

61:                                               ; preds = %49
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CT_ISO, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 11
  store i32 %74, i32* %72, align 4
  store i32 %74, i32* %15, align 4
  br label %80

75:                                               ; preds = %61
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 2352
  store i32 %79, i32* %77, align 4
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %92 = call i32 @sprintf_lba(i8* %91, i32 10, i32 0)
  %93 = load i32, i32* @EL_STATUS, align 4
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i32, i8*, ...) @elprintf(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %94, i32 %98, i8* %99)
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %103 = icmp ne %struct.TYPE_16__* %102, null
  br i1 %103, label %104, label %365

104:                                              ; preds = %80
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 2
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 2
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  store i32 %118, i32* %9, align 4
  br label %122

122:                                              ; preds = %112, %104
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 100, %125
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  store i32 2, i32* %8, align 4
  br label %128

128:                                              ; preds = %361, %122
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %129, %132
  br i1 %133, label %134, label %364

134:                                              ; preds = %128
  %135 = load i8*, i8** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %136, %137
  %139 = call i32 @PicoCDLoadProgressCB(i8* %135, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %9, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CT_MP3, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %134
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @handle_mp3(i8* %172, i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %164
  br label %364

178:                                              ; preds = %164
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %11, align 4
  br label %295

180:                                              ; preds = %134
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %244

190:                                              ; preds = %180
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call %struct.TYPE_15__* @pm_open(i8* %198)
  store %struct.TYPE_15__* %199, %struct.TYPE_15__** %22, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %201 = icmp ne %struct.TYPE_15__* %200, null
  br i1 %201, label %202, label %226

202:                                              ; preds = %190
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 3
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %208, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  store i32 %216, i32* %221, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 2352
  store i32 %225, i32* %11, align 4
  br label %243

226:                                              ; preds = %190
  %227 = load i32, i32* @EL_STATUS, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 (i32, i8*, ...) @elprintf(i32 %227, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %228, i8* %236)
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  store i32 0, i32* %242, align 8
  store i32 150, i32* %11, align 4
  br label %243

243:                                              ; preds = %226, %202
  br label %294

244:                                              ; preds = %180
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %244
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %259, %267
  store i32 %268, i32* %11, align 4
  br label %280

269:                                              ; preds = %244
  %270 = load i32, i32* %15, align 4
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %270, %278
  store i32 %279, i32* %11, align 4
  br label %280

280:                                              ; preds = %269, %250
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  store i32 %288, i32* %293, align 8
  br label %294

294:                                              ; preds = %280, %243
  br label %295

295:                                              ; preds = %294, %178
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %295
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  store i32 %313, i32* %11, align 4
  br label %314

314:                                              ; preds = %305, %295
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Pico_mcd, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %9, align 4
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %327 = load i32, i32* %10, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  store i32 %325, i32* %330, align 8
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %336 = load i32, i32* %10, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  store i32 %334, i32* %339, align 4
  %340 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %342 = load i32, i32* %10, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @sprintf_lba(i8* %340, i32 10, i32 %346)
  %348 = load i32, i32* @EL_STATUS, align 4
  %349 = load i32, i32* %8, align 4
  %350 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %351 = load i32, i32* %11, align 4
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (i32, i8*, ...) @elprintf(i32 %348, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %349, i8* %350, i32 %351, i8* %359)
  br label %361

361:                                              ; preds = %314
  %362 = load i32, i32* %8, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %8, align 4
  br label %128

364:                                              ; preds = %177, %128
  br label %531

365:                                              ; preds = %80
  %366 = load i8*, i8** %4, align 8
  %367 = call i32 @strlen(i8* %366)
  store i32 %367, i32* %13, align 4
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = icmp uge i64 %369, 256
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  store i32 255, i32* %13, align 4
  br label %372

372:                                              ; preds = %371, %365
  store i32 2, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %14, align 4
  br label %373

373:                                              ; preds = %527, %372
  %374 = load i32, i32* %6, align 4
  %375 = icmp slt i32 %374, 100
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i32, i32* %14, align 4
  %378 = icmp slt i32 %377, 4
  br label %379

379:                                              ; preds = %376, %373
  %380 = phi i1 [ false, %373 ], [ %378, %376 ]
  br i1 %380, label %381, label %530

381:                                              ; preds = %379
  %382 = load i32, i32* %6, align 4
  %383 = icmp sgt i32 %382, 1
  br i1 %383, label %384, label %394

384:                                              ; preds = %381
  %385 = load i8*, i8** %4, align 8
  %386 = load i32, i32* %6, align 4
  %387 = load i32, i32* %6, align 4
  %388 = sub nsw i32 100, %387
  %389 = load i32, i32* %14, align 4
  %390 = mul nsw i32 %388, %389
  %391 = sdiv i32 %390, 4
  %392 = add nsw i32 %386, %391
  %393 = call i32 @PicoCDLoadProgressCB(i8* %385, i32 %392)
  br label %394

394:                                              ; preds = %384, %381
  store i32 0, i32* %7, align 4
  br label %395

395:                                              ; preds = %514, %394
  %396 = load i32, i32* %7, align 4
  %397 = sext i32 %396 to i64
  %398 = icmp ult i64 %397, 10
  br i1 %398, label %399, label %517

399:                                              ; preds = %395
  %400 = load i32, i32* %8, align 4
  %401 = sub nsw i32 %400, 1
  store i32 %401, i32* %10, align 4
  %402 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [10 x i8*], [10 x i8*]* @load_cd_image.exts, i64 0, i64 %404
  %406 = load i8*, i8** %405, align 8
  %407 = load i32, i32* %6, align 4
  %408 = call i32 @snprintf(i8* %402, i32 10, i8* %406, i32 %407)
  %409 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %410 = call i32 @strlen(i8* %409)
  store i32 %410, i32* %23, align 4
  %411 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %412 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %413 = call i32 @to_upper(i8* %411, i8* %412)
  %414 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %415 = load i8*, i8** %4, align 8
  %416 = load i32, i32* %13, align 4
  %417 = add nsw i32 %416, 1
  %418 = call i32 @memcpy(i8* %414, i8* %415, i32 %417)
  %419 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %420 = load i32, i32* %13, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %419, i64 %421
  %423 = getelementptr inbounds i8, i8* %422, i64 -4
  store i8* %423, i8** %24, align 8
  %424 = load i8*, i8** %24, align 8
  %425 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %426 = call i32 @strcpy(i8* %424, i8* %425)
  %427 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %428 = load i32, i32* %10, align 4
  %429 = call i32 @handle_mp3(i8* %427, i32 %428)
  store i32 %429, i32* %12, align 4
  %430 = load i32, i32* %12, align 4
  %431 = icmp sle i32 %430, 0
  br i1 %431, label %432, label %439

432:                                              ; preds = %399
  %433 = load i8*, i8** %24, align 8
  %434 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %435 = call i32 @strcpy(i8* %433, i8* %434)
  %436 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %437 = load i32, i32* %10, align 4
  %438 = call i32 @handle_mp3(i8* %436, i32 %437)
  store i32 %438, i32* %12, align 4
  br label %439

439:                                              ; preds = %432, %399
  %440 = load i32, i32* %12, align 4
  %441 = icmp sle i32 %440, 0
  br i1 %441, label %442, label %474

442:                                              ; preds = %439
  %443 = load i32, i32* %6, align 4
  %444 = icmp sgt i32 %443, 1
  br i1 %444, label %445, label %474

445:                                              ; preds = %442
  %446 = load i32, i32* %13, align 4
  %447 = load i32, i32* %23, align 4
  %448 = icmp sgt i32 %446, %447
  br i1 %448, label %449, label %474

449:                                              ; preds = %445
  %450 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %451 = load i32, i32* %13, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  %454 = load i32, i32* %23, align 4
  %455 = sext i32 %454 to i64
  %456 = sub i64 0, %455
  %457 = getelementptr inbounds i8, i8* %453, i64 %456
  store i8* %457, i8** %24, align 8
  %458 = load i8*, i8** %24, align 8
  %459 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %460 = call i32 @strcpy(i8* %458, i8* %459)
  %461 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %462 = load i32, i32* %10, align 4
  %463 = call i32 @handle_mp3(i8* %461, i32 %462)
  store i32 %463, i32* %12, align 4
  %464 = load i32, i32* %12, align 4
  %465 = icmp sle i32 %464, 0
  br i1 %465, label %466, label %473

466:                                              ; preds = %449
  %467 = load i8*, i8** %24, align 8
  %468 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %469 = call i32 @strcpy(i8* %467, i8* %468)
  %470 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %471 = load i32, i32* %10, align 4
  %472 = call i32 @handle_mp3(i8* %470, i32 %471)
  store i32 %472, i32* %12, align 4
  br label %473

473:                                              ; preds = %466, %449
  br label %474

474:                                              ; preds = %473, %445, %442, %439
  %475 = load i32, i32* %12, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %513

477:                                              ; preds = %474
  %478 = load i32, i32* %12, align 4
  store i32 %478, i32* %11, align 4
  %479 = load i32, i32* %9, align 4
  %480 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %481 = load i32, i32* %10, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 0
  store i32 %479, i32* %484, align 8
  %485 = load i32, i32* %11, align 4
  %486 = load i32, i32* %9, align 4
  %487 = add nsw i32 %486, %485
  store i32 %487, i32* %9, align 4
  %488 = load i32, i32* %9, align 4
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %490 = load i32, i32* %10, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 1
  store i32 %488, i32* %493, align 4
  %494 = load i32, i32* @CT_MP3, align 4
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Pico_mcd, align 8
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 0
  store i32 %494, i32* %496, align 4
  %497 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %499 = load i32, i32* %10, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @sprintf_lba(i8* %497, i32 10, i32 %503)
  %505 = load i32, i32* @EL_STATUS, align 4
  %506 = load i32, i32* %8, align 4
  %507 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %508 = load i32, i32* %11, align 4
  %509 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %510 = call i32 (i32, i8*, ...) @elprintf(i32 %505, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %506, i8* %507, i32 %508, i8* %509)
  %511 = load i32, i32* %8, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %517

513:                                              ; preds = %474
  br label %514

514:                                              ; preds = %513
  %515 = load i32, i32* %7, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %7, align 4
  br label %395

517:                                              ; preds = %477, %395
  %518 = load i32, i32* %12, align 4
  %519 = icmp sle i32 %518, 0
  br i1 %519, label %520, label %526

520:                                              ; preds = %517
  %521 = load i32, i32* %6, align 4
  %522 = icmp sgt i32 %521, 1
  br i1 %522, label %523, label %526

523:                                              ; preds = %520
  %524 = load i32, i32* %14, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %14, align 4
  br label %526

526:                                              ; preds = %523, %520, %517
  br label %527

527:                                              ; preds = %526
  %528 = load i32, i32* %6, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %6, align 4
  br label %373

530:                                              ; preds = %379
  br label %531

531:                                              ; preds = %530, %364
  %532 = load i32, i32* %8, align 4
  %533 = sub nsw i32 %532, 1
  store i32 %533, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cdd, i32 0, i32 0, i32 0), align 8
  %534 = load i32, i32* %9, align 4
  store i32 %534, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cdd, i32 0, i32 0, i32 1), align 4
  %535 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %536 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cdd, i32 0, i32 0, i32 1), align 4
  %537 = call i32 @sprintf_lba(i8* %535, i32 10, i32 %536)
  %538 = load i32, i32* @EL_STATUS, align 4
  %539 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %540 = call i32 (i32, i8*, ...) @elprintf(i32 %538, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %539)
  %541 = load i8*, i8** %4, align 8
  %542 = call i32 @PicoCDLoadProgressCB(i8* %541, i32 100)
  %543 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %544 = icmp ne %struct.TYPE_16__* %543, null
  br i1 %544, label %545, label %548

545:                                              ; preds = %531
  %546 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %547 = call i32 @cue_destroy(%struct.TYPE_16__* %546)
  br label %548

548:                                              ; preds = %545, %531
  store i32 0, i32* %3, align 4
  br label %549

549:                                              ; preds = %548, %60
  %550 = load i32, i32* %3, align 4
  ret i32 %550
}

declare dso_local i32 @PicoCDLoadProgressCB(i8*, i32) #1

declare dso_local %struct.TYPE_16__* @cue_parse(i8*) #1

declare dso_local %struct.TYPE_15__* @pm_open(i8*) #1

declare dso_local i32 @cue_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @sprintf_lba(i8*, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @handle_mp3(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @to_upper(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
