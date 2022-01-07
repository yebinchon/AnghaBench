; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_component_wrapper.c_mmal_wrapper_port_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_component_wrapper.c_mmal_wrapper_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i64, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32**, i32** }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %s\00", align 1
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE = common dso_local global i32 0, align 4
@MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY = common dso_local global i32 0, align 4
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set zero copy on %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not resize pool (%i/%i)\00", align 1
@mmal_wrapper_bh_in_cb = common dso_local global i32 0, align 4
@mmal_wrapper_bh_out_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"could not enable port\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_wrapper_port_enable(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %7, align 8
  %19 = call i64 (...) @vcos_getmicrosecs()
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %20, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %37, i64* %3, align 8
  br label %158

38:                                               ; preds = %30, %2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %44, i64* %3, align 8
  br label %158

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  br label %69

60:                                               ; preds = %45
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  %68 = load i32*, i32** %67, align 8
  br label %69

69:                                               ; preds = %60, %51
  %70 = phi i32* [ %59, %51 ], [ %68, %60 ]
  store i32* %70, i32** %11, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %88 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %91 = bitcast %struct.TYPE_10__* %90 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %91, i8 0, i64 8, i1 false)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %94 = call i64 @mmal_port_parameter_set(%struct.TYPE_13__* %92, i32* %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @MMAL_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @MMAL_ENOSYS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i64, i64* %10, align 8
  store i64 %107, i64* %3, align 8
  br label %158

108:                                              ; preds = %98, %86
  br label %109

109:                                              ; preds = %108, %80
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @mmal_pool_resize(i32* %110, i64 %113, i32 %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @MMAL_SUCCESS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i64, i64* %10, align 8
  store i64 %126, i64* %3, align 8
  br label %158

127:                                              ; preds = %109
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @mmal_wrapper_bh_in_cb, align 4
  br label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @mmal_wrapper_bh_out_cb, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i64 @mmal_port_enable(%struct.TYPE_13__* %128, i32 %139)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @MMAL_SUCCESS, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i64, i64* %10, align 8
  store i64 %146, i64* %3, align 8
  br label %158

147:                                              ; preds = %138
  %148 = call i64 (...) @vcos_getmicrosecs()
  %149 = load i64, i64* %8, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 8
  %157 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %147, %144, %119, %102, %43, %36
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i64 @vcos_getmicrosecs(...) #1

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_pool_resize(i32*, i64, i32) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
