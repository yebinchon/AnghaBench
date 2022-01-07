; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_roles.c_mmalomx_role_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_roles.c_mmalomx_role_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_16__*, %struct.TYPE_24__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@MMAL_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@MMAL_ES_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@OMX_ErrorUnsupportedSetting = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_VIDEO_H263ProfileBaseline = common dso_local global i32 0, align 4
@OMX_VIDEO_H263Level10 = common dso_local global i32 0, align 4
@OMX_FALSE = common dso_local global i32 0, align 4
@OMX_TRUE = common dso_local global i32 0, align 4
@OMX_VIDEO_MPEG4ProfileSimple = common dso_local global i32 0, align 4
@OMX_VIDEO_MPEG4Level1 = common dso_local global i32 0, align 4
@OMX_VIDEO_AVCProfileBaseline = common dso_local global i32 0, align 4
@OMX_VIDEO_AVCLevel1 = common dso_local global i32 0, align 4
@OMX_VIDEO_WMVFormat9 = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"failed to commit format to %s for role %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_role_set(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @mmalomx_role_from_name(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @MMAL_ES_TYPE_UNKNOWN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mmalomx_registry_component_supports_role(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @OMX_ErrorUnsupportedSetting, align 4
  store i32 %25, i32* %3, align 4
  br label %205

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mmalomx_format_encoding_from_role(i32 %30, i64* %7, i32* %8, i32* %9)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %36, i32* %3, align 4
  br label %205

37:                                               ; preds = %26
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store i32 64000, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %80 [
    i32 128, label %57
  ]

57:                                               ; preds = %37
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i32 176, i32* %62, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  store i32 144, i32* %67, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32 15, i32* %73, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %81

80:                                               ; preds = %37
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %6, align 4
  switch i32 %82, label %177 [
    i32 134, label %83
    i32 130, label %83
    i32 133, label %124
    i32 129, label %124
    i32 135, label %145
    i32 131, label %145
    i32 132, label %166
  ]

83:                                               ; preds = %81, %81
  %84 = load i32, i32* @OMX_VIDEO_H263ProfileBaseline, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 3
  store i32 %84, i32* %93, align 4
  %94 = load i32, i32* @OMX_VIDEO_H263Level10, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  store i32 %94, i32* %103, align 4
  %104 = load i32, i32* @OMX_FALSE, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  store i32 %104, i32* %113, align 4
  %114 = load i32, i32* @OMX_TRUE, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  store i32 %114, i32* %123, align 4
  br label %178

124:                                              ; preds = %81, %81
  %125 = load i32, i32* @OMX_VIDEO_MPEG4ProfileSimple, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store i32 %125, i32* %134, align 4
  %135 = load i32, i32* @OMX_VIDEO_MPEG4Level1, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i32 %135, i32* %144, align 4
  br label %178

145:                                              ; preds = %81, %81
  %146 = load i32, i32* @OMX_VIDEO_AVCProfileBaseline, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  store i32 %146, i32* %155, align 4
  %156 = load i32, i32* @OMX_VIDEO_AVCLevel1, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  store i32 %156, i32* %165, align 4
  br label %178

166:                                              ; preds = %81
  %167 = load i32, i32* @OMX_VIDEO_WMVFormat9, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  store i32 %167, i32* %176, align 8
  br label %178

177:                                              ; preds = %81
  br label %178

178:                                              ; preds = %177, %166, %145, %124, %83
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = call i64 @mmal_port_format_commit(%struct.TYPE_16__* %186)
  %188 = load i64, i64* @MMAL_SUCCESS, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %178
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %200, i8* %201)
  br label %203

203:                                              ; preds = %190, %178
  %204 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %35, %24
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @mmalomx_role_from_name(i8*) #1

declare dso_local i32 @mmalomx_registry_component_supports_role(i32, i32) #1

declare dso_local i32 @mmalomx_format_encoding_from_role(i32, i64*, i32*, i32*) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_16__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
