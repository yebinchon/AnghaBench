; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_atadenoise.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_atadenoise.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_29__*, i32, %struct.TYPE_34__*, %struct.TYPE_32__** }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_33__*, i32, %struct.TYPE_30__*, i32*, i32)* }
%struct.TYPE_30__ = type { %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_28__, i32*, i32, i32**, i32**, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_31__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %6, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %19, i64 0
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  store %struct.TYPE_32__* %21, %struct.TYPE_32__** %7, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %8, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %2
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %51 = call %struct.TYPE_31__* @av_frame_clone(%struct.TYPE_31__* %50)
  store %struct.TYPE_31__* %51, %struct.TYPE_31__** %9, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %53 = icmp ne %struct.TYPE_31__* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = call i32 @av_frame_free(%struct.TYPE_31__** %5)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %261

58:                                               ; preds = %49
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %63 = call i32 @ff_bufqueue_add(%struct.TYPE_33__* %59, %struct.TYPE_28__* %61, %struct.TYPE_31__* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %43

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %82 = call i32 @ff_bufqueue_add(%struct.TYPE_33__* %78, %struct.TYPE_28__* %80, %struct.TYPE_31__* %81)
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %77, %68
  store i32 0, i32* %3, align 4
  br label %261

88:                                               ; preds = %2
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_31__* @ff_bufqueue_peek(%struct.TYPE_28__* %90, i32 %93)
  store %struct.TYPE_31__* %94, %struct.TYPE_31__** %10, align 8
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %238, label %99

99:                                               ; preds = %88
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.TYPE_31__* @ff_get_video_buffer(%struct.TYPE_32__* %100, i32 %103, i32 %106)
  store %struct.TYPE_31__* %107, %struct.TYPE_31__** %9, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %109 = icmp ne %struct.TYPE_31__* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %99
  %111 = call i32 @av_frame_free(%struct.TYPE_31__** %5)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %261

114:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %204, %114
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %207

121:                                              ; preds = %115
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 2
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.TYPE_31__* @ff_bufqueue_peek(%struct.TYPE_28__* %123, i32 %124)
  store %struct.TYPE_31__* %125, %struct.TYPE_31__** %13, align 8
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 6
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %130, i32* %138, align 4
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 6
  %146 = load i32**, i32*** %145, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %143, i32* %151, align 4
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 6
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %156, i32* %164, align 4
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 5
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %169, i32* %177, align 4
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 5
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %182, i32* %190, align 4
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 5
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %195, i32* %203, align 4
  br label %204

204:                                              ; preds = %121
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %115

207:                                              ; preds = %115
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  store %struct.TYPE_31__* %208, %struct.TYPE_31__** %209, align 8
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  store %struct.TYPE_31__* %210, %struct.TYPE_31__** %211, align 8
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 0
  %216 = load i32 (%struct.TYPE_33__*, i32, %struct.TYPE_30__*, i32*, i32)*, i32 (%struct.TYPE_33__*, i32, %struct.TYPE_30__*, i32*, i32)** %215, align 8
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %232 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_33__* %231)
  %233 = call i32 @FFMIN3(i32 %225, i32 %230, i32 %232)
  %234 = call i32 %216(%struct.TYPE_33__* %217, i32 %220, %struct.TYPE_30__* %12, i32* null, i32 %233)
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %237 = call i32 @av_frame_copy_props(%struct.TYPE_31__* %235, %struct.TYPE_31__* %236)
  br label %248

238:                                              ; preds = %88
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %240 = call %struct.TYPE_31__* @av_frame_clone(%struct.TYPE_31__* %239)
  store %struct.TYPE_31__* %240, %struct.TYPE_31__** %9, align 8
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %242 = icmp ne %struct.TYPE_31__* %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %238
  %244 = call i32 @av_frame_free(%struct.TYPE_31__** %5)
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = call i32 @AVERROR(i32 %245)
  store i32 %246, i32* %3, align 4
  br label %261

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247, %207
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 2
  %251 = call %struct.TYPE_31__* @ff_bufqueue_get(%struct.TYPE_28__* %250)
  store %struct.TYPE_31__* %251, %struct.TYPE_31__** %10, align 8
  %252 = call i32 @av_frame_free(%struct.TYPE_31__** %10)
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %257 = call i32 @ff_bufqueue_add(%struct.TYPE_33__* %253, %struct.TYPE_28__* %255, %struct.TYPE_31__* %256)
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %260 = call i32 @ff_filter_frame(%struct.TYPE_32__* %258, %struct.TYPE_31__* %259)
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %248, %243, %110, %87, %54
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.TYPE_31__* @av_frame_clone(%struct.TYPE_31__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_31__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_bufqueue_add(%struct.TYPE_33__*, %struct.TYPE_28__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @ff_bufqueue_peek(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_31__* @ff_get_video_buffer(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_33__*) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @ff_bufqueue_get(%struct.TYPE_28__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
