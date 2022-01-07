; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_26__*, %struct.TYPE_30__**, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)* }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_29__*, %struct.TYPE_29__*, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32*** }
%struct.TYPE_29__ = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COLOR_MODE_NONE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Input frame does not specify a supported colorspace, and none has been specified as source either\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i64 0, align 8
@process_slice_yuv444p = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@process_slice_yuv422p = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@process_slice_yuv420p = common dso_local global i32 0, align 4
@process_slice_uyvy422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_29__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  store %struct.TYPE_31__* %15, %struct.TYPE_31__** %6, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %7, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %21, i64 0
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  store %struct.TYPE_30__* %23, %struct.TYPE_30__** %8, align 8
  %24 = bitcast %struct.TYPE_27__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 48, i1 false)
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_29__* @ff_get_video_buffer(%struct.TYPE_30__* %25, i32 %28, i32 %31)
  store %struct.TYPE_29__* %32, %struct.TYPE_29__** %9, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %34 = icmp ne %struct.TYPE_29__* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = call i32 @av_frame_free(%struct.TYPE_29__** %5)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %280

39:                                               ; preds = %2
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %42 = call i32 @av_frame_copy_props(%struct.TYPE_29__* %40, %struct.TYPE_29__* %41)
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @COLOR_MODE_NONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %39
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %60 [
    i32 136, label %53
    i32 135, label %54
    i32 133, label %55
    i32 137, label %56
    i32 134, label %57
    i32 138, label %58
    i32 139, label %59
  ]

53:                                               ; preds = %48
  store i32 130, i32* %12, align 4
  br label %67

54:                                               ; preds = %48
  store i32 129, i32* %12, align 4
  br label %67

55:                                               ; preds = %48
  store i32 128, i32* %12, align 4
  br label %67

56:                                               ; preds = %48
  store i32 131, i32* %12, align 4
  br label %67

57:                                               ; preds = %48
  store i32 131, i32* %12, align 4
  br label %67

58:                                               ; preds = %48
  store i32 132, i32* %12, align 4
  br label %67

59:                                               ; preds = %48
  store i32 132, i32* %12, align 4
  br label %67

60:                                               ; preds = %48
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 @av_log(%struct.TYPE_31__* %61, i32 %62, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @av_frame_free(%struct.TYPE_29__** %9)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %3, align 4
  br label %280

67:                                               ; preds = %59, %58, %57, %56, %55, %54, %53
  %68 = load i32, i32* %12, align 4
  %69 = mul i32 %68, 5
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add i32 %69, %72
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %87

76:                                               ; preds = %39
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 5
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %80, %83
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %76, %67
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %106 [
    i32 130, label %91
    i32 129, label %94
    i32 128, label %97
    i32 131, label %100
    i32 132, label %103
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  store i32 136, i32* %93, align 8
  br label %106

94:                                               ; preds = %87
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  store i32 135, i32* %96, align 8
  br label %106

97:                                               ; preds = %87
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  store i32 133, i32* %99, align 8
  br label %106

100:                                              ; preds = %87
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  store i32 137, i32* %102, align 8
  br label %106

103:                                              ; preds = %87
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  store i32 138, i32* %105, align 8
  br label %106

106:                                              ; preds = %87, %103, %100, %97, %94, %91
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 7
  store %struct.TYPE_29__* %107, %struct.TYPE_29__** %108, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 6
  store %struct.TYPE_29__* %109, %struct.TYPE_29__** %110, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 3
  %113 = load i32***, i32**** %112, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32**, i32*** %113, i64 %117
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 5
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 3
  %127 = load i32***, i32**** %126, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32**, i32*** %127, i64 %131
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 4
  store i32 %137, i32* %138, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 3
  %141 = load i32***, i32**** %140, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32**, i32*** %141, i64 %145
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 3
  store i32 %151, i32* %152, align 4
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 3
  %155 = load i32***, i32**** %154, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32**, i32*** %155, i64 %159
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 2
  store i32 %165, i32* %166, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 3
  %169 = load i32***, i32**** %168, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32**, i32*** %169, i64 %173
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 3
  %183 = load i32***, i32**** %182, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32**, i32*** %183, i64 %187
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  store i32 %193, i32* %194, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AV_PIX_FMT_YUV444P, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %106
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)*, i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)** %204, align 8
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %207 = load i32, i32* @process_slice_yuv444p, align 4
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %212 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_31__* %211)
  %213 = call i32 @FFMIN(i32 %210, i32 %212)
  %214 = call i32 %205(%struct.TYPE_31__* %206, i32 %207, %struct.TYPE_27__* %10, i32* null, i32 %213)
  br label %275

215:                                              ; preds = %106
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @AV_PIX_FMT_YUV422P, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %236

221:                                              ; preds = %215
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = load i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)*, i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)** %225, align 8
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %228 = load i32, i32* @process_slice_yuv422p, align 4
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %233 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_31__* %232)
  %234 = call i32 @FFMIN(i32 %231, i32 %233)
  %235 = call i32 %226(%struct.TYPE_31__* %227, i32 %228, %struct.TYPE_27__* %10, i32* null, i32 %234)
  br label %274

236:                                              ; preds = %215
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @AV_PIX_FMT_YUV420P, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %236
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  %247 = load i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)*, i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)** %246, align 8
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %249 = load i32, i32* @process_slice_yuv420p, align 4
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = sdiv i32 %252, 2
  %254 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %255 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_31__* %254)
  %256 = call i32 @FFMIN(i32 %253, i32 %255)
  %257 = call i32 %247(%struct.TYPE_31__* %248, i32 %249, %struct.TYPE_27__* %10, i32* null, i32 %256)
  br label %273

258:                                              ; preds = %236
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)*, i32 (%struct.TYPE_31__*, i32, %struct.TYPE_27__*, i32*, i32)** %262, align 8
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %265 = load i32, i32* @process_slice_uyvy422, align 4
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %270 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_31__* %269)
  %271 = call i32 @FFMIN(i32 %268, i32 %270)
  %272 = call i32 %263(%struct.TYPE_31__* %264, i32 %265, %struct.TYPE_27__* %10, i32* null, i32 %271)
  br label %273

273:                                              ; preds = %258, %242
  br label %274

274:                                              ; preds = %273, %221
  br label %275

275:                                              ; preds = %274, %200
  %276 = call i32 @av_frame_free(%struct.TYPE_29__** %5)
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %279 = call i32 @ff_filter_frame(%struct.TYPE_30__* %277, %struct.TYPE_29__* %278)
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %275, %60, %35
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_29__* @ff_get_video_buffer(%struct.TYPE_30__*, i32, i32) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_29__**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_29__*, %struct.TYPE_29__*) #2

declare dso_local i32 @av_log(%struct.TYPE_31__*, i32, i8*) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_31__*) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_30__*, %struct.TYPE_29__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
