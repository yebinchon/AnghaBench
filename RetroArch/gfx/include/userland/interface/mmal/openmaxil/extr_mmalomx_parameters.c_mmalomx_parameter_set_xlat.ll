; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_parameters.c_mmalomx_parameter_set_xlat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_parameters.c_mmalomx_parameter_set_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_19__ = type { i32, i64, i32, %struct.TYPE_17__, i32, i64 }
%struct.TYPE_17__ = type { i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)*, i64 (i32, %struct.TYPE_18__*, i64)* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }

@.str = private unnamed_addr constant [33 x i8] c"no translation for omx id 0x%08x\00", align 1
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_ErrorBadPortIndex = common dso_local global i32 0, align 4
@MMALOMX_PARAM_TRANSLATION_TYPE_DIRECT = common dso_local global i64 0, align 8
@MMALOMX_PARAM_MAPPING_TO_MMAL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, i64)* @mmalomx_parameter_set_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_parameter_set_xlat(%struct.TYPE_22__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_19__* @mmalomx_find_parameter_from_omx_id(i32 %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %11, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = icmp ne %struct.TYPE_19__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %29, i32* %4, align 4
  br label %191

30:                                               ; preds = %3
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 16
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %42, i32* %4, align 4
  br label %191

43:                                               ; preds = %35
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @OMX_ErrorBadPortIndex, align 4
  store i32 %52, i32* %4, align 4
  br label %191

53:                                               ; preds = %43
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %12, align 8
  br label %63

63:                                               ; preds = %53, %30
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %72, i32* %4, align 4
  br label %191

73:                                               ; preds = %63
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MMALOMX_PARAM_TRANSLATION_TYPE_DIRECT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %73
  %80 = load i64, i64* %7, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  %90 = bitcast i32* %89 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = bitcast %struct.TYPE_18__* %91 to i8*
  %94 = bitcast %struct.TYPE_18__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 4
  %104 = sub nsw i32 %97, %103
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = call i64 @mmal_port_parameter_set(i32* %112, %struct.TYPE_18__* %113)
  store i64 %114, i64* %13, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %117 = bitcast %struct.TYPE_18__* %115 to i8*
  %118 = bitcast %struct.TYPE_18__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 8, i1 false)
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @mmalil_error_to_omx(i64 %119)
  store i32 %120, i32* %4, align 4
  br label %191

121:                                              ; preds = %73
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)*, i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)** %124, align 8
  %126 = icmp ne i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)* %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i64 (i32, %struct.TYPE_18__*, i64)*, i64 (i32, %struct.TYPE_18__*, i64)** %130, align 8
  %132 = icmp ne i64 (i32, %struct.TYPE_18__*, i64)* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %134, i32* %4, align 4
  br label %191

135:                                              ; preds = %127, %121
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = icmp ult i64 8, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %142, i32* %4, align 4
  br label %191

143:                                              ; preds = %135
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)*, i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)** %156, align 8
  %158 = icmp ne i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %143
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)*, i64 (i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*)** %162, align 8
  %164 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = call i64 %163(i32 %164, %struct.TYPE_19__* %165, %struct.TYPE_18__* %166, i64 %167, i32* %168)
  store i64 %169, i64* %13, align 8
  br label %179

170:                                              ; preds = %143
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i64 (i32, %struct.TYPE_18__*, i64)*, i64 (i32, %struct.TYPE_18__*, i64)** %173, align 8
  %175 = load i32, i32* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i64 %174(i32 %175, %struct.TYPE_18__* %176, i64 %177)
  store i64 %178, i64* %13, align 8
  br label %179

179:                                              ; preds = %170, %159
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* @MMAL_SUCCESS, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %188

184:                                              ; preds = %179
  %185 = load i32*, i32** %12, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %187 = call i64 @mmal_port_parameter_set(i32* %185, %struct.TYPE_18__* %186)
  store i64 %187, i64* %13, align 8
  br label %188

188:                                              ; preds = %184, %183
  %189 = load i64, i64* %13, align 8
  %190 = call i32 @mmalil_error_to_omx(i64 %189)
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %188, %141, %133, %79, %71, %51, %41, %26
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_19__* @mmalomx_find_parameter_from_omx_id(i32) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @mmalil_error_to_omx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
