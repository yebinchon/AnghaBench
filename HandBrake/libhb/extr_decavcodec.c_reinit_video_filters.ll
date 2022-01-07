; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_reinit_video_filters.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_reinit_video_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_22__, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_35__*, %struct.TYPE_34__ }
%struct.TYPE_22__ = type { i32, i32, i64, i32* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__, i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_24__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@HB_ROTATION_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"lanczos+accurate_rnd\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pix_fmts\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"yuv420p\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"cclock\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"transpose\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"hflip\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"vflip\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"reinit_video_filters: Unknown rotation, failed\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"reinit_video_filters: failed to create filter graph\00", align 1
@MFX_IOPATTERN_OUT_VIDEO_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reinit_video_filters(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_28__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = icmp ne %struct.TYPE_21__* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -2
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -2
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  store i32 %31, i32* %9, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %63

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_37__*, %struct.TYPE_37__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %80

63:                                               ; preds = %39
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %4, align 4
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %63, %46
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %80, %18
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %86
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %95, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %103, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load i32, i32* @HB_ROTATION_0, align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %111, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %120 = call i32 @close_video_filters(%struct.TYPE_26__* %119)
  store i32 0, i32* %2, align 4
  br label %358

121:                                              ; preds = %110, %102, %94, %86
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %162

127:                                              ; preds = %121
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %131, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %127
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %142, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %138
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp eq i64 %153, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %358

162:                                              ; preds = %149, %138, %127, %121
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 2
  store i64 %184, i64* %187, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %189 = call i32 @close_video_filters(%struct.TYPE_26__* %188)
  %190 = call i32 @hb_video_framerate_get_limits(i32* %10, i32* %11, i32* %12)
  %191 = load i32, i32* %12, align 4
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i32 %191, i32* %192, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sitofp i32 %195 to double
  %197 = load i32, i32* %12, align 4
  %198 = sitofp i32 %197 to double
  %199 = fdiv double %198, 9.000000e+04
  %200 = fmul double %196, %199
  %201 = fptosi double %200 to i32
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  store i32 %201, i32* %202, align 4
  %203 = call i32* (...) @hb_value_array_init()
  store i32* %203, i32** %6, align 8
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %204, %209
  br i1 %210, label %227, label %211

211:                                              ; preds = %162
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %212, %217
  br i1 %218, label %227, label %219

219:                                              ; preds = %211
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %220, %225
  br i1 %226, label %227, label %250

227:                                              ; preds = %219, %211, %162
  %228 = call i32* (...) @hb_dict_init()
  store i32* %228, i32** %7, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %4, align 4
  %231 = call i32 @hb_value_int(i32 %230)
  %232 = call i32 @hb_dict_set(i32* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %231)
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @hb_value_int(i32 %234)
  %236 = call i32 @hb_dict_set(i32* %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %235)
  %237 = load i32*, i32** %7, align 8
  %238 = call i32 @hb_value_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %239 = call i32 @hb_dict_set(i32* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load i32*, i32** %6, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = call i32 @hb_avfilter_append_dict(i32* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %241)
  %243 = call i32* (...) @hb_dict_init()
  store i32* %243, i32** %7, align 8
  %244 = load i32*, i32** %7, align 8
  %245 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %246 = call i32 @hb_dict_set(i32* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %245)
  %247 = load i32*, i32** %6, align 8
  %248 = load i32*, i32** %7, align 8
  %249 = call i32 @hb_avfilter_append_dict(i32* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %248)
  br label %250

250:                                              ; preds = %227, %219
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @HB_ROTATION_0, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %290

258:                                              ; preds = %250
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  switch i32 %263, label %287 [
    i32 128, label %264
    i32 130, label %272
    i32 129, label %279
  ]

264:                                              ; preds = %258
  %265 = call i32* (...) @hb_dict_init()
  store i32* %265, i32** %7, align 8
  %266 = load i32*, i32** %7, align 8
  %267 = call i32 @hb_value_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %268 = call i32 @hb_dict_set(i32* %266, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  %269 = load i32*, i32** %6, align 8
  %270 = load i32*, i32** %7, align 8
  %271 = call i32 @hb_avfilter_append_dict(i32* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %270)
  br label %289

272:                                              ; preds = %258
  %273 = load i32*, i32** %6, align 8
  %274 = call i32* (...) @hb_value_null()
  %275 = call i32 @hb_avfilter_append_dict(i32* %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* %274)
  %276 = load i32*, i32** %6, align 8
  %277 = call i32* (...) @hb_value_null()
  %278 = call i32 @hb_avfilter_append_dict(i32* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %277)
  br label %289

279:                                              ; preds = %258
  %280 = call i32* (...) @hb_dict_init()
  store i32* %280, i32** %7, align 8
  %281 = load i32*, i32** %7, align 8
  %282 = call i32 @hb_value_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %283 = call i32 @hb_dict_set(i32* %281, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %282)
  %284 = load i32*, i32** %6, align 8
  %285 = load i32*, i32** %7, align 8
  %286 = call i32 @hb_avfilter_append_dict(i32* %284, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %285)
  br label %289

287:                                              ; preds = %258
  %288 = call i32 @hb_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %279, %272, %264
  br label %290

290:                                              ; preds = %289, %250
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i32 %295, i32* %296, align 4
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %318, i32 0, i32 1
  store i32 %316, i32* %319, align 4
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 0
  store i32 %325, i32* %328, align 4
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 0
  store i32 1, i32* %330, align 4
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 1
  store i32 1, i32* %332, align 4
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 4
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  %341 = load i32*, i32** %6, align 8
  %342 = call i32* @hb_avfilter_graph_init(i32* %341, %struct.TYPE_28__* %8)
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 3
  store i32* %342, i32** %345, align 8
  %346 = call i32 @hb_value_free(i32** %6)
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = icmp eq i32* %350, null
  br i1 %351, label %352, label %354

352:                                              ; preds = %290
  %353 = call i32 @hb_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  br label %355

354:                                              ; preds = %290
  store i32 0, i32* %2, align 4
  br label %358

355:                                              ; preds = %352
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %357 = call i32 @close_video_filters(%struct.TYPE_26__* %356)
  store i32 1, i32* %2, align 4
  br label %358

358:                                              ; preds = %355, %354, %161, %118
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i32 @close_video_filters(%struct.TYPE_26__*) #1

declare dso_local i32 @hb_video_framerate_get_limits(i32*, i32*, i32*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_avfilter_append_dict(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_null(...) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32* @hb_avfilter_graph_init(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
