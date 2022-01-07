; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_handle_port_actions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_handle_port_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_COPY_SEND = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@spawn__port__failure = common dso_local global i32 0, align 4
@mach_port_name_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.image_params*, i32*, i32**)* @exec_handle_port_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exec_handle_port_actions(%struct.image_params* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.image_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.image_params* %0, %struct.image_params** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %14 = load %struct.image_params*, %struct.image_params** %4, align 8
  %15 = getelementptr inbounds %struct.image_params, %struct.image_params* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %17 = load %struct.image_params*, %struct.image_params** %4, align 8
  %18 = getelementptr inbounds %struct.image_params, %struct.image_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_threadtask(i32 %19)
  store i32 %20, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %125, %3
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %128

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @MACH_PORT_VALID(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = call i32 (...) @current_task()
  %43 = call i32 @get_task_ipcspace(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MACH_MSG_TYPE_COPY_SEND, align 4
  %48 = bitcast i32** %10 to i32*
  %49 = call i64 @ipc_object_copyin(i32 %43, i32 %46, i32 %47, i32* %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @KERN_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i64, i64* @EINVAL, align 8
  store i64 %54, i64* %11, align 8
  br label %129

55:                                               ; preds = %41
  br label %61

56:                                               ; preds = %29
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @CAST_MACH_NAME_TO_PORT(i32 %59)
  store i32* %60, i32** %10, align 8
  br label %61

61:                                               ; preds = %56, %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %116 [
    i32 128, label %65
    i32 130, label %78
    i32 129, label %97
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i64 @task_set_special_port(i32 %66, i32 %69, i32* %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @KERN_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* @EINVAL, align 8
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %75, %65
  br label %118

78:                                               ; preds = %61
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @task_set_exception_ports(i32 %79, i32 %82, i32* %83, i32 %86, i32 %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @KERN_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i64, i64* @EINVAL, align 8
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %94, %78
  br label %118

97:                                               ; preds = %61
  %98 = load i32**, i32*** %6, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @IPC_PORT_VALID(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load i32**, i32*** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %107, i32** %111, align 8
  br label %115

112:                                              ; preds = %100, %97
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @ipc_port_release_send(i32* %113)
  br label %115

115:                                              ; preds = %112, %104
  br label %118

116:                                              ; preds = %61
  %117 = load i64, i64* @EINVAL, align 8
  store i64 %117, i64* %11, align 8
  br label %118

118:                                              ; preds = %116, %115, %96, %77
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @ipc_port_release_send(i32* %122)
  br label %128

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %23

128:                                              ; preds = %121, %23
  br label %129

129:                                              ; preds = %128, %53
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 0, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* @spawn__port__failure, align 4
  %134 = load i32, i32* @mach_port_name_t, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @DTRACE_PROC1(i32 %133, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %132, %129
  %140 = load i64, i64* %11, align 8
  ret i64 %140
}

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i64 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_object_copyin(i32, i32, i32, i32*) #1

declare dso_local i32 @get_task_ipcspace(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32* @CAST_MACH_NAME_TO_PORT(i32) #1

declare dso_local i64 @task_set_special_port(i32, i32, i32*) #1

declare dso_local i64 @task_set_exception_ports(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @IPC_PORT_VALID(i32*) #1

declare dso_local i32 @ipc_port_release_send(i32*) #1

declare dso_local i32 @DTRACE_PROC1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
