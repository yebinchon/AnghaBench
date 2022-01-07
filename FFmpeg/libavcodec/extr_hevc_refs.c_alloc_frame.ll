; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_alloc_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_alloc_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, i64, %struct.TYPE_32__*, %struct.TYPE_31__*, i32**, %struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_32__ = type { i32, i32, i64* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_25__*, %struct.TYPE_34__, %struct.TYPE_30__, i32, i32, %struct.TYPE_26__, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32 }

@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_PICTURE_STRUCTURE_TOP_FIELD = common dso_local global i64 0, align 8
@AV_PICTURE_STRUCTURE_BOTTOM_FIELD = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error allocating frame, DPB full.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__*)* @alloc_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @alloc_frame(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %226, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %14 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_22__* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %229

16:                                               ; preds = %9
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i64 %21
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %7, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %226

32:                                               ; preds = %16
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 9
  %38 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %39 = call i32 @ff_thread_get_buffer(%struct.TYPE_25__* %35, i32* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %235

43:                                               ; preds = %32
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i8* @av_buffer_allocz(i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_31__*
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 4
  store %struct.TYPE_31__* %52, %struct.TYPE_31__** %54, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  %58 = icmp ne %struct.TYPE_31__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %43
  br label %222

60:                                               ; preds = %43
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @av_buffer_pool_get(i32 %63)
  %65 = bitcast i8* %64 to %struct.TYPE_27__*
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 7
  store %struct.TYPE_27__* %65, %struct.TYPE_27__** %67, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  %71 = icmp ne %struct.TYPE_27__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  br label %222

73:                                               ; preds = %60
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 8
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @av_buffer_pool_get(i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_28__*
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 6
  store %struct.TYPE_28__* %86, %struct.TYPE_28__** %88, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %90, align 8
  %92 = icmp ne %struct.TYPE_28__* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %73
  br label %222

94:                                               ; preds = %73
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32**
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 5
  store i32** %100, i32*** %102, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %108, %114
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %137, %94
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %118
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 5
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  store i32* %130, i32** %136, align 8
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %118

140:                                              ; preds = %118
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AV_PICTURE_STRUCTURE_TOP_FIELD, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AV_PICTURE_STRUCTURE_TOP_FIELD, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %168, label %160

160:                                              ; preds = %140
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @AV_PICTURE_STRUCTURE_BOTTOM_FIELD, align 8
  %167 = icmp eq i64 %165, %166
  br label %168

168:                                              ; preds = %160, %140
  %169 = phi i1 [ true, %140 ], [ %167, %160 ]
  %170 = zext i1 %169 to i32
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = icmp ne %struct.TYPE_24__* %179, null
  br i1 %180, label %181, label %220

181:                                              ; preds = %168
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %185, align 8
  store %struct.TYPE_24__* %186, %struct.TYPE_24__** %8, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @av_assert0(i32 %192)
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %181
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @av_buffer_allocz(i32 %201)
  %203 = bitcast i8* %202 to %struct.TYPE_21__*
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 1
  store %struct.TYPE_21__* %203, %struct.TYPE_21__** %205, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = icmp ne %struct.TYPE_21__* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %198
  br label %222

211:                                              ; preds = %198
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %211, %181
  br label %220

220:                                              ; preds = %219, %168
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %221, %struct.TYPE_22__** %2, align 8
  br label %235

222:                                              ; preds = %210, %93, %72, %59
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %225 = call i32 @ff_hevc_unref_frame(%struct.TYPE_23__* %223, %struct.TYPE_22__* %224, i32 -1)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %235

226:                                              ; preds = %31
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %9

229:                                              ; preds = %9
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %231, align 8
  %233 = load i32, i32* @AV_LOG_ERROR, align 4
  %234 = call i32 @av_log(%struct.TYPE_25__* %232, i32 %233, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %235

235:                                              ; preds = %229, %222, %220, %42
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %236
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_22__*) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i8* @av_buffer_allocz(i32) #1

declare dso_local i8* @av_buffer_pool_get(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_hevc_unref_frame(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
