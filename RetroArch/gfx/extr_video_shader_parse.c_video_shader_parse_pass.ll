; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_parse_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_parse_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.video_shader_pass = type { i32, i32, i8*, %struct.gfx_fbo_scale, i32, i32, %struct.TYPE_9__ }
%struct.gfx_fbo_scale = type { i32, i32, i32, i64, i64, double, double, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"shader%u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't parse shader source (%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"filter_linear%u\00", align 1
@RARCH_FILTER_LINEAR = common dso_local global i32 0, align 4
@RARCH_FILTER_NEAREST = common dso_local global i32 0, align 4
@RARCH_FILTER_UNSPEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"wrap_mode%u\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"frame_count_mod%u\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"srgb_framebuffer%u\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"float_framebuffer%u\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"mipmap_input%u\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"alias%u\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"scale_type%u\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"scale_type_x%u\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"scale_type_y%u\00", align 1
@RARCH_SCALE_INPUT = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"viewport\00", align 1
@RARCH_SCALE_VIEWPORT = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@RARCH_SCALE_ABSOLUTE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"Invalid attribute.\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"scale%u\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"scale_x%u\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"scale_y%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.video_shader_pass*, i32)* @video_shader_parse_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_shader_parse_pass(%struct.TYPE_10__* %0, %struct.video_shader_pass* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.video_shader_pass*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [64 x i8], align 16
  %18 = alloca [64 x i8], align 16
  %19 = alloca [64 x i8], align 16
  %20 = alloca [64 x i8], align 16
  %21 = alloca [64 x i8], align 16
  %22 = alloca [64 x i8], align 16
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.gfx_fbo_scale*, align 8
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.video_shader_pass* %1, %struct.video_shader_pass** %6, align 8
  store i32 %2, i32* %7, align 4
  %30 = load i64, i64* @PATH_MAX_LENGTH, align 8
  store i64 %30, i64* %23, align 8
  %31 = load i64, i64* %23, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %24, align 8
  store %struct.gfx_fbo_scale* null, %struct.gfx_fbo_scale** %25, align 8
  store i32 0, i32* %26, align 4
  store float 0.000000e+00, float* %27, align 4
  store i32 0, i32* %28, align 4
  %34 = load i8*, i8** %24, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %430

37:                                               ; preds = %3
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %38, align 16
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %39, align 16
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %40, align 16
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %41, align 16
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %42, align 16
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %43, align 16
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %44, align 16
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  store i8 0, i8* %45, align 16
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %46, align 16
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %47, align 16
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %48, align 16
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %49, align 16
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %50, align 16
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %51, align 16
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %52, align 16
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @snprintf(i8* %53, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %58 = load i8*, i8** %24, align 8
  %59 = load i64, i64* %23, align 8
  %60 = call i32 @config_get_path(%struct.TYPE_10__* %56, i8* %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %37
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %64 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %24, align 8
  %66 = call i32 @free(i8* %65)
  store i32 0, i32* %4, align 4
  br label %430

67:                                               ; preds = %37
  %68 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %69 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %24, align 8
  %76 = call i32 @fill_pathname_resolve_relative(i32 %71, i32 %74, i8* %75, i32 4)
  %77 = load i8*, i8** %24, align 8
  %78 = call i32 @free(i8* %77)
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @snprintf(i8* %79, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %84 = call i64 @config_get_bool(%struct.TYPE_10__* %82, i8* %83, i32* %26)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %67
  %87 = load i32, i32* %26, align 4
  store i32 %87, i32* %29, align 4
  %88 = load i32, i32* %29, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @RARCH_FILTER_LINEAR, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @RARCH_FILTER_NEAREST, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %97 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  br label %102

98:                                               ; preds = %67
  %99 = load i32, i32* @RARCH_FILTER_UNSPEC, align 4
  %100 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %101 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @snprintf(i8* %103, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %109 = call i64 @config_get_array(%struct.TYPE_10__* %106, i8* %107, i8* %108, i32 64)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %113 = call i32 @wrap_str_to_mode(i8* %112)
  %114 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %115 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %102
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @snprintf(i8* %117, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %123 = call i64 @config_get_array(%struct.TYPE_10__* %120, i8* %121, i8* %122, i32 64)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %127 = call i64 @strtoul(i8* %126, i32* null, i32 0)
  %128 = trunc i64 %127 to i32
  %129 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %130 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %116
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @snprintf(i8* %132, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %137 = call i64 @config_get_bool(%struct.TYPE_10__* %135, i8* %136, i32* %26)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i32, i32* %26, align 4
  %141 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %142 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %131
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @snprintf(i8* %145, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %150 = call i64 @config_get_bool(%struct.TYPE_10__* %148, i8* %149, i32* %26)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load i32, i32* %26, align 4
  %154 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %155 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %152, %144
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @snprintf(i8* %158, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %163 = call i64 @config_get_bool(%struct.TYPE_10__* %161, i8* %162, i32* %26)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load i32, i32* %26, align 4
  %167 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %168 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %157
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @snprintf(i8* %170, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %175 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %176 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @config_get_array(%struct.TYPE_10__* %173, i8* %174, i8* %177, i32 8)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %169
  %181 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %182 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  store i8 0, i8* %183, align 1
  br label %184

184:                                              ; preds = %180, %169
  %185 = load %struct.video_shader_pass*, %struct.video_shader_pass** %6, align 8
  %186 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %185, i32 0, i32 3
  store %struct.gfx_fbo_scale* %186, %struct.gfx_fbo_scale** %25, align 8
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @snprintf(i8* %187, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %192 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %193 = call i64 @config_get_array(%struct.TYPE_10__* %190, i8* %191, i8* %192, i32 64)
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @snprintf(i8* %194, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %200 = call i64 @config_get_array(%struct.TYPE_10__* %197, i8* %198, i8* %199, i32 64)
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @snprintf(i8* %201, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %202)
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %207 = call i64 @config_get_array(%struct.TYPE_10__* %204, i8* %205, i8* %206, i32 64)
  %208 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %209 = load i8, i8* %208, align 16
  %210 = icmp ne i8 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %184
  %212 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %213 = load i8, i8* %212, align 16
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %217 = load i8, i8* %216, align 16
  %218 = icmp ne i8 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  store i32 1, i32* %4, align 4
  br label %430

220:                                              ; preds = %215, %211, %184
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %222 = load i8, i8* %221, align 16
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %226 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %227 = call i32 @strlcpy(i8* %225, i8* %226, i32 64)
  %228 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %229 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %230 = call i32 @strlcpy(i8* %228, i8* %229, i32 64)
  br label %231

231:                                              ; preds = %224, %220
  %232 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %233 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %232, i32 0, i32 2
  store i32 1, i32* %233, align 8
  %234 = load i8*, i8** @RARCH_SCALE_INPUT, align 8
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %237 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %236, i32 0, i32 3
  store i64 %235, i64* %237, align 8
  %238 = load i8*, i8** @RARCH_SCALE_INPUT, align 8
  %239 = ptrtoint i8* %238 to i64
  %240 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %241 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %240, i32 0, i32 4
  store i64 %239, i64* %241, align 8
  %242 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %243 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %242, i32 0, i32 5
  store double 1.000000e+00, double* %243, align 8
  %244 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %245 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %244, i32 0, i32 6
  store double 1.000000e+00, double* %245, align 8
  %246 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %247 = load i8, i8* %246, align 16
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %249, label %280

249:                                              ; preds = %231
  %250 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %251 = call i64 @string_is_equal(i8* %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = load i8*, i8** @RARCH_SCALE_INPUT, align 8
  %255 = ptrtoint i8* %254 to i64
  %256 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %257 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %256, i32 0, i32 3
  store i64 %255, i64* %257, align 8
  br label %279

258:                                              ; preds = %249
  %259 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %260 = call i64 @string_is_equal(i8* %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %258
  %263 = load i8*, i8** @RARCH_SCALE_VIEWPORT, align 8
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %266 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  br label %278

267:                                              ; preds = %258
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %269 = call i64 @string_is_equal(i8* %268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i64, i64* @RARCH_SCALE_ABSOLUTE, align 8
  %273 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %274 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %273, i32 0, i32 3
  store i64 %272, i64* %274, align 8
  br label %277

275:                                              ; preds = %267
  %276 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %430

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %262
  br label %279

279:                                              ; preds = %278, %253
  br label %280

280:                                              ; preds = %279, %231
  %281 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %282 = load i8, i8* %281, align 16
  %283 = icmp ne i8 %282, 0
  br i1 %283, label %284, label %315

284:                                              ; preds = %280
  %285 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %286 = call i64 @string_is_equal(i8* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i8*, i8** @RARCH_SCALE_INPUT, align 8
  %290 = ptrtoint i8* %289 to i64
  %291 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %292 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %291, i32 0, i32 4
  store i64 %290, i64* %292, align 8
  br label %314

293:                                              ; preds = %284
  %294 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %295 = call i64 @string_is_equal(i8* %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i8*, i8** @RARCH_SCALE_VIEWPORT, align 8
  %299 = ptrtoint i8* %298 to i64
  %300 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %301 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %300, i32 0, i32 4
  store i64 %299, i64* %301, align 8
  br label %313

302:                                              ; preds = %293
  %303 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %304 = call i64 @string_is_equal(i8* %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %302
  %307 = load i64, i64* @RARCH_SCALE_ABSOLUTE, align 8
  %308 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %309 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %308, i32 0, i32 4
  store i64 %307, i64* %309, align 8
  br label %312

310:                                              ; preds = %302
  %311 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %430

312:                                              ; preds = %306
  br label %313

313:                                              ; preds = %312, %297
  br label %314

314:                                              ; preds = %313, %288
  br label %315

315:                                              ; preds = %314, %280
  %316 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %317 = load i32, i32* %7, align 4
  %318 = call i32 @snprintf(i8* %316, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %317)
  %319 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %320 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @RARCH_SCALE_ABSOLUTE, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %347

324:                                              ; preds = %315
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %326 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %327 = call i64 @config_get_int(%struct.TYPE_10__* %325, i8* %326, i32* %28)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load i32, i32* %28, align 4
  %331 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %332 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %331, i32 0, i32 7
  store i32 %330, i32* %332, align 8
  br label %346

333:                                              ; preds = %324
  %334 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %335 = load i32, i32* %7, align 4
  %336 = call i32 @snprintf(i8* %334, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %335)
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %338 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %339 = call i64 @config_get_int(%struct.TYPE_10__* %337, i8* %338, i32* %28)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %333
  %342 = load i32, i32* %28, align 4
  %343 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %344 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %343, i32 0, i32 7
  store i32 %342, i32* %344, align 8
  br label %345

345:                                              ; preds = %341, %333
  br label %346

346:                                              ; preds = %345, %329
  br label %372

347:                                              ; preds = %315
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %349 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %350 = call i64 @config_get_float(%struct.TYPE_10__* %348, i8* %349, float* %27)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load float, float* %27, align 4
  %354 = fpext float %353 to double
  %355 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %356 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %355, i32 0, i32 5
  store double %354, double* %356, align 8
  br label %371

357:                                              ; preds = %347
  %358 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %359 = load i32, i32* %7, align 4
  %360 = call i32 @snprintf(i8* %358, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %359)
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %362 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %363 = call i64 @config_get_float(%struct.TYPE_10__* %361, i8* %362, float* %27)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %357
  %366 = load float, float* %27, align 4
  %367 = fpext float %366 to double
  %368 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %369 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %368, i32 0, i32 5
  store double %367, double* %369, align 8
  br label %370

370:                                              ; preds = %365, %357
  br label %371

371:                                              ; preds = %370, %352
  br label %372

372:                                              ; preds = %371, %346
  %373 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %374 = load i32, i32* %7, align 4
  %375 = call i32 @snprintf(i8* %373, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %374)
  %376 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %377 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @RARCH_SCALE_ABSOLUTE, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %404

381:                                              ; preds = %372
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %383 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %384 = call i64 @config_get_int(%struct.TYPE_10__* %382, i8* %383, i32* %28)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load i32, i32* %28, align 4
  %388 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %389 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %388, i32 0, i32 8
  store i32 %387, i32* %389, align 4
  br label %403

390:                                              ; preds = %381
  %391 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %392 = load i32, i32* %7, align 4
  %393 = call i32 @snprintf(i8* %391, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %392)
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %395 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %396 = call i64 @config_get_int(%struct.TYPE_10__* %394, i8* %395, i32* %28)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %390
  %399 = load i32, i32* %28, align 4
  %400 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %401 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %400, i32 0, i32 8
  store i32 %399, i32* %401, align 4
  br label %402

402:                                              ; preds = %398, %390
  br label %403

403:                                              ; preds = %402, %386
  br label %429

404:                                              ; preds = %372
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %406 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %407 = call i64 @config_get_float(%struct.TYPE_10__* %405, i8* %406, float* %27)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %404
  %410 = load float, float* %27, align 4
  %411 = fpext float %410 to double
  %412 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %413 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %412, i32 0, i32 6
  store double %411, double* %413, align 8
  br label %428

414:                                              ; preds = %404
  %415 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %416 = load i32, i32* %7, align 4
  %417 = call i32 @snprintf(i8* %415, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %416)
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %419 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %420 = call i64 @config_get_float(%struct.TYPE_10__* %418, i8* %419, float* %27)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %414
  %423 = load float, float* %27, align 4
  %424 = fpext float %423 to double
  %425 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %25, align 8
  %426 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %425, i32 0, i32 6
  store double %424, double* %426, align 8
  br label %427

427:                                              ; preds = %422, %414
  br label %428

428:                                              ; preds = %427, %409
  br label %429

429:                                              ; preds = %428, %403
  store i32 1, i32* %4, align 4
  br label %430

430:                                              ; preds = %429, %310, %275, %219, %62, %36
  %431 = load i32, i32* %4, align 4
  ret i32 %431
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @config_get_path(%struct.TYPE_10__*, i8*, i8*, i64) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fill_pathname_resolve_relative(i32, i32, i8*, i32) #1

declare dso_local i64 @config_get_bool(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i64 @config_get_array(%struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local i32 @wrap_str_to_mode(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @config_get_int(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i64 @config_get_float(%struct.TYPE_10__*, i8*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
