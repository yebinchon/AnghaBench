; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_change_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_change_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@OLD_MEMORY_OBJECT_BEHAVE_INFO_COUNT = common dso_local global i32 0, align 4
@MEMORY_OBJECT_BEHAVE_INFO_COUNT = common dso_local global i32 0, align 4
@MEMORY_OBJECT_PERF_INFO_COUNT = common dso_local global i32 0, align 4
@OLD_MEMORY_OBJECT_ATTR_INFO_COUNT = common dso_local global i32 0, align 4
@MEMORY_OBJECT_ATTR_INFO_COUNT = common dso_local global i32 0, align 4
@MEMORY_OBJECT_COPY_TEMPORARY = common dso_local global i64 0, align 8
@MEMORY_OBJECT_COPY_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memory_object_change_attributes(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_12__* @memory_object_control_to_vm_object(i32 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VM_OBJECT_NULL, align 8
  %25 = icmp eq %struct.TYPE_12__* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %27, i64* %5, align 8
  br label %136

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = call i32 @vm_object_lock(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = call i32 @vm_object_unlock(%struct.TYPE_12__* %37)
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %117 [
    i32 128, label %40
    i32 131, label %56
    i32 130, label %72
    i32 129, label %85
    i32 132, label %101
  ]

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @OLD_MEMORY_OBJECT_BEHAVE_INFO_COUNT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %45, i64* %11, align 8
  br label %119

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %15, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  br label %119

56:                                               ; preds = %28
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MEMORY_OBJECT_BEHAVE_INFO_COUNT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %61, i64* %11, align 8
  br label %119

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %16, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %14, align 8
  br label %119

72:                                               ; preds = %28
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MEMORY_OBJECT_PERF_INFO_COUNT, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %77, i64* %11, align 8
  br label %119

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %17, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %12, align 4
  br label %119

85:                                               ; preds = %28
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @OLD_MEMORY_OBJECT_ATTR_INFO_COUNT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %90, i64* %11, align 8
  br label %119

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %18, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %14, align 8
  br label %119

101:                                              ; preds = %28
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @MEMORY_OBJECT_ATTR_INFO_COUNT, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %106, i64* %11, align 8
  br label %119

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %19, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %14, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %12, align 4
  br label %119

117:                                              ; preds = %28
  %118 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %117, %107, %105, %91, %89, %78, %76, %62, %60, %46, %44
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @KERN_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %5, align 8
  br label %136

125:                                              ; preds = %119
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @MEMORY_OBJECT_COPY_TEMPORARY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i64, i64* @MEMORY_OBJECT_COPY_DELAY, align 8
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %129, %125
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i64, i64* %14, align 8
  %135 = call i64 @vm_object_set_attributes_common(%struct.TYPE_12__* %132, i32 %133, i64 %134)
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %131, %123, %26
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local %struct.TYPE_12__* @memory_object_control_to_vm_object(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_12__*) #1

declare dso_local i64 @vm_object_set_attributes_common(%struct.TYPE_12__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
