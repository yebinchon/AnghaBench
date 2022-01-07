; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_task_name_for_pid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_task_name_for_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.task_name_for_pid_args = type { i32, i32, %struct.TYPE_12__* }

@PROC_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@AUE_TASKNAMEFORPID = common dso_local global i32 0, align 4
@mach_port1 = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@process = common dso_local global i32 0, align 4
@SZOMB = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@mach_port2 = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_name_for_pid(%struct.task_name_for_pid_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_name_for_pid_args*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.task_name_for_pid_args* %0, %struct.task_name_for_pid_args** %3, align 8
  %14 = load %struct.task_name_for_pid_args*, %struct.task_name_for_pid_args** %3, align 8
  %15 = getelementptr inbounds %struct.task_name_for_pid_args, %struct.task_name_for_pid_args* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.task_name_for_pid_args*, %struct.task_name_for_pid_args** %3, align 8
  %18 = getelementptr inbounds %struct.task_name_for_pid_args, %struct.task_name_for_pid_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.task_name_for_pid_args*, %struct.task_name_for_pid_args** %3, align 8
  %21 = getelementptr inbounds %struct.task_name_for_pid_args, %struct.task_name_for_pid_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PROC_NULL, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @AUE_TASKNAMEFORPID, align 4
  %25 = call i32 @AUDIT_MACH_SYSCALL_ENTER(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, ...) @AUDIT_ARG(i32 %26, i32 %27)
  %29 = load i32, i32* @mach_port1, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32 (i32, ...) @AUDIT_ARG(i32 %29, %struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = call i64 @port_name_to_task(%struct.TYPE_12__* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @TASK_NULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = bitcast i64* %8 to i8*
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @copyout(i8* %38, i32 %39, i32 8)
  %41 = load i32, i32* @KERN_FAILURE, align 4
  %42 = call i32 @AUDIT_MACH_SYSCALL_EXIT(i32 %41)
  %43 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %43, i32* %2, align 4
  br label %137

44:                                               ; preds = %1
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.TYPE_12__* @proc_find(i32 %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %7, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PROC_NULL, align 8
  %49 = icmp ne %struct.TYPE_12__* %47, %48
  br i1 %49, label %50, label %113

50:                                               ; preds = %44
  %51 = load i32, i32* @process, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = call i32 (i32, ...) @AUDIT_ARG(i32 %51, %struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = call i32 @kauth_cred_proc_ref(%struct.TYPE_12__* %54)
  store i32 %55, i32* %13, align 4
  store i32 1, i32* %12, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SZOMB, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %50
  %62 = call %struct.TYPE_12__* (...) @current_proc()
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = icmp eq %struct.TYPE_12__* %62, %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = call i32 (...) @kauth_cred_get()
  %67 = call i64 @kauth_cred_issuser(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @kauth_cred_getuid(i32 %70)
  %72 = call i32 (...) @kauth_cred_get()
  %73 = call i64 @kauth_cred_getuid(i32 %72)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @kauth_cred_getruid(i32 %76)
  %78 = call i64 (...) @kauth_getruid()
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %75, %65, %61
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TASK_NULL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @task_reference(i64 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @convert_task_name_to_port(i64 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 (...) @current_task()
  %98 = call i32 @get_task_ipcspace(i32 %97)
  %99 = call %struct.TYPE_12__* @ipc_port_copyout_send(i8* %96, i32 %98)
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %9, align 8
  br label %102

100:                                              ; preds = %80
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MACH_PORT_NULL, align 8
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %9, align 8
  br label %102

102:                                              ; preds = %100, %86
  %103 = load i32, i32* @mach_port2, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = call i32 (i32, ...) @AUDIT_ARG(i32 %103, %struct.TYPE_12__* %104)
  %106 = bitcast %struct.TYPE_12__** %9 to i8*
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @copyout(i8* %106, i32 %107, i32 8)
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @task_deallocate(i64 %109)
  %111 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %111, i32* %11, align 4
  br label %121

112:                                              ; preds = %75, %69, %50
  br label %113

113:                                              ; preds = %112, %44
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @task_deallocate(i64 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MACH_PORT_NULL, align 8
  store %struct.TYPE_12__* %116, %struct.TYPE_12__** %9, align 8
  %117 = bitcast %struct.TYPE_12__** %9 to i8*
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @copyout(i8* %117, i32 %118, i32 8)
  %120 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %113, %102
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @kauth_cred_unref(i32* %13)
  br label %126

126:                                              ; preds = %124, %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PROC_NULL, align 8
  %129 = icmp ne %struct.TYPE_12__* %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = call i32 @proc_rele(%struct.TYPE_12__* %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @AUDIT_MACH_SYSCALL_EXIT(i32 %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %37
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @AUDIT_MACH_SYSCALL_ENTER(i32) #1

declare dso_local i32 @AUDIT_ARG(i32, ...) #1

declare dso_local i64 @port_name_to_task(%struct.TYPE_12__*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @AUDIT_MACH_SYSCALL_EXIT(i32) #1

declare dso_local %struct.TYPE_12__* @proc_find(i32) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @current_proc(...) #1

declare dso_local i64 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_getruid(...) #1

declare dso_local i32 @task_reference(i64) #1

declare dso_local i64 @convert_task_name_to_port(i64) #1

declare dso_local %struct.TYPE_12__* @ipc_port_copyout_send(i8*, i32) #1

declare dso_local i32 @get_task_ipcspace(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @task_deallocate(i64) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
