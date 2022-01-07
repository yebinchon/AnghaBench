; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow_crossbar.c_dshow_try_setup_crossbar_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow_crossbar.c_dshow_try_setup_crossbar_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i64, i64, i64, i64 }

@LOOK_UPSTREAM_ONLY = common dso_local global i32 0, align 4
@IID_IAMCrossbar = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@VideoDevice = common dso_local global i32 0, align 4
@AudioDevice = common dso_local global i32 0, align 4
@IID_IBaseFilter = common dso_local global i32 0, align 4
@IID_IAMTVTuner = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unable to find a tv tuner to display dialog for!\00", align 1
@IID_IAMTVAudio = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"unable to find a tv audio tuner to display dialog for!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dshow_try_setup_crossbar_options(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.dshow_ctx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.dshow_ctx*, %struct.dshow_ctx** %18, align 8
  store %struct.dshow_ctx* %19, %struct.dshow_ctx** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32** %10 to i8**
  %23 = call i64 @ICaptureGraphBuilder2_FindInterface(i32* %20, i32* @LOOK_UPSTREAM_ONLY, i32* null, i32* %21, i32* @IID_IAMCrossbar, i8** %22)
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %16, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @S_OK, align 8
  store i64 %28, i64* %16, align 8
  br label %137

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @VideoDevice, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @AudioDevice, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42, %33
  %48 = load i32*, i32** %10, align 8
  %49 = bitcast i32** %11 to i8**
  %50 = call i64 @IAMCrossbar_QueryInterface(i32* %48, i32* @IID_IBaseFilter, i8** %49)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %137

55:                                               ; preds = %47
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = call i32 @dshow_show_filter_properties(i32* %56, %struct.TYPE_6__* %57)
  br label %59

59:                                               ; preds = %55, %42, %38
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @VideoDevice, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = bitcast i32** %12 to i8**
  %72 = call i64 @ICaptureGraphBuilder2_FindInterface(i32* %69, i32* @LOOK_UPSTREAM_ONLY, i32* null, i32* %70, i32* @IID_IAMTVTuner, i8** %71)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = load i32*, i32** %12, align 8
  %78 = bitcast i32** %13 to i8**
  %79 = call i64 @IAMCrossbar_QueryInterface(i32* %77, i32* @IID_IBaseFilter, i8** %78)
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %137

84:                                               ; preds = %76
  %85 = load i32*, i32** %13, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = call i32 @dshow_show_filter_properties(i32* %85, %struct.TYPE_6__* %86)
  br label %92

88:                                               ; preds = %68
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = load i32, i32* @AV_LOG_WARNING, align 4
  %91 = call i32 @av_log(%struct.TYPE_6__* %89, i32 %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %63, %59
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @AudioDevice, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %93
  %98 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %99 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %97
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = bitcast i32** %14 to i8**
  %106 = call i64 @ICaptureGraphBuilder2_FindInterface(i32* %103, i32* @LOOK_UPSTREAM_ONLY, i32* null, i32* %104, i32* @IID_IAMTVAudio, i8** %105)
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load i32*, i32** %14, align 8
  %112 = bitcast i32** %15 to i8**
  %113 = call i64 @IAMCrossbar_QueryInterface(i32* %111, i32* @IID_IBaseFilter, i8** %112)
  store i64 %113, i64* %16, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %137

118:                                              ; preds = %110
  %119 = load i32*, i32** %15, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = call i32 @dshow_show_filter_properties(i32* %119, %struct.TYPE_6__* %120)
  br label %126

122:                                              ; preds = %102
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = load i32, i32* @AV_LOG_WARNING, align 4
  %125 = call i32 @av_log(%struct.TYPE_6__* %123, i32 %124, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %97, %93
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = call i64 @setup_crossbar_options(i32* %128, i32 %129, %struct.TYPE_6__* %130)
  store i64 %131, i64* %16, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %137

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %135, %117, %83, %54, %27
  %138 = load i32*, i32** %10, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @IAMCrossbar_Release(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @IBaseFilter_Release(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %12, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @IAMTVTuner_Release(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %13, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %13, align 8
  %160 = call i32 @IBaseFilter_Release(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i64, i64* %16, align 8
  ret i64 %162
}

declare dso_local i64 @ICaptureGraphBuilder2_FindInterface(i32*, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @IAMCrossbar_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @dshow_show_filter_properties(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i64 @setup_crossbar_options(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IAMCrossbar_Release(i32*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

declare dso_local i32 @IAMTVTuner_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
