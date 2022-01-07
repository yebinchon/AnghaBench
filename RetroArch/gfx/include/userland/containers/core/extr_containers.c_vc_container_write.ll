; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, {}*, i64, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, i32, i32, i64, i8* }

@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_NOT_READY = common dso_local global i64 0, align 8
@WRITER_SPACE_SAFETY_MARGIN = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_LIMIT_REACHED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_SPACE = common dso_local global i64 0, align 8
@VC_CONTAINER_CONTROL_GET_DRM_METADATA = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_TIME_UNKNOWN = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_write(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = icmp ne %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %12, %2
  %26 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %26, i64* %3, align 8
  br label %233

27:                                               ; preds = %17
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VC_CONTAINER_ERROR_NOT_READY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  br label %233

49:                                               ; preds = %35, %27
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i64, i64* @WRITER_SPACE_SAFETY_MARGIN, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %65, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i64, i64* @VC_CONTAINER_ERROR_LIMIT_REACHED, align 8
  store i64 %73, i64* %6, align 8
  br label %226

74:                                               ; preds = %56, %49
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %74
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load i64, i64* @WRITER_SPACE_SAFETY_MARGIN, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = icmp ne %struct.TYPE_14__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %83
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107, %99
  %109 = phi i32 [ %106, %99 ], [ 0, %107 ]
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %92, %110
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %111, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_SPACE, align 8
  store i64 %121, i64* %6, align 8
  br label %226

122:                                              ; preds = %108, %74
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %216

129:                                              ; preds = %122
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = call i64 @vc_container_filter_process(i64 %134, %struct.TYPE_18__* %135)
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %209

140:                                              ; preds = %129
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = load i32, i32* @VC_CONTAINER_CONTROL_GET_DRM_METADATA, align 4
  %143 = call i64 @vc_container_control(%struct.TYPE_17__* %141, i32 %142, i8** %7, i64* %8)
  %144 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %208

146:                                              ; preds = %140
  %147 = load i64, i64* %8, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %208

149:                                              ; preds = %146
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 8
  store i8* %150, i8** %151, align 8
  %152 = load i64, i64* %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  store i64 %152, i64* %153, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i64 %154, i64* %155, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add nsw i64 %158, %159
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i64 %160, i64* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i32 %164, i32* %165, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 %168, i32* %169, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  store i32 %172, i32* %173, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i64 %176, i64* %177, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 %183, i32* %184, align 8
  %185 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 5
  store i32 %185, i32* %189, align 8
  %190 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = bitcast {}** %199 to i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %201 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = call i64 %201(%struct.TYPE_17__* %202, %struct.TYPE_18__* %9)
  %204 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %149
  br label %226

207:                                              ; preds = %149
  br label %208

208:                                              ; preds = %207, %146, %140
  br label %215

209:                                              ; preds = %129
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* @VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %226

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214, %208
  br label %216

216:                                              ; preds = %215, %122
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = bitcast {}** %220 to i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %222 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %221, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %225 = call i64 %222(%struct.TYPE_17__* %223, %struct.TYPE_18__* %224)
  store i64 %225, i64* %6, align 8
  br label %226

226:                                              ; preds = %216, %213, %206, %120, %72
  %227 = load i64, i64* %6, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  store i64 %227, i64* %231, align 8
  %232 = load i64, i64* %6, align 8
  store i64 %232, i64* %3, align 8
  br label %233

233:                                              ; preds = %226, %43, %25
  %234 = load i64, i64* %3, align 8
  ret i64 %234
}

declare dso_local i64 @vc_container_filter_process(i64, %struct.TYPE_18__*) #1

declare dso_local i64 @vc_container_control(%struct.TYPE_17__*, i32, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
