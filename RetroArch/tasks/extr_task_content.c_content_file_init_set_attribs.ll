; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_file_init_set_attribs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_file_init_set_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.retro_subsystem_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%union.string_list_elem_attr = type { i32 }

@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.retro_subsystem_info*, %struct.TYPE_7__*, i8**, %union.string_list_elem_attr*)* @content_file_init_set_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @content_file_init_set_attribs(%struct.string_list* %0, %struct.retro_subsystem_info* %1, %struct.TYPE_7__* %2, i8** %3, %union.string_list_elem_attr* %4) #0 {
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.retro_subsystem_info*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.string_list_elem_attr*, align 8
  %11 = alloca %struct.string_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %6, align 8
  store %struct.retro_subsystem_info* %1, %struct.retro_subsystem_info** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %union.string_list_elem_attr* %4, %union.string_list_elem_attr** %10, align 8
  %16 = call %struct.string_list* (...) @path_get_subsystem_list()
  store %struct.string_list* %16, %struct.string_list** %11, align 8
  %17 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %18 = bitcast %union.string_list_elem_attr* %17 to i32*
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %20 = call i32 @path_is_empty(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %86, label %22

22:                                               ; preds = %5
  %23 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %7, align 8
  %24 = icmp ne %struct.retro_subsystem_info* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %82, %25
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.string_list*, %struct.string_list** %11, align 8
  %29 = getelementptr inbounds %struct.string_list, %struct.string_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %26
  %33 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %7, align 8
  %34 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %42 = bitcast %union.string_list_elem_attr* %41 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %7, align 8
  %44 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 1
  %52 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %53 = bitcast %union.string_list_elem_attr* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %7, align 8
  %57 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 2
  %65 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %66 = bitcast %union.string_list_elem_attr* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.string_list*, %struct.string_list** %6, align 8
  %70 = load %struct.string_list*, %struct.string_list** %11, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %79 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @string_list_append(%struct.string_list* %69, i8* %77, i32 %80)
  br label %82

82:                                               ; preds = %32
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %26

85:                                               ; preds = %26
  br label %141

86:                                               ; preds = %22, %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %87 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %88 = call i32 @path_is_empty(i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = call i32 @content_get_status(i32* %13, i32* %14)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %94 = bitcast %union.string_list_elem_attr* %93 to i32*
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 1
  %99 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %100 = bitcast %union.string_list_elem_attr* %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = shl i32 %106, 2
  %108 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %109 = bitcast %union.string_list_elem_attr* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %86
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.string_list*, %struct.string_list** %6, align 8
  %124 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %125 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @string_list_append(%struct.string_list* %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %140

128:                                              ; preds = %117, %114, %86
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = load %struct.string_list*, %struct.string_list** %6, align 8
  %133 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %134 = call i8* @path_get(i32 %133)
  %135 = load %union.string_list_elem_attr*, %union.string_list_elem_attr** %10, align 8
  %136 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @string_list_append(%struct.string_list* %132, i8* %134, i32 %137)
  br label %139

139:                                              ; preds = %131, %128
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %85
  ret void
}

declare dso_local %struct.string_list* @path_get_subsystem_list(...) #1

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #1

declare dso_local i32 @content_get_status(i32*, i32*) #1

declare dso_local i8* @path_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
