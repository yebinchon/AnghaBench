; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_print_pkt_side_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_print_pkt_side_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, double, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i32*, i32**, i64 }
%struct.TYPE_14__ = type { double, double }

@.str = private unnamed_addr constant [15 x i8] c"side_data_type\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@AV_PKT_DATA_DISPLAYMATRIX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"displaymatrix\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %11d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@AV_PKT_DATA_STEREO3D = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"inverted\00", align 1
@AV_STEREO3D_FLAG_INVERT = common dso_local global i32 0, align 4
@AV_PKT_DATA_SPHERICAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"projection\00", align 1
@AV_SPHERICAL_CUBEMAP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@AV_SPHERICAL_EQUIRECTANGULAR_TILE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"bound_left\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bound_top\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"bound_right\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"bound_bottom\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"yaw\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"roll\00", align 1
@AV_PKT_DATA_SKIP_SAMPLES = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"skip_samples\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"discard_padding\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"skip_reason\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"discard_reason\00", align 1
@AV_PKT_DATA_MASTERING_DISPLAY_METADATA = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"red_x\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"red_y\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"green_x\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"green_y\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"blue_x\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"blue_y\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"white_point_x\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"white_point_y\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"min_luminance\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"max_luminance\00", align 1
@AV_PKT_DATA_CONTENT_LIGHT_LEVEL = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [12 x i8] c"max_content\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"max_average\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, %struct.TYPE_12__*, i32, i32, i32)* @print_pkt_side_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pkt_side_data(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_12__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @writer_print_section_header(i32* %24, i32 %25)
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %326, %6
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %329

31:                                               ; preds = %27
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %34
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %14, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @av_packet_side_data_name(i64 %38)
  store i8* %39, i8** %15, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @writer_print_section_header(i32* %40, i32 %41)
  %43 = load i8*, i8** %15, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i8*, i8** %15, align 8
  br label %48

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %47 ]
  %50 = call i32 @print_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AV_PKT_DATA_DISPLAYMATRIX, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 36
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @writer_print_integers(i32* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %65, i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 4, i32 1)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = call double @av_display_rotation_get(i32* %70)
  %72 = call i32 @print_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %71)
  br label %323

73:                                               ; preds = %56, %48
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AV_PKT_DATA_STEREO3D, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %16, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @av_stereo3d_type_name(i32 %86)
  %88 = call i32 @print_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = sitofp i32 %97 to double
  %99 = call i32 @print_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), double %98)
  br label %322

100:                                              ; preds = %73
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AV_PKT_DATA_SPHERICAL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %173

106:                                              ; preds = %100
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %17, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @av_spherical_projection_name(i64 %113)
  %115 = call i32 @print_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AV_SPHERICAL_CUBEMAP, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load double, double* %123, align 8
  %125 = call i32 @print_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), double %124)
  br label %154

126:                                              ; preds = %106
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AV_SPHERICAL_EQUIRECTANGULAR_TILE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %126
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @av_spherical_tile_bounds(%struct.TYPE_11__* %133, i32 %136, i32 %139, i64* %18, i64* %19, i64* %20, i64* %21)
  %141 = load i64, i64* %18, align 8
  %142 = uitofp i64 %141 to double
  %143 = call i32 @print_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), double %142)
  %144 = load i64, i64* %19, align 8
  %145 = uitofp i64 %144 to double
  %146 = call i32 @print_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), double %145)
  %147 = load i64, i64* %20, align 8
  %148 = uitofp i64 %147 to double
  %149 = call i32 @print_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), double %148)
  %150 = load i64, i64* %21, align 8
  %151 = uitofp i64 %150 to double
  %152 = call i32 @print_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), double %151)
  br label %153

153:                                              ; preds = %132, %126
  br label %154

154:                                              ; preds = %153, %121
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = sitofp i64 %157 to double
  %159 = fdiv double %158, 6.553600e+04
  %160 = call i32 @print_int(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), double %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = sitofp i64 %163 to double
  %165 = fdiv double %164, 6.553600e+04
  %166 = call i32 @print_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = sitofp i64 %169 to double
  %171 = fdiv double %170, 6.553600e+04
  %172 = call i32 @print_int(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), double %171)
  br label %321

173:                                              ; preds = %100
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @AV_PKT_DATA_SKIP_SAMPLES, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %173
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 10
  br i1 %183, label %184, label %208

184:                                              ; preds = %179
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call double @AV_RL32(i64 %187)
  %189 = call i32 @print_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), double %188)
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 4
  %194 = call double @AV_RL32(i64 %193)
  %195 = call i32 @print_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), double %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 8
  %200 = call double @AV_RL8(i64 %199)
  %201 = call i32 @print_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), double %200)
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 9
  %206 = call double @AV_RL8(i64 %205)
  %207 = call i32 @print_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), double %206)
  br label %320

208:                                              ; preds = %179, %173
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AV_PKT_DATA_MASTERING_DISPLAY_METADATA, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %299

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %218, %struct.TYPE_13__** %22, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %284

223:                                              ; preds = %214
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 4
  %226 = load i32**, i32*** %225, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @print_q(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %230, i8 signext 47)
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 4
  %234 = load i32**, i32*** %233, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @print_q(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %238, i8 signext 47)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 4
  %242 = load i32**, i32*** %241, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @print_q(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %246, i8 signext 47)
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 4
  %250 = load i32**, i32*** %249, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @print_q(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 %254, i8 signext 47)
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 4
  %258 = load i32**, i32*** %257, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 2
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @print_q(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %262, i8 signext 47)
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 4
  %266 = load i32**, i32*** %265, align 8
  %267 = getelementptr inbounds i32*, i32** %266, i64 2
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @print_q(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %270, i8 signext 47)
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @print_q(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %276, i8 signext 47)
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @print_q(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %282, i8 signext 47)
  br label %284

284:                                              ; preds = %223, %214
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @print_q(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %292, i8 signext 47)
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @print_q(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %296, i8 signext 47)
  br label %298

298:                                              ; preds = %289, %284
  br label %319

299:                                              ; preds = %208
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @AV_PKT_DATA_CONTENT_LIGHT_LEVEL, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %318

305:                                              ; preds = %299
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %309, %struct.TYPE_14__** %23, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load double, double* %311, align 8
  %313 = call i32 @print_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), double %312)
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 1
  %316 = load double, double* %315, align 8
  %317 = call i32 @print_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), double %316)
  br label %318

318:                                              ; preds = %305, %299
  br label %319

319:                                              ; preds = %318, %298
  br label %320

320:                                              ; preds = %319, %184
  br label %321

321:                                              ; preds = %320, %154
  br label %322

322:                                              ; preds = %321, %79
  br label %323

323:                                              ; preds = %322, %61
  %324 = load i32*, i32** %7, align 8
  %325 = call i32 @writer_print_section_footer(i32* %324)
  br label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %13, align 4
  br label %27

329:                                              ; preds = %27
  %330 = load i32*, i32** %7, align 8
  %331 = call i32 @writer_print_section_footer(i32* %330)
  ret void
}

declare dso_local i32 @writer_print_section_header(i32*, i32) #1

declare dso_local i8* @av_packet_side_data_name(i64) #1

declare dso_local i32 @print_str(i8*, i8*) #1

declare dso_local i32 @writer_print_integers(i32*, i8*, i64, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @print_int(i8*, double) #1

declare dso_local double @av_display_rotation_get(i32*) #1

declare dso_local i8* @av_stereo3d_type_name(i32) #1

declare dso_local i8* @av_spherical_projection_name(i64) #1

declare dso_local i32 @av_spherical_tile_bounds(%struct.TYPE_11__*, i32, i32, i64*, i64*, i64*, i64*) #1

declare dso_local double @AV_RL32(i64) #1

declare dso_local double @AV_RL8(i64) #1

declare dso_local i32 @print_q(i8*, i32, i8 signext) #1

declare dso_local i32 @writer_print_section_footer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
