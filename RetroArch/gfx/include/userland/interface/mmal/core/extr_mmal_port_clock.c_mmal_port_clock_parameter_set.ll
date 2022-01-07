; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_31__*, %struct.TYPE_27__*)*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_36__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_CLOCK_EVENT_INVALID = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_REFERENCE = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_ACTIVE = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_SCALE = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_TIME = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_UPDATE_THRESHOLD = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_DISCONT_THRESHOLD = common dso_local global i32 0, align 4
@MMAL_CLOCK_EVENT_REQUEST_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported clock parameter 0x%x\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_31__*, %struct.TYPE_34__*)* @mmal_port_clock_parameter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_port_clock_parameter_set(%struct.TYPE_31__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %16 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* @MMAL_CLOCK_EVENT_INVALID, align 4
  call void @MMAL_CLOCK_EVENT_INIT(%struct.TYPE_27__* sret %7, i32 %17)
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %136 [
    i32 132, label %21
    i32 135, label %36
    i32 130, label %51
    i32 129, label %66
    i32 128, label %81
    i32 134, label %95
    i32 131, label %109
    i32 133, label %123
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %23 = bitcast %struct.TYPE_34__* %22 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %8, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @mmal_port_clock_reference_set(%struct.TYPE_31__* %24, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* @MMAL_CLOCK_EVENT_REFERENCE, align 4
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  br label %142

36:                                               ; preds = %2
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %38 = bitcast %struct.TYPE_34__* %37 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %38, %struct.TYPE_26__** %9, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @mmal_port_clock_active_set(%struct.TYPE_31__* %39, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* @MMAL_CLOCK_EVENT_ACTIVE, align 4
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  br label %142

51:                                               ; preds = %2
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %53 = bitcast %struct.TYPE_34__* %52 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %53, %struct.TYPE_32__** %10, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @mmal_port_clock_scale_set(%struct.TYPE_31__* %54, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i32, i32* @MMAL_CLOCK_EVENT_SCALE, align 4
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %142

66:                                               ; preds = %2
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %68 = bitcast %struct.TYPE_34__* %67 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %68, %struct.TYPE_33__** %11, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @mmal_port_clock_media_time_set(%struct.TYPE_31__* %69, i32 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i32, i32* @MMAL_CLOCK_EVENT_TIME, align 4
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %142

81:                                               ; preds = %2
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %83 = bitcast %struct.TYPE_34__* %82 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %83, %struct.TYPE_35__** %12, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %85 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %85, i32 0, i32 0
  %87 = call i64 @mmal_port_clock_update_threshold_set(%struct.TYPE_31__* %84, i32* %86)
  store i64 %87, i64* %6, align 8
  %88 = load i32, i32* @MMAL_CLOCK_EVENT_UPDATE_THRESHOLD, align 4
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %142

95:                                               ; preds = %2
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %97 = bitcast %struct.TYPE_34__* %96 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %97, %struct.TYPE_25__** %13, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = call i64 @mmal_port_clock_discont_threshold_set(%struct.TYPE_31__* %98, i32* %100)
  store i64 %101, i64* %6, align 8
  %102 = load i32, i32* @MMAL_CLOCK_EVENT_DISCONT_THRESHOLD, align 4
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %142

109:                                              ; preds = %2
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %111 = bitcast %struct.TYPE_34__* %110 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %111, %struct.TYPE_36__** %14, align 8
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 0
  %115 = call i64 @mmal_port_clock_request_threshold_set(%struct.TYPE_31__* %112, i32* %114)
  store i64 %115, i64* %6, align 8
  %116 = load i32, i32* @MMAL_CLOCK_EVENT_REQUEST_THRESHOLD, align 4
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %142

123:                                              ; preds = %2
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %125 = bitcast %struct.TYPE_34__* %124 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %125, %struct.TYPE_26__** %15, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  store i32 %128, i32* %134, align 8
  %135 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %135, i64* %3, align 8
  br label %167

136:                                              ; preds = %2
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %141, i64* %3, align 8
  br label %167

142:                                              ; preds = %109, %95, %81, %66, %51, %36, %21
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_31__*, %struct.TYPE_27__*)*, i32 (%struct.TYPE_31__*, %struct.TYPE_27__*)** %148, align 8
  %150 = icmp ne i32 (%struct.TYPE_31__*, %struct.TYPE_27__*)* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %142
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @MMAL_SUCCESS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = load i32 (%struct.TYPE_31__*, %struct.TYPE_27__*)*, i32 (%struct.TYPE_31__*, %struct.TYPE_27__*)** %161, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %164 = call i32 %162(%struct.TYPE_31__* %163, %struct.TYPE_27__* %7)
  br label %165

165:                                              ; preds = %155, %151, %142
  %166 = load i64, i64* %6, align 8
  store i64 %166, i64* %3, align 8
  br label %167

167:                                              ; preds = %165, %136, %123
  %168 = load i64, i64* %3, align 8
  ret i64 %168
}

declare dso_local void @MMAL_CLOCK_EVENT_INIT(%struct.TYPE_27__* sret, i32) #1

declare dso_local i64 @mmal_port_clock_reference_set(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @mmal_port_clock_active_set(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @mmal_port_clock_scale_set(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @mmal_port_clock_media_time_set(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @mmal_port_clock_update_threshold_set(%struct.TYPE_31__*, i32*) #1

declare dso_local i64 @mmal_port_clock_discont_threshold_set(%struct.TYPE_31__*, i32*) #1

declare dso_local i64 @mmal_port_clock_request_threshold_set(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
