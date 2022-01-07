; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_netplay_find_content.c_task_push_netplay_crc_scan.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_netplay_find_content.c_task_push_netplay_crc_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_list_elem_attr = type { i32 }
%struct.string_list = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_15__*, i32, %struct.string_list* }

@.str = private unnamed_addr constant [9 x i8] c"%08X|crc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@TASK_TYPE_BLOCKING = common dso_local global i32 0, align 4
@task_netplay_crc_scan_handler = common dso_local global i32 0, align 4
@netplay_crc_scan_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Looking for matching content...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_netplay_crc_scan(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.string_list_elem_attr, align 4
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.string_list* null, %struct.string_list** %14, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  %19 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %16, align 8
  %20 = call %struct.TYPE_15__* (...) @task_init()
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %17, align 8
  %21 = call i64 @calloc(i32 1, i32 104)
  %22 = inttoptr i64 %21 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %18, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %5
  br label %186

29:                                               ; preds = %25
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  %50 = bitcast %union.string_list_elem_attr* %13 to i32*
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @snprintf(i8* %53, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strlcpy(i8* %58, i8* %59, i32 8)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strlcpy(i8* %63, i8* %64, i32 8)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @strlcpy(i8* %68, i8* %69, i32 8)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @strlcpy(i8* %73, i8* %74, i32 8)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.string_list* @dir_list_new(i32 %79, i32* null, i32 1, i32 1, i32 1, i32 0)
  store %struct.string_list* %80, %struct.string_list** %14, align 8
  %81 = load %struct.string_list*, %struct.string_list** %14, align 8
  %82 = icmp ne %struct.string_list* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %29
  br label %186

84:                                               ; preds = %29
  %85 = load %struct.string_list*, %struct.string_list** %14, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 13
  store %struct.string_list* %85, %struct.string_list** %87, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 13
  %90 = load %struct.string_list*, %struct.string_list** %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %13, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @string_list_append(%struct.string_list* %90, i32 %94, i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 5
  store i32 0, i32* %99, align 8
  %100 = call i32 @core_info_get_list(%struct.TYPE_16__** %15)
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %165, %84
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %168

107:                                              ; preds = %101
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @string_is_equal(i8* %115, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %164

121:                                              ; preds = %107
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strlcpy(i8* %124, i8* %132, i32 8)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @string_is_not_equal(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %121
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @string_is_empty(i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %139
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 7
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strlcpy(i8* %153, i8* %161, i32 8)
  br label %163

163:                                              ; preds = %150, %139, %121
  br label %168

164:                                              ; preds = %107
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %12, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %101

168:                                              ; preds = %163, %101
  %169 = load i32, i32* @TASK_TYPE_BLOCKING, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 12
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 11
  store %struct.TYPE_15__* %172, %struct.TYPE_15__** %174, align 8
  %175 = load i32, i32* @task_netplay_crc_scan_handler, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 10
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @netplay_crc_scan_callback, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 9
  store i32 %178, i32* %180, align 4
  %181 = call i32 @strdup(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %185 = call i32 @task_queue_push(%struct.TYPE_15__* %184)
  store i32 1, i32* %6, align 4
  br label %199

186:                                              ; preds = %83, %28
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %188 = icmp ne %struct.TYPE_15__* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %191 = call i32 @free(%struct.TYPE_15__* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %194 = icmp ne %struct.TYPE_15__* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %197 = call i32 @free(%struct.TYPE_15__* %196)
  br label %198

198:                                              ; preds = %195, %192
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %198, %168
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_15__* @task_init(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.string_list* @dir_list_new(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32, i32) #1

declare dso_local i32 @core_info_get_list(%struct.TYPE_16__**) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @string_is_not_equal(i8*, i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @task_queue_push(%struct.TYPE_15__*) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
