; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_hb_x264_global_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_hb_x264_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 (%struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32 }

@x264_bit_depth = common dso_local global i32 0, align 4
@x264_apis = common dso_local global %struct.TYPE_5__* null, align 8
@x264_param_default = common dso_local global i8* null, align 8
@x264_param_default_preset = common dso_local global i8* null, align 8
@x264_param_apply_profile = common dso_local global i8* null, align 8
@x264_param_apply_fastfirstpass = common dso_local global i8* null, align 8
@x264_param_parse = common dso_local global i8* null, align 8
@x264_encoder_open = common dso_local global i8* null, align 8
@x264_encoder_headers = common dso_local global i8* null, align 8
@x264_encoder_encode = common dso_local global i8* null, align 8
@x264_encoder_delayed_frames = common dso_local global i8* null, align 8
@x264_encoder_close = common dso_local global i8* null, align 8
@x264_picture_init = common dso_local global i8* null, align 8
@libx264_10bit_names = common dso_local global i32 0, align 4
@libx264_8bit_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"x264_bit_depth\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"x264_param_default\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"x264_param_default_preset\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"x264_param_apply_profile\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"x264_param_apply_fastfirstpass\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"x264_param_parse\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"x264_encoder_open_%d\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"x264_encoder_headers\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"x264_encoder_encode\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"x264_encoder_delayed_frames\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"x264_encoder_close\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"x264_picture_init\00", align 1
@X264_BIT_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_x264_global_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @x264_bit_depth, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = load i8*, i8** @x264_param_default, align 8
  %11 = bitcast i8* %10 to i32 (%struct.TYPE_4__*)*
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 11
  store i32 (%struct.TYPE_4__*)* %11, i32 (%struct.TYPE_4__*)** %14, align 8
  %15 = load i8*, i8** @x264_param_default_preset, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 10
  store i32* %16, i32** %19, align 8
  %20 = load i8*, i8** @x264_param_apply_profile, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 9
  store i32* %21, i32** %24, align 8
  %25 = load i8*, i8** @x264_param_apply_fastfirstpass, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  store i32* %26, i32** %29, align 8
  %30 = load i8*, i8** @x264_param_parse, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 7
  store i32* %31, i32** %34, align 8
  %35 = load i8*, i8** @x264_encoder_open, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  store i32* %36, i32** %39, align 8
  %40 = load i8*, i8** @x264_encoder_headers, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  store i32* %41, i32** %44, align 8
  %45 = load i8*, i8** @x264_encoder_encode, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i32* %46, i32** %49, align 8
  %50 = load i8*, i8** @x264_encoder_delayed_frames, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32* %51, i32** %54, align 8
  %55 = load i8*, i8** @x264_encoder_close, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32* %56, i32** %59, align 8
  %60 = load i8*, i8** @x264_picture_init, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32* %61, i32** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %132

70:                                               ; preds = %0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 8, i32* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 10, i32* %76, align 8
  %77 = load i8*, i8** @x264_param_default, align 8
  %78 = bitcast i8* %77 to i32 (%struct.TYPE_4__*)*
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 11
  store i32 (%struct.TYPE_4__*)* %78, i32 (%struct.TYPE_4__*)** %81, align 8
  %82 = load i8*, i8** @x264_param_default_preset, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 10
  store i32* %83, i32** %86, align 8
  %87 = load i8*, i8** @x264_param_apply_profile, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 9
  store i32* %88, i32** %91, align 8
  %92 = load i8*, i8** @x264_param_apply_fastfirstpass, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 8
  store i32* %93, i32** %96, align 8
  %97 = load i8*, i8** @x264_param_parse, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 7
  store i32* %98, i32** %101, align 8
  %102 = load i8*, i8** @x264_encoder_open, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  store i32* %103, i32** %106, align 8
  %107 = load i8*, i8** @x264_encoder_headers, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store i32* %108, i32** %111, align 8
  %112 = load i8*, i8** @x264_encoder_encode, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i32* %113, i32** %116, align 8
  %117 = load i8*, i8** @x264_encoder_delayed_frames, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32* %118, i32** %121, align 8
  %122 = load i8*, i8** @x264_encoder_close, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i32* %123, i32** %126, align 8
  %127 = load i8*, i8** @x264_picture_init, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32* %128, i32** %131, align 8
  br label %327

132:                                              ; preds = %0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 -1, i32* %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 8
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @libx264_10bit_names, align 4
  %143 = call i8* @x264_lib_open(i32 %142)
  store i8* %143, i8** %1, align 8
  br label %147

144:                                              ; preds = %132
  %145 = load i32, i32* @libx264_8bit_names, align 4
  %146 = call i8* @x264_lib_open(i32 %145)
  store i8* %146, i8** %1, align 8
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i8*, i8** %1, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %327

151:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  %152 = load i8*, i8** %1, align 8
  %153 = call i8* @hb_dlsym(i8* %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %154 = bitcast i8* %153 to i32*
  store i32* %154, i32** %4, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load i8*, i8** %1, align 8
  %162 = call i8* @hb_dlsym(i8* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %163 = bitcast i8* %162 to i32 (%struct.TYPE_4__*)*
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 11
  store i32 (%struct.TYPE_4__*)* %163, i32 (%struct.TYPE_4__*)** %166, align 8
  %167 = load i8*, i8** %1, align 8
  %168 = call i8* @hb_dlsym(i8* %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 10
  store i32* %169, i32** %172, align 8
  %173 = load i8*, i8** %1, align 8
  %174 = call i8* @hb_dlsym(i8* %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 9
  store i32* %175, i32** %178, align 8
  %179 = load i8*, i8** %1, align 8
  %180 = call i8* @hb_dlsym(i8* %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 8
  store i32* %181, i32** %184, align 8
  %185 = load i8*, i8** %1, align 8
  %186 = call i8* @hb_dlsym(i8* %185, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 7
  store i32* %187, i32** %190, align 8
  store i32 140, i32* %2, align 4
  br label %191

191:                                              ; preds = %213, %160
  %192 = load i32, i32* %2, align 4
  %193 = icmp slt i32 %192, 200
  br i1 %193, label %194, label %216

194:                                              ; preds = %191
  %195 = load i32, i32* %2, align 4
  %196 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  store i8* %196, i8** %5, align 8
  %197 = load i8*, i8** %1, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = call i8* @hb_dlsym(i8* %197, i8* %198)
  %200 = bitcast i8* %199 to i32*
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 6
  store i32* %200, i32** %203, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %194
  br label %216

212:                                              ; preds = %194
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %2, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %2, align 4
  br label %191

216:                                              ; preds = %211, %191
  %217 = load i8*, i8** %1, align 8
  %218 = call i8* @hb_dlsym(i8* %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %219 = bitcast i8* %218 to i32*
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 5
  store i32* %219, i32** %222, align 8
  %223 = load i8*, i8** %1, align 8
  %224 = call i8* @hb_dlsym(i8* %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 1
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 4
  store i32* %225, i32** %228, align 8
  %229 = load i8*, i8** %1, align 8
  %230 = call i8* @hb_dlsym(i8* %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %231 = bitcast i8* %230 to i32*
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 3
  store i32* %231, i32** %234, align 8
  %235 = load i8*, i8** %1, align 8
  %236 = call i8* @hb_dlsym(i8* %235, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %237 = bitcast i8* %236 to i32*
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  store i32* %237, i32** %240, align 8
  %241 = load i8*, i8** %1, align 8
  %242 = call i8* @hb_dlsym(i8* %241, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %243 = bitcast i8* %242 to i32*
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i64 1
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  store i32* %243, i32** %246, align 8
  %247 = load i32, i32* %3, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %327

249:                                              ; preds = %216
  %250 = load i32, i32* %3, align 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %250, %254
  br i1 %255, label %256, label %327

256:                                              ; preds = %249
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 11
  %260 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %259, align 8
  %261 = icmp ne i32 (%struct.TYPE_4__*)* %260, null
  br i1 %261, label %262, label %327

262:                                              ; preds = %256
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i64 1
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 10
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %327

268:                                              ; preds = %262
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 9
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %327

274:                                              ; preds = %268
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i64 1
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 8
  %278 = load i32*, i32** %277, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %327

280:                                              ; preds = %274
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 1
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 7
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %327

286:                                              ; preds = %280
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 1
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 6
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %327

292:                                              ; preds = %286
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i64 1
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 5
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %327

298:                                              ; preds = %292
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i64 1
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %327

304:                                              ; preds = %298
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i64 1
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %327

310:                                              ; preds = %304
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i64 1
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %327

316:                                              ; preds = %310
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i64 1
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load i32, i32* %3, align 4
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** @x264_apis, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i64 1
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  store i32 %323, i32* %326, align 8
  br label %327

327:                                              ; preds = %70, %150, %322, %316, %310, %304, %298, %292, %286, %280, %274, %268, %262, %256, %249, %216
  ret void
}

declare dso_local i8* @x264_lib_open(i32) #1

declare dso_local i8* @hb_dlsym(i8*, i8*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
