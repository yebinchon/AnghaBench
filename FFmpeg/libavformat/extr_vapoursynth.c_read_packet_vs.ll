; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vapoursynth.c_read_packet_vs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vapoursynth.c_read_packet_vs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_34__**, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32, i32, i32 }
%struct.TYPE_33__ = type { i64, i32*, i64, %struct.TYPE_30__*, i32*, i32 }
%struct.TYPE_30__ = type { i64 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)*, i64 (i32*, i32)*, i32* (i32*)*, i32* (i64, i32, i8*, i32)*, %struct.TYPE_32__* (i32)* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i32, i32*, %struct.TYPE_31__**, i8**, i32, %struct.TYPE_28__, i32 }
%struct.TYPE_31__ = type { i32, i8* }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.vsframe_ref_data = type { i8*, i32*, %struct.TYPE_30__* }

@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@free_vsframe_ref = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error getting frame: %s\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"_Matrix\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"_Primaries\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"_Transfer\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"_ColorRange\00", align 1
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"_SARNum\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_SARDen\00", align 1
@free_frame = common dso_local global i32 0, align 4
@AV_PKT_FLAG_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_23__*)* @read_packet_vs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet_vs(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.vsframe_ref_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  store %struct.TYPE_33__* %22, %struct.TYPE_33__** %6, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %25, i64 0
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  store %struct.TYPE_34__* %27, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_32__* (i32)*, %struct.TYPE_32__* (i32)** %31, align 8
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_32__* %32(i32 %35)
  store %struct.TYPE_32__* %36, %struct.TYPE_32__** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %45, i32* %3, align 4
  br label %401

46:                                               ; preds = %2
  %47 = call %struct.vsframe_ref_data* @av_mallocz(i32 24)
  store %struct.vsframe_ref_data* %47, %struct.vsframe_ref_data** %15, align 8
  %48 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %49 = icmp ne %struct.vsframe_ref_data* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %16, align 4
  br label %397

53:                                               ; preds = %46
  %54 = load i32, i32* @free_vsframe_ref, align 4
  %55 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %56 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %57 = call i8* @av_buffer_create(i32* null, i32 0, i32 %54, %struct.vsframe_ref_data* %55, i32 %56)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %65 = call i32 @av_free(%struct.vsframe_ref_data* %64)
  br label %397

66:                                               ; preds = %53
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 5
  %71 = load i32* (i64, i32, i8*, i32)*, i32* (i64, i32, i8*, i32)** %70, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %79 = call i32* %71(i64 %74, i32 %77, i8* %78, i32 80)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %66
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %86 = call i32 @av_log(%struct.TYPE_25__* %83, i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %87, i32* %16, align 4
  br label %397

88:                                               ; preds = %66
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %90, align 8
  %92 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %93 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %92, i32 0, i32 2
  store %struct.TYPE_30__* %91, %struct.TYPE_30__** %93, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %96 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @av_buffer_ref(i32* %99)
  %101 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %102 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %15, align 8
  %104 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %88
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %16, align 4
  br label %397

110:                                              ; preds = %88
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 4
  %115 = load i32* (i32*)*, i32* (i32*)** %114, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i32* %115(i32* %116)
  store i32* %117, i32** %12, align 8
  %118 = call %struct.TYPE_24__* (...) @av_frame_alloc()
  store %struct.TYPE_24__* %118, %struct.TYPE_24__** %8, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %120 = icmp ne %struct.TYPE_24__* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = call i32 @AVERROR(i32 %122)
  store i32 %123, i32* %16, align 4
  br label %397

124:                                              ; preds = %110
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @get_vs_prop_int(%struct.TYPE_25__* %153, i32* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @get_vs_prop_int(%struct.TYPE_25__* %162, i32* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = trunc i64 %167 to i32
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @get_vs_prop_int(%struct.TYPE_25__* %171, i32* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = call i64 @get_vs_prop_int(%struct.TYPE_25__* %180, i32* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %124
  %185 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 10
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %184, %124
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = call i64 @get_vs_prop_int(%struct.TYPE_25__* %189, i32* %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 9
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 1
  store i64 %191, i64* %194, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = call i64 @get_vs_prop_int(%struct.TYPE_25__* %195, i32* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 0
  %205 = load i64 (i32*, i32)*, i64 (i32*, i32)** %204, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = call i64 %205(i32* %206, i32 0)
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %207, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @av_assert0(i32 %212)
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 1
  %218 = load i32 (i32*, i32)*, i32 (i32*, i32)** %217, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = call i32 %218(i32* %219, i32 0)
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %220, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @av_assert0(i32 %225)
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = call %struct.TYPE_22__* @av_pix_fmt_desc_get(i32 %229)
  store %struct.TYPE_22__* %230, %struct.TYPE_22__** %13, align 8
  store i32 0, i32* %17, align 4
  br label %231

231:                                              ; preds = %344, %188
  %232 = load i32, i32* %17, align 4
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %232, %237
  br i1 %238, label %239, label %347

239:                                              ; preds = %231
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %18, align 4
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %19, align 4
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 3
  %254 = load i64 (i32*, i32)*, i64 (i32*, i32)** %253, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %18, align 4
  %257 = call i64 %254(i32* %255, i32 %256)
  %258 = inttoptr i64 %257 to i8*
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 7
  %261 = load i8**, i8*** %260, align 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  store i8* %258, i8** %264, align 8
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 2
  %269 = load i32 (i32*, i32)*, i32 (i32*, i32)** %268, align 8
  %270 = load i32*, i32** %10, align 8
  %271 = load i32, i32* %18, align 4
  %272 = call i32 %269(i32* %270, i32 %271)
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 5
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %272, i32* %278, align 4
  %279 = load i32*, i32** %14, align 8
  %280 = call i8* @av_buffer_ref(i32* %279)
  %281 = bitcast i8* %280 to %struct.TYPE_31__*
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 6
  %284 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %283, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %284, i64 %286
  store %struct.TYPE_31__* %281, %struct.TYPE_31__** %287, align 8
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 6
  %290 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %289, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %290, i64 %292
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %293, align 8
  %295 = icmp ne %struct.TYPE_31__* %294, null
  br i1 %295, label %299, label %296

296:                                              ; preds = %239
  %297 = load i32, i32* @ENOMEM, align 4
  %298 = call i32 @AVERROR(i32 %297)
  store i32 %298, i32* %16, align 4
  br label %397

299:                                              ; preds = %239
  %300 = load i32, i32* %17, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %17, align 4
  %304 = icmp eq i32 %303, 2
  br i1 %304, label %305, label %311

305:                                              ; preds = %302, %299
  %306 = load i32, i32* %19, align 4
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @AV_CEIL_RSHIFT(i32 %306, i32 %309)
  store i32 %310, i32* %19, align 4
  br label %311

311:                                              ; preds = %305, %302
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 7
  %314 = load i8**, i8*** %313, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %320, align 8
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %321, i64 %323
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 1
  store i8* %318, i8** %326, align 8
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 5
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %17, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %19, align 4
  %335 = mul nsw i32 %333, %334
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 6
  %338 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %337, align 8
  %339 = load i32, i32* %17, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %338, i64 %340
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %342, i32 0, i32 0
  store i32 %335, i32* %343, align 8
  br label %344

344:                                              ; preds = %311
  %345 = load i32, i32* %17, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %17, align 4
  br label %231

347:                                              ; preds = %231
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %349 = bitcast %struct.TYPE_24__* %348 to i32*
  %350 = load i32, i32* @free_frame, align 4
  %351 = call i8* @av_buffer_create(i32* %349, i32 80, i32 %350, %struct.vsframe_ref_data* null, i32 0)
  %352 = bitcast i8* %351 to %struct.TYPE_26__*
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 2
  store %struct.TYPE_26__* %352, %struct.TYPE_26__** %354, align 8
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %356, align 8
  %358 = icmp ne %struct.TYPE_26__* %357, null
  br i1 %358, label %362, label %359

359:                                              ; preds = %347
  %360 = load i32, i32* @ENOMEM, align 4
  %361 = call i32 @AVERROR(i32 %360)
  store i32 %361, i32* %16, align 4
  br label %397

362:                                              ; preds = %347
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 2
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 4
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 2
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 3
  store i32 %374, i32* %376, align 8
  %377 = load i32, i32* @AV_PKT_FLAG_TRUSTED, align 4
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  %382 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %362
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  br label %392

392:                                              ; preds = %386, %362
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %395, 1
  store i64 %396, i64* %394, align 8
  br label %397

397:                                              ; preds = %392, %359, %296, %121, %107, %82, %61, %50
  %398 = call i32 @av_frame_free(%struct.TYPE_24__** %8)
  %399 = call i32 @av_buffer_unref(i32** %14)
  %400 = load i32, i32* %16, align 4
  store i32 %400, i32* %3, align 4
  br label %401

401:                                              ; preds = %397, %44
  %402 = load i32, i32* %3, align 4
  ret i32 %402
}

declare dso_local %struct.vsframe_ref_data* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_buffer_create(i32*, i32, i32, %struct.vsframe_ref_data*, i32) #1

declare dso_local i32 @av_free(%struct.vsframe_ref_data*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i8*) #1

declare dso_local i8* @av_buffer_ref(i32*) #1

declare dso_local %struct.TYPE_24__* @av_frame_alloc(...) #1

declare dso_local i64 @get_vs_prop_int(%struct.TYPE_25__*, i32*, i8*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local %struct.TYPE_22__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @av_buffer_unref(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
