; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_add_ffmpeg_audio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_add_ffmpeg_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_28__** }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_38__, %struct.TYPE_35__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__, %struct.TYPE_36__ }
%struct.TYPE_37__ = type { i32, i32, i32, i32, %struct.TYPE_32__, i32, i64 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@HB_ACODEC_FFMPEG = common dso_local global i32 0, align 4
@HB_CONFIG_MAX_SIZE = common dso_local global i32 0, align 4
@HB_ACODEC_FFAAC = common dso_local global i32 0, align 4
@HB_ACODEC_AC3 = common dso_local global i32 0, align 4
@HB_ACODEC_FFEAC3 = common dso_local global i32 0, align 4
@HB_ACODEC_FFTRUEHD = common dso_local global i32 0, align 4
@HB_ACODEC_DCA = common dso_local global i32 0, align 4
@HB_ACODEC_DCA_HD = common dso_local global i32 0, align 4
@HB_ACODEC_FFFLAC = common dso_local global i32 0, align 4
@HB_ACODEC_MP3 = common dso_local global i32 0, align 4
@AV_DISPOSITION_DEFAULT = common dso_local global i32 0, align 4
@HB_AUDIO_ATTR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_26__*, i32)* @add_ffmpeg_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ffmpeg_audio(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %19, i64 %21
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %7, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  store %struct.TYPE_30__* %26, %struct.TYPE_30__** %8, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_29__* @av_dict_get(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %9, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %32 = icmp ne %struct.TYPE_29__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %37 ]
  %40 = call %struct.TYPE_39__* @lang_for_code2(i8* %39)
  store %struct.TYPE_39__* %40, %struct.TYPE_39__** %10, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ffmpeg_track_name(%struct.TYPE_28__* %41, i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = call %struct.TYPE_27__* @calloc(i32 1, i32 64)
  store %struct.TYPE_27__* %46, %struct.TYPE_27__** %12, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* @HB_ACODEC_FFMPEG, align 4
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 3
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 5
  store i32 %73, i32* %77, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 1
  store i32 90000, i32* %87, align 4
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %189 [
    i32 139, label %91
    i32 138, label %119
    i32 136, label %125
    i32 133, label %131
    i32 137, label %137
    i32 135, label %155
    i32 134, label %183
  ]

91:                                               ; preds = %38
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HB_CONFIG_MAX_SIZE, align 4
  %96 = call i32 @MIN(i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @memcpy(i32 %102, i32 %105, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = load i32, i32* @HB_ACODEC_FFAAC, align 4
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 3
  store i32 %114, i32* %118, align 4
  br label %190

119:                                              ; preds = %38
  %120 = load i32, i32* @HB_ACODEC_AC3, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 3
  store i32 %120, i32* %124, align 4
  br label %190

125:                                              ; preds = %38
  %126 = load i32, i32* @HB_ACODEC_FFEAC3, align 4
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 3
  store i32 %126, i32* %130, align 4
  br label %190

131:                                              ; preds = %38
  %132 = load i32, i32* @HB_ACODEC_FFTRUEHD, align 4
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 4
  br label %190

137:                                              ; preds = %38
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %153 [
    i32 132, label %141
    i32 130, label %141
    i32 131, label %141
    i32 128, label %147
    i32 129, label %147
  ]

141:                                              ; preds = %137, %137, %137
  %142 = load i32, i32* @HB_ACODEC_DCA, align 4
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 3
  store i32 %142, i32* %146, align 4
  br label %154

147:                                              ; preds = %137, %137
  %148 = load i32, i32* @HB_ACODEC_DCA_HD, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %151, i32 0, i32 3
  store i32 %148, i32* %152, align 4
  br label %154

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153, %147, %141
  br label %190

155:                                              ; preds = %38
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @HB_CONFIG_MAX_SIZE, align 4
  %160 = call i32 @MIN(i32 %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @memcpy(i32 %166, i32 %169, i32 %170)
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  store i32 %172, i32* %177, align 8
  %178 = load i32, i32* @HB_ACODEC_FFFLAC, align 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 3
  store i32 %178, i32* %182, align 4
  br label %190

183:                                              ; preds = %38
  %184 = load i32, i32* @HB_ACODEC_MP3, align 4
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 3
  store i32 %184, i32* %188, align 4
  br label %190

189:                                              ; preds = %38
  br label %190

190:                                              ; preds = %189, %183, %155, %154, %131, %125, %119, %91
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @AV_DISPOSITION_DEFAULT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load i32, i32* @HB_AUDIO_ATTR_DEFAULT, align 4
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %198
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %197, %190
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %208 = call i32 @set_audio_description(%struct.TYPE_27__* %206, %struct.TYPE_39__* %207)
  %209 = load i8*, i8** %11, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %205
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @strdup(i8* %212)
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %216, i32 0, i32 2
  store i32 %213, i32* %217, align 8
  br label %218

218:                                              ; preds = %211, %205
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %223 = call i32 @hb_list_add(i32 %221, %struct.TYPE_27__* %222)
  ret void
}

declare dso_local %struct.TYPE_29__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_39__* @lang_for_code2(i8*) #1

declare dso_local i8* @ffmpeg_track_name(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @calloc(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_audio_description(%struct.TYPE_27__*, %struct.TYPE_39__*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
