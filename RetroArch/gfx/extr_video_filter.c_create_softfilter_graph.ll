; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_filter.c_create_softfilter_graph.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_filter.c_create_softfilter_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, %struct.filter_thread_data*, i32, %struct.softfilter_work_packet*, %struct.TYPE_6__*, i32 }
%struct.filter_thread_data = type { i32, i32, i32, i32, i32 }
%struct.softfilter_work_packet = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 (...)*, i32 (i32)*, i32 (i32)*, i32 (i32*, i32, i32, i32, i32, i32, i32, %struct.config_file_userdata*)* }
%struct.config_file_userdata = type { i8**, i32 }

@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not find 'filter' array in config.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No filter plugs found. Exiting...\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not find implementation.\0A\00", align 1
@SOFTFILTER_FMT_XRGB8888 = common dso_local global i32 0, align 4
@SOFTFILTER_FMT_RGB565 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Softfilter does not support input format.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Did not find suitable output format for softfilter.\0A\00", align 1
@softfilter_config = common dso_local global i32 0, align 4
@RARCH_SOFTFILTER_THREADS_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to create softfilter state.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Invalid number of threads.\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Using %u threads for softfilter.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Failed to allocate softfilter packets.\0A\00", align 1
@filter_thread_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32)* @create_softfilter_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_softfilter_graph(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.config_file_userdata, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca [64 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %22, align 16
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %25 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %31 = call i32 @config_get_array(i32 %28, i8* %29, i8* %30, i32 64)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %6
  %34 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

35:                                               ; preds = %6
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %45 = call %struct.TYPE_6__* @softfilter_find_implementation(%struct.TYPE_5__* %43, i8* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 9
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 9
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

54:                                               ; preds = %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %18, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %60 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %18, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 9
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.config_file_userdata, %struct.config_file_userdata* %18, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 9
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %85 [
    i32 128, label %81
    i32 129, label %83
  ]

81:                                               ; preds = %54
  %82 = load i32, i32* @SOFTFILTER_FMT_XRGB8888, align 4
  store i32 %82, i32* %15, align 4
  br label %86

83:                                               ; preds = %54
  %84 = load i32, i32* @SOFTFILTER_FMT_RGB565, align 4
  store i32 %84, i32* %15, align 4
  br label %86

85:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %196

86:                                               ; preds = %83, %81
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 9
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 %98(i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %129

109:                                              ; preds = %93
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @SOFTFILTER_FMT_XRGB8888, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 128, i32* %116, align 4
  br label %128

117:                                              ; preds = %109
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @SOFTFILTER_FMT_RGB565, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 129, i32* %124, align 4
  br label %127

125:                                              ; preds = %117
  %126 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %114
  br label %129

129:                                              ; preds = %128, %105
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 9
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32 (i32*, i32, i32, i32, i32, i32, i32, %struct.config_file_userdata*)*, i32 (i32*, i32, i32, i32, i32, i32, i32, %struct.config_file_userdata*)** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @RARCH_SOFTFILTER_THREADS_AUTO, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %129
  %149 = load i32, i32* %13, align 4
  br label %152

150:                                              ; preds = %129
  %151 = call i32 (...) @cpu_features_get_core_amount()
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = load i32, i32* %12, align 4
  %155 = call i32 %140(i32* @softfilter_config, i32 %141, i32 %142, i32 %143, i32 %144, i32 %153, i32 %154, %struct.config_file_userdata* %18)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %152
  %163 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

164:                                              ; preds = %152
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 9
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32 (i32)*, i32 (i32)** %168, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call i32 %169(i32 %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %164
  %177 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

178:                                              ; preds = %164
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %13, align 4
  %185 = call i64 @calloc(i32 %184, i32 4)
  %186 = inttoptr i64 %185 to %struct.softfilter_work_packet*
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 8
  store %struct.softfilter_work_packet* %186, %struct.softfilter_work_packet** %188, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 8
  %191 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %190, align 8
  %192 = icmp ne %struct.softfilter_work_packet* %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %178
  %194 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

195:                                              ; preds = %178
  store i32 1, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %193, %176, %162, %125, %91, %85, %52, %40, %33
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @config_get_array(i32, i8*, i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local %struct.TYPE_6__* @softfilter_find_implementation(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @cpu_features_get_core_amount(...) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
