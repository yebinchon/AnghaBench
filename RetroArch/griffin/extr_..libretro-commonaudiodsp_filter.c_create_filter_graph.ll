; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudiodsp_filter.c_create_filter_graph.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudiodsp_filter.c_create_filter_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.retro_dsp_instance*, i32 }
%struct.retro_dsp_instance = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 (%struct.dspfilter_info*, i32*, %struct.config_file_userdata*)* }
%struct.dspfilter_info = type { float }
%struct.config_file_userdata = type { i8**, i32 }

@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filter%u\00", align 1
@dspfilter_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, float)* @create_filter_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_filter_graph(%struct.TYPE_5__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.retro_dsp_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_file_userdata, align 8
  %10 = alloca %struct.dspfilter_info, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float %1, float* %5, align 4
  store %struct.retro_dsp_instance* null, %struct.retro_dsp_instance** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @config_get_uint(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @calloc(i32 %20, i32 16)
  %22 = inttoptr i64 %21 to %struct.retro_dsp_instance*
  store %struct.retro_dsp_instance* %22, %struct.retro_dsp_instance** %7, align 8
  %23 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %7, align 8
  %24 = icmp ne %struct.retro_dsp_instance* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %129

26:                                               ; preds = %19
  %27 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store %struct.retro_dsp_instance* %27, %struct.retro_dsp_instance** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %125, %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %128

37:                                               ; preds = %33
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %38, align 16
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %39, align 16
  %40 = load float, float* %5, align 4
  %41 = getelementptr inbounds %struct.dspfilter_info, %struct.dspfilter_info* %10, i32 0, i32 0
  store float %40, float* %41, align 4
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @snprintf(i8* %42, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %50 = call i32 @config_get_array(i32 %47, i8* %48, i8* %49, i32 64)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %129

53:                                               ; preds = %37
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %56 = call %struct.TYPE_6__* @find_implementation(%struct.TYPE_5__* %54, i8* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %59, i64 %61
  %63 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %62, i32 0, i32 1
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %66, i64 %68
  %70 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %129

74:                                               ; preds = %53
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %9, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %80 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %9, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %85, i64 %87
  %89 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %9, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %92, i8** %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %98, i64 %100
  %102 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32 (%struct.dspfilter_info*, i32*, %struct.config_file_userdata*)*, i32 (%struct.dspfilter_info*, i32*, %struct.config_file_userdata*)** %104, align 8
  %106 = call i32 %105(%struct.dspfilter_info* %10, i32* @dspfilter_config, %struct.config_file_userdata* %9)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %109, i64 %111
  %113 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.retro_dsp_instance*, %struct.retro_dsp_instance** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %116, i64 %118
  %120 = getelementptr inbounds %struct.retro_dsp_instance, %struct.retro_dsp_instance* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %74
  store i32 0, i32* %3, align 4
  br label %129

124:                                              ; preds = %74
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %33

128:                                              ; preds = %33
  store i32 1, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %123, %73, %52, %25, %18
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @config_get_uint(i32, i8*, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @config_get_array(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @find_implementation(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
