; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_get_preview_json.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_get_preview_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c"{s:i, s:i, s?b,s:{s:{s:i, s:i, s:{s:i, s:i}},s:i, s?i, s?b, s:i, s:i, s:i,s?[iiii]  }}\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Deinterlace\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"DestSettings\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Geometry\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PAR\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"AnamorphicMode\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Keep\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ItuPAR\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Modulus\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"MaxWidth\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"MaxHeight\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Crop\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"preview params: json unpack failure: %s\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"{s:o, s:o, s:o}\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"hb_get_preview_json: pack failure: %s\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"{s:o, s:o, s:o, s:o, s:o, s:o}\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Stride\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"HeightStride\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"plane_dict: json pack failure: %s\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Planes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_get_preview_json(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 @memset(%struct.TYPE_18__* %14, i32 0, i32 48)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @hb_value_json(i8* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @unpack_i(i32* %8)
  %25 = call i32 @unpack_i(i32* %9)
  %26 = call i32 @unpack_b(i32* %10)
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = call i32 @unpack_i(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = call i32 @unpack_i(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = call i32 @unpack_i(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = call i32 @unpack_i(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %42 = call i32 @unpack_i(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %44 = call i32 @unpack_i(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %46 = call i32 @unpack_b(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %48 = call i32 @unpack_i(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %50 = call i32 @unpack_i(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 5
  %52 = call i32 @unpack_i(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @unpack_i(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i32 @unpack_i(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = call i32 @unpack_i(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = call i32 @unpack_i(i32* %67)
  %69 = call i32 @json_unpack_ex(i32* %23, %struct.TYPE_16__* %12, i32 0, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %56, i32 %60, i32 %64, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = call i32 @hb_value_free(i32** %13)
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 %75)
  store i8* null, i8** %3, align 8
  br label %221

77:                                               ; preds = %2
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call %struct.TYPE_17__* @hb_get_preview2(i32* %78, i32 %79, i32 %80, %struct.TYPE_18__* %14, i32 %81)
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %6, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = icmp eq %struct.TYPE_17__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i8* null, i8** %3, align 8
  br label %221

86:                                               ; preds = %77
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @hb_value_int(i32 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @hb_value_int(i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @hb_value_int(i32 %97)
  %99 = call i32* (%struct.TYPE_16__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, ...) @json_pack_ex(%struct.TYPE_16__* %12, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %86
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %104)
  store i8* null, i8** %3, align 8
  br label %221

106:                                              ; preds = %86
  %107 = call i32* (...) @hb_value_array_init()
  store i32* %107, i32** %15, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %209, %106
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %212

111:                                              ; preds = %108
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @AV_BASE64_SIZE(i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %16, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130, %111
  br label %209

134:                                              ; preds = %130
  %135 = load i32, i32* %16, align 4
  %136 = call i8* @calloc(i32 %135, i32 1)
  store i8* %136, i8** %17, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @av_base64_encode(i8* %137, i32 %138, i32 %146, i32 %154)
  %156 = load i8*, i8** %17, align 8
  %157 = call i32 @strlen(i8* %156)
  store i32 %157, i32* %16, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @hb_value_int(i32 %165)
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @hb_value_int(i32 %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @hb_value_int(i32 %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @hb_value_int(i32 %192)
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @hb_value_int(i32 %194)
  %196 = load i8*, i8** %17, align 8
  %197 = call i32 @hb_value_string(i8* %196)
  %198 = call i32* (%struct.TYPE_16__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, ...) @json_pack_ex(%struct.TYPE_16__* %12, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %197)
  store i32* %198, i32** %18, align 8
  %199 = load i32*, i32** %18, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %134
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @hb_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 %203)
  store i8* null, i8** %3, align 8
  br label %221

205:                                              ; preds = %134
  %206 = load i32*, i32** %15, align 8
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @hb_value_array_append(i32* %206, i32* %207)
  br label %209

209:                                              ; preds = %205, %133
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %108

212:                                              ; preds = %108
  %213 = load i32*, i32** %13, align 8
  %214 = load i32*, i32** %15, align 8
  %215 = call i32 @hb_dict_set(i32* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32* %214)
  %216 = call i32 @hb_image_close(%struct.TYPE_17__** %6)
  %217 = load i32*, i32** %13, align 8
  %218 = call i8* @hb_value_get_json(i32* %217)
  store i8* %218, i8** %19, align 8
  %219 = call i32 @hb_value_free(i32** %13)
  %220 = load i8*, i8** %19, align 8
  store i8* %220, i8** %3, align 8
  br label %221

221:                                              ; preds = %212, %201, %102, %85, %73
  %222 = load i8*, i8** %3, align 8
  ret i8* %222
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32* @hb_value_json(i8*) #1

declare dso_local i32 @json_unpack_ex(i32*, %struct.TYPE_16__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @unpack_i(i32*) #1

declare dso_local i32 @unpack_b(i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @hb_get_preview2(i32*, i32, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32* @json_pack_ex(%struct.TYPE_16__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32 @AV_BASE64_SIZE(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @av_base64_encode(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @hb_image_close(%struct.TYPE_17__**) #1

declare dso_local i8* @hb_value_get_json(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
