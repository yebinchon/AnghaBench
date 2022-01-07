; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mergeplanes.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mergeplanes.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_26__, i32, %struct.TYPE_21__* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_20__**, %struct.TYPE_29__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32*, i32*, i32, i32**, %struct.TYPE_22__, %struct.TYPE_28__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i32*, i32*, i32, i64* }
%struct.TYPE_19__ = type { %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@process_frame = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"input #%d link %s SAR %d:%d does not match output link %s SAR %d:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT_STOP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"input %d does not have %d plane\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"output plane %d depth %d does not match input %d plane %d depth %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"output plane %d width %d does not match input %d plane %d width %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"output plane %d height %d does not match input %d plane %d height %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca [4 x %struct.TYPE_30__], align 16
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %4, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %5, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ff_framesync_init(%struct.TYPE_22__* %24, %struct.TYPE_21__* %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %556

33:                                               ; preds = %1
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  store %struct.TYPE_31__* %37, %struct.TYPE_31__** %7, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  store %struct.TYPE_29__* %38, %struct.TYPE_29__** %41, align 8
  %42 = load i32, i32* @process_frame, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %48, i64 0
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %57, i64 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %66, i64 0
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %75, i64 0
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %86, i64 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 4
  %90 = bitcast %struct.TYPE_26__* %83 to i8*
  %91 = bitcast %struct.TYPE_26__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 8
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 %101, 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @AV_CEIL_RSHIFT(i32 %106, i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %113, i32* %121, align 4
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 8
  %131 = zext i1 %130 to i32
  %132 = add nsw i32 %131, 1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %132, %135
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 %136, i32* %140, align 4
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %136, i32* %144, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @AV_CEIL_RSHIFT(i32 %147, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  store i32 %154, i32* %158, align 4
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %154, i32* %162, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %165, i32* %169, align 4
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %165, i32* %173, align 4
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %383, %33
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %386

180:                                              ; preds = %174
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x %struct.TYPE_30__], [4 x %struct.TYPE_30__]* %6, i64 0, i64 %182
  store %struct.TYPE_30__* %183, %struct.TYPE_30__** %10, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %186, i64 %188
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  store %struct.TYPE_20__* %190, %struct.TYPE_20__** %11, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call %struct.TYPE_19__* @av_pix_fmt_desc_get(i32 %193)
  store %struct.TYPE_19__* %194, %struct.TYPE_19__** %12, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %198, %202
  br i1 %203, label %214, label %204

204:                                              ; preds = %180
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %208, %212
  br i1 %213, label %214, label %251

214:                                              ; preds = %204, %180
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %216 = load i32, i32* @AV_LOG_ERROR, align 4
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_21__* %215, i32 %216, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %217, i32 %225, i64 %229, i64 %233, i32 %239, i64 %243, i64 %247)
  %249 = load i32, i32* @EINVAL, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %2, align 4
  br label %556

251:                                              ; preds = %204
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i64 1
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp sgt i32 %257, 8
  %259 = zext i1 %258 to i32
  %260 = add nsw i32 %259, 1
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = mul nsw i32 %260, %263
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @AV_CEIL_RSHIFT(i32 %264, i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 2
  store i32 %269, i32* %273, align 4
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  store i32 %269, i32* %277, align 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i64 0
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %283, 8
  %285 = zext i1 %284 to i32
  %286 = add nsw i32 %285, 1
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = mul nsw i32 %286, %289
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 3
  store i32 %290, i32* %294, align 4
  %295 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  store i32 %290, i32* %298, align 4
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i8* @AV_CEIL_RSHIFT(i32 %301, i32 %304)
  %306 = ptrtoint i8* %305 to i32
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  store i32 %306, i32* %310, align 4
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  store i32 %306, i32* %314, align 4
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 3
  store i32 %317, i32* %321, align 4
  %322 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  store i32 %317, i32* %325, align 4
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @av_pix_fmt_count_planes(i32 %328)
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  store i32 0, i32* %13, align 4
  br label %332

332:                                              ; preds = %354, %251
  %333 = load i32, i32* %13, align 4
  %334 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %357

338:                                              ; preds = %332
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %340, align 8
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 3
  %350 = load i64*, i64** %349, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %350, i64 %352
  store i64 %347, i64* %353, align 8
  br label %354

354:                                              ; preds = %338
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %13, align 4
  br label %332

357:                                              ; preds = %332
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %364, i32 0, i32 3
  store i32 %360, i32* %365, align 8
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 0
  store i32 1, i32* %370, align 8
  %371 = load i8*, i8** @EXT_STOP, align 8
  %372 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 2
  store i8* %371, i8** %376, align 8
  %377 = load i8*, i8** @EXT_STOP, align 8
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %379 = load i32, i32* %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 1
  store i8* %377, i8** %382, align 8
  br label %383

383:                                              ; preds = %357
  %384 = load i32, i32* %8, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %8, align 4
  br label %174

386:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %387

387:                                              ; preds = %546, %386
  %388 = load i32, i32* %8, align 4
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %388, %391
  br i1 %392, label %393, label %549

393:                                              ; preds = %387
  %394 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %394, i32 0, i32 4
  %396 = load i32**, i32*** %395, align 8
  %397 = load i32, i32* %8, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32*, i32** %396, i64 %398
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %14, align 4
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %403, i32 0, i32 4
  %405 = load i32**, i32*** %404, align 8
  %406 = load i32, i32* %8, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %405, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  store i32 %411, i32* %15, align 4
  %412 = load i32, i32* %14, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x %struct.TYPE_30__], [4 x %struct.TYPE_30__]* %6, i64 0, i64 %413
  store %struct.TYPE_30__* %414, %struct.TYPE_30__** %16, align 8
  %415 = load i32, i32* %15, align 4
  %416 = add nsw i32 %415, 1
  %417 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = icmp sgt i32 %416, %419
  br i1 %420, label %421, label %427

421:                                              ; preds = %393
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %423 = load i32, i32* @AV_LOG_ERROR, align 4
  %424 = load i32, i32* %14, align 4
  %425 = load i32, i32* %15, align 4
  %426 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_21__* %422, i32 %423, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %424, i32 %425)
  br label %553

427:                                              ; preds = %393
  %428 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %428, i32 0, i32 6
  %430 = load %struct.TYPE_28__*, %struct.TYPE_28__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_27__*, %struct.TYPE_27__** %431, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %440 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %439, i32 0, i32 3
  %441 = load i64*, i64** %440, align 8
  %442 = load i32, i32* %15, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i64, i64* %441, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %438, %445
  br i1 %446, label %447, label %471

447:                                              ; preds = %427
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %449 = load i32, i32* @AV_LOG_ERROR, align 4
  %450 = load i32, i32* %8, align 4
  %451 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %451, i32 0, i32 6
  %453 = load %struct.TYPE_28__*, %struct.TYPE_28__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_27__*, %struct.TYPE_27__** %454, align 8
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* %14, align 4
  %462 = load i32, i32* %15, align 4
  %463 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %463, i32 0, i32 3
  %465 = load i64*, i64** %464, align 8
  %466 = load i32, i32* %15, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i64, i64* %465, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_21__* %448, i32 %449, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %450, i32 %460, i32 %461, i32 %462, i64 %469)
  br label %553

471:                                              ; preds = %427
  %472 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %472, i32 0, i32 1
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %480 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %479, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %15, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %478, %485
  br i1 %486, label %487, label %508

487:                                              ; preds = %471
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %489 = load i32, i32* @AV_LOG_ERROR, align 4
  %490 = load i32, i32* %8, align 4
  %491 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %491, i32 0, i32 1
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %8, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %14, align 4
  %499 = load i32, i32* %15, align 4
  %500 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %501 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %500, i32 0, i32 0
  %502 = load i32*, i32** %501, align 8
  %503 = load i32, i32* %15, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_21__* %488, i32 %489, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %490, i32 %497, i32 %498, i32 %499, i32 %506)
  br label %553

508:                                              ; preds = %471
  %509 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %509, i32 0, i32 2
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %8, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %517 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %516, i32 0, i32 1
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %15, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = icmp ne i32 %515, %522
  br i1 %523, label %524, label %545

524:                                              ; preds = %508
  %525 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %526 = load i32, i32* @AV_LOG_ERROR, align 4
  %527 = load i32, i32* %8, align 4
  %528 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %528, i32 0, i32 2
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %8, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %14, align 4
  %536 = load i32, i32* %15, align 4
  %537 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %538 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = load i32, i32* %15, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_21__* %525, i32 %526, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %527, i32 %534, i32 %535, i32 %536, i32 %543)
  br label %553

545:                                              ; preds = %508
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %8, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %8, align 4
  br label %387

549:                                              ; preds = %387
  %550 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %550, i32 0, i32 5
  %552 = call i32 @ff_framesync_configure(%struct.TYPE_22__* %551)
  store i32 %552, i32* %2, align 4
  br label %556

553:                                              ; preds = %524, %487, %447, %421
  %554 = load i32, i32* @EINVAL, align 4
  %555 = call i32 @AVERROR(i32 %554)
  store i32 %555, i32* %2, align 4
  br label %556

556:                                              ; preds = %553, %549, %214, %31
  %557 = load i32, i32* %2, align 4
  ret i32 %557
}

declare dso_local i32 @ff_framesync_init(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local %struct.TYPE_19__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @ff_framesync_configure(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
