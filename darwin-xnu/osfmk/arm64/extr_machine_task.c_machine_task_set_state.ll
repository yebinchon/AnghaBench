; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_task.c_machine_task_set_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_task.c_machine_task_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ARM_LEGACY_DEBUG_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@ads_zone = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE32_COUNT = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE64_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_task_set_state(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %156 [
    i32 131, label %14
    i32 130, label %56
    i32 129, label %98
    i32 128, label %140
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = call i32 @task_has_64Bit_data(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ARM_LEGACY_DEBUG_STATE_COUNT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @debug_legacy_state_is_valid(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %20, %14
  %29 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %29, i32* %5, align 4
  br label %158

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32, i32* @ads_zone, align 4
  %37 = call i8* @zalloc(i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %46, i32* %5, align 4
  br label %158

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @copy_legacy_debug_state(i32* %49, i32* %52, i32 %53)
  %55 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %55, i32* %5, align 4
  br label %158

56:                                               ; preds = %4
  %57 = load i64, i64* %8, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %11, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = call i32 @task_has_64Bit_data(%struct.TYPE_4__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ARM_DEBUG_STATE32_COUNT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @debug_state_is_valid32(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66, %62, %56
  %71 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %71, i32* %5, align 4
  br label %158

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32, i32* @ads_zone, align 4
  %79 = call i8* @zalloc(i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %88, i32* %5, align 4
  br label %158

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @copy_debug_state32(i32* %91, i32* %94, i32 %95)
  %97 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %97, i32* %5, align 4
  br label %158

98:                                               ; preds = %4
  %99 = load i64, i64* %8, align 8
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %12, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = call i32 @task_has_64Bit_data(%struct.TYPE_4__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ARM_DEBUG_STATE64_COUNT, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @debug_state_is_valid64(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108, %104, %98
  %113 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %113, i32* %5, align 4
  br label %158

114:                                              ; preds = %108
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i32, i32* @ads_zone, align 4
  %121 = call i8* @zalloc(i32 %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %130, i32* %5, align 4
  br label %158

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %114
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @FALSE, align 4
  %138 = call i32 @copy_debug_state64(i32* %133, i32* %136, i32 %137)
  %139 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %139, i32* %5, align 4
  br label %158

140:                                              ; preds = %4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i32, i32* @ads_zone, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @zfree(i32 %146, i32* %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %153, i32* %5, align 4
  br label %158

154:                                              ; preds = %140
  %155 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %155, i32* %5, align 4
  br label %158

156:                                              ; preds = %4
  %157 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %154, %145, %132, %129, %112, %90, %87, %70, %48, %45, %28
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @task_has_64Bit_data(%struct.TYPE_4__*) #1

declare dso_local i32 @debug_legacy_state_is_valid(i32*) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @copy_legacy_debug_state(i32*, i32*, i32) #1

declare dso_local i32 @debug_state_is_valid32(i32*) #1

declare dso_local i32 @copy_debug_state32(i32*, i32*, i32) #1

declare dso_local i32 @debug_state_is_valid64(i32*) #1

declare dso_local i32 @copy_debug_state64(i32*, i32*, i32) #1

declare dso_local i32 @zfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
