; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_audio_resample.c_hb_audio_resample_update.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_audio_resample.c_hb_audio_resample_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"hb_audio_resample_update: resample is NULL\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"hb_audio_resample_update: swr_alloc() failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out_sample_fmt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"out_sample_rate\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"out_channel_layout\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"matrix_encoding\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"rematrix_maxval\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"in_sample_fmt\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"in_sample_rate\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"in_channel_layout\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"lfe_mix_level\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"center_mix_level\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"surround_mix_level\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"hb_audio_resample_update: swr_init() failed (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_audio_resample_update(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %299

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  br label %41

41:                                               ; preds = %31, %21, %11
  %42 = phi i1 [ true, %21 ], [ true, %11 ], [ %40, %31 ]
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %110, label %60

60:                                               ; preds = %50
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %110, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %110, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %94, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %104, %108
  br label %110

110:                                              ; preds = %100, %90, %80, %70, %60, %50
  %111 = phi i1 [ true, %90 ], [ true, %80 ], [ true, %70 ], [ true, %60 ], [ true, %50 ], [ %109, %100 ]
  br label %112

112:                                              ; preds = %110, %41
  %113 = phi i1 [ false, %41 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %298

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %298

127:                                              ; preds = %122, %112
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %183

132:                                              ; preds = %127
  %133 = call i32* (...) @swr_alloc()
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store i32* %133, i32** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %299

142:                                              ; preds = %132
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @av_opt_set_int(i32* %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %149, i32 0)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @av_opt_set_int(i32* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %157, i32 0)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @av_opt_set_int(i32* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %165, i32 0)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @av_opt_set_int(i32* %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %173, i32 0)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @av_opt_set_double(i32* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %181, i32 0)
  br label %183

183:                                              ; preds = %142, %127
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @av_opt_set_int(i32* %186, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %190, i32 0)
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @av_opt_set_int(i32* %194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %198, i32 0)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @av_opt_set_int(i32* %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %206, i32 0)
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @av_opt_set_double(i32* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %214, i32 0)
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @av_opt_set_double(i32* %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %222, i32 0)
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @av_opt_set_double(i32* %226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 %230, i32 0)
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @swr_init(i32* %234)
  store i32 %235, i32* %4, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %183
  %238 = load i32, i32* %4, align 4
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %240 = call i32 @av_strerror(i32 %238, i8* %239, i32 63)
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %242 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i8* %241)
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 3
  %245 = call i32 @swr_free(i32** %244)
  %246 = load i32, i32* %4, align 4
  store i32 %246, i32* %2, align 4
  br label %299

247:                                              ; preds = %183
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  store i64 %251, i64* %254, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  store i64 %258, i64* %261, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  store i64 %265, i64* %268, align 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @av_get_channel_layout_nb_channels(i64 %272)
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 6
  store i32 %273, i32* %276, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 3
  store i64 %280, i64* %283, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 4
  store i64 %287, i64* %290, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 5
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 5
  store i64 %294, i64* %297, align 8
  br label %298

298:                                              ; preds = %247, %122, %117
  store i32 0, i32* %2, align 4
  br label %299

299:                                              ; preds = %298, %237, %140, %9
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32* @swr_alloc(...) #1

declare dso_local i32 @av_opt_set_int(i32*, i8*, i64, i32) #1

declare dso_local i32 @av_opt_set_double(i32*, i8*, i64, i32) #1

declare dso_local i32 @swr_init(i32*) #1

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

declare dso_local i32 @swr_free(i32**) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
