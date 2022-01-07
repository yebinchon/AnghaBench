; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_yadif_common.c_ff_yadif_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_yadif_common.c_ff_yadif_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32*, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i64, i32, i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@YADIF_FIELD_END = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Reallocating frame due to differing stride\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to reallocate frame\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_yadif_filter_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %6, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = call i32 @av_assert0(%struct.TYPE_23__* %14)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = call i32 @return_frame(%struct.TYPE_25__* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = icmp ne %struct.TYPE_23__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %31 = call i32 @av_frame_free(%struct.TYPE_23__** %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 3
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %45, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = icmp ne %struct.TYPE_23__* %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %32
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = call i8* @av_frame_clone(%struct.TYPE_23__* %53)
  %55 = bitcast i8* %54 to %struct.TYPE_23__*
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  store %struct.TYPE_23__* %55, %struct.TYPE_23__** %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = icmp ne %struct.TYPE_23__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %3, align 4
  br label %309

65:                                               ; preds = %50
  %66 = load i32, i32* @YADIF_FIELD_END, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %32
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = call i64 @checkstride(%struct.TYPE_22__* %70, %struct.TYPE_23__* %73, %struct.TYPE_23__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %82 = call i32 @av_log(%struct.TYPE_25__* %80, i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = call i32 @fixstride(%struct.TYPE_24__* %83, %struct.TYPE_23__* %86)
  br label %88

88:                                               ; preds = %79, %69
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = call i64 @checkstride(%struct.TYPE_22__* %89, %struct.TYPE_23__* %92, %struct.TYPE_23__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = call i32 @fixstride(%struct.TYPE_24__* %99, %struct.TYPE_23__* %102)
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = icmp ne %struct.TYPE_23__* %107, null
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = call i64 @checkstride(%struct.TYPE_22__* %110, %struct.TYPE_23__* %113, %struct.TYPE_23__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %109
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = call i32 @fixstride(%struct.TYPE_24__* %120, %struct.TYPE_23__* %123)
  br label %125

125:                                              ; preds = %119, %109, %104
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = call i64 @checkstride(%struct.TYPE_22__* %126, %struct.TYPE_23__* %129, %struct.TYPE_23__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %125
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  %139 = icmp ne %struct.TYPE_23__* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = call i64 @checkstride(%struct.TYPE_22__* %141, %struct.TYPE_23__* %144, %struct.TYPE_23__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %140, %125
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 @av_log(%struct.TYPE_25__* %151, i32 %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %309

154:                                              ; preds = %140, %135
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %156, align 8
  %158 = icmp ne %struct.TYPE_23__* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %309

160:                                              ; preds = %154
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %165, %160
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %215, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %182
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %189, %182, %177
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %258

201:                                              ; preds = %196
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %258, label %208

208:                                              ; preds = %201
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %258

215:                                              ; preds = %208, %189, %172, %165
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = call i8* @av_frame_clone(%struct.TYPE_23__* %218)
  %220 = bitcast i8* %219 to %struct.TYPE_21__*
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  store %struct.TYPE_21__* %220, %struct.TYPE_21__** %222, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = icmp ne %struct.TYPE_21__* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %215
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = call i32 @AVERROR(i32 %228)
  store i32 %229, i32* %3, align 4
  br label %309

230:                                              ; preds = %215
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 2
  %233 = call i32 @av_frame_free(%struct.TYPE_23__** %232)
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %230
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = mul nsw i32 %246, 2
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %241, %230
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %255, align 8
  %257 = call i32 @ff_filter_frame(i32 %253, %struct.TYPE_21__* %256)
  store i32 %257, i32* %3, align 4
  br label %309

258:                                              ; preds = %208, %201, %196
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call %struct.TYPE_21__* @ff_get_video_buffer(i32 %263, i32 %266, i32 %269)
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 0
  store %struct.TYPE_21__* %270, %struct.TYPE_21__** %272, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %274, align 8
  %276 = icmp ne %struct.TYPE_21__* %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %258
  %278 = load i32, i32* @ENOMEM, align 4
  %279 = call i32 @AVERROR(i32 %278)
  store i32 %279, i32* %3, align 4
  br label %309

280:                                              ; preds = %258
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %285, align 8
  %287 = call i32 @av_frame_copy_props(%struct.TYPE_21__* %283, %struct.TYPE_23__* %286)
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  store i64 0, i64* %291, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %280
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = mul nsw i32 %304, 2
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %299, %280
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %308 = call i32 @return_frame(%struct.TYPE_25__* %307, i32 0)
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %306, %277, %248, %227, %159, %150, %62
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @av_assert0(%struct.TYPE_23__*) #1

declare dso_local i32 @return_frame(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i8* @av_frame_clone(%struct.TYPE_23__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @checkstride(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @fixstride(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(i32, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
