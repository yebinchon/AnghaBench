; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_task_for_pid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_task_for_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.task_for_pid_args = type { i32, i32, %struct.TYPE_11__* }

@PROC_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@TASK_NULL = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global i8* null, align 8
@AUE_TASKFORPID = common dso_local global i32 0, align 4
@mach_port1 = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@IPC_PORT_NULL = common dso_local global i64 0, align 8
@IPC_PORT_DEAD = common dso_local global i64 0, align 8
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPTED = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i32 0, align 4
@mach_port2 = common dso_local global i32 0, align 4
@process = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_for_pid(%struct.task_for_pid_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_for_pid_args*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.task_for_pid_args* %0, %struct.task_for_pid_args** %3, align 8
  %14 = load %struct.task_for_pid_args*, %struct.task_for_pid_args** %3, align 8
  %15 = getelementptr inbounds %struct.task_for_pid_args, %struct.task_for_pid_args* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.task_for_pid_args*, %struct.task_for_pid_args** %3, align 8
  %18 = getelementptr inbounds %struct.task_for_pid_args, %struct.task_for_pid_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.task_for_pid_args*, %struct.task_for_pid_args** %3, align 8
  %21 = getelementptr inbounds %struct.task_for_pid_args, %struct.task_for_pid_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PROC_NULL, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %7, align 8
  %24 = load i64, i64* @TASK_NULL, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @TASK_NULL, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i8*, i8** @MACH_PORT_NULL, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  %28 = load i8*, i8** @MACH_PORT_NULL, align 8
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* @AUE_TASKFORPID, align 4
  %31 = call i32 @AUDIT_MACH_SYSCALL_ENTER(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, ...) @AUDIT_ARG(i32 %32, i32 %33)
  %35 = load i32, i32* @mach_port1, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = call i32 (i32, ...) @AUDIT_ARG(i32 %35, %struct.TYPE_11__* %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = bitcast i64* %8 to i8*
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @copyout(i8* %41, i32 %42, i32 8)
  %44 = load i32, i32* @KERN_FAILURE, align 4
  %45 = call i32 @AUDIT_MACH_SYSCALL_EXIT(i32 %44)
  %46 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %46, i32* %2, align 4
  br label %186

47:                                               ; preds = %1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i64 @port_name_to_task(%struct.TYPE_11__* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @TASK_NULL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = bitcast i64* %8 to i8*
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @copyout(i8* %54, i32 %55, i32 8)
  %57 = load i32, i32* @KERN_FAILURE, align 4
  %58 = call i32 @AUDIT_MACH_SYSCALL_EXIT(i32 %57)
  %59 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %59, i32* %2, align 4
  br label %186

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.TYPE_11__* @proc_find(i32 %61)
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PROC_NULL, align 8
  %65 = icmp eq %struct.TYPE_11__* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %67, i32* %13, align 4
  br label %153

68:                                               ; preds = %60
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = call i32 @task_for_pid_posix_check(%struct.TYPE_11__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %73, i32* %13, align 4
  br label %153

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TASK_NULL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %81, i32* %13, align 4
  br label %153

82:                                               ; preds = %74
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @task_reference(i64 %86)
  %88 = call i32 (...) @kauth_cred_get()
  %89 = call i32 @kauth_cred_issuser(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %131, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = call %struct.TYPE_11__* (...) @current_proc()
  %94 = icmp ne %struct.TYPE_11__* %92, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @task_get_task_access_port(i64 %96, i64* %11)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @IPC_PORT_NULL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @IPC_PORT_DEAD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %108, i32* %13, align 4
  br label %153

109:                                              ; preds = %103
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = call i32 @proc_rele(%struct.TYPE_11__* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PROC_NULL, align 8
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %7, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 (...) @proc_selfpid()
  %115 = call i32 (...) @kauth_getgid()
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @__KERNEL_WAITING_ON_TASKGATED_CHECK_ACCESS_UPCALL__(i64 %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %109
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @MACH_RCV_INTERRUPTED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %126, i32* %13, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %127, %125
  br label %153

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130, %99, %95, %91, %82
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @extmod_statistics_incr_task_for_pid(i64 %132)
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @convert_task_to_port(i64 %134)
  %136 = inttoptr i64 %135 to i8*
  store i8* %136, i8** %12, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i64 @is_corpsetask(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load i64, i64* @TASK_NULL, align 8
  store i64 %141, i64* %9, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = call i32 @ipc_port_release_send(i64 %143)
  %145 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %145, i32* %13, align 4
  br label %153

146:                                              ; preds = %131
  %147 = load i64, i64* @TASK_NULL, align 8
  store i64 %147, i64* %9, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 (...) @current_task()
  %150 = call i32 @get_task_ipcspace(i32 %149)
  %151 = call %struct.TYPE_11__* @ipc_port_copyout_send(i8* %148, i32 %150)
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %10, align 8
  %152 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %146, %140, %129, %107, %80, %72, %66
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @task_deallocate(i64 %154)
  %156 = load i32, i32* @mach_port2, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %158 = call i32 (i32, ...) @AUDIT_ARG(i32 %156, %struct.TYPE_11__* %157)
  %159 = bitcast %struct.TYPE_11__** %10 to i8*
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @copyout(i8* %159, i32 %160, i32 8)
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* @IPC_PORT_NULL, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @ipc_port_release_send(i64 %166)
  br label %168

168:                                              ; preds = %165, %153
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* @TASK_NULL, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @task_deallocate(i64 %173)
  br label %175

175:                                              ; preds = %172, %168
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PROC_NULL, align 8
  %178 = icmp ne %struct.TYPE_11__* %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %181 = call i32 @proc_rele(%struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @AUDIT_MACH_SYSCALL_EXIT(i32 %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %53, %40
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @AUDIT_MACH_SYSCALL_ENTER(i32) #1

declare dso_local i32 @AUDIT_ARG(i32, ...) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @AUDIT_MACH_SYSCALL_EXIT(i32) #1

declare dso_local i64 @port_name_to_task(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @proc_find(i32) #1

declare dso_local i32 @task_for_pid_posix_check(%struct.TYPE_11__*) #1

declare dso_local i32 @task_reference(i64) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local %struct.TYPE_11__* @current_proc(...) #1

declare dso_local i64 @task_get_task_access_port(i64, i64*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_11__*) #1

declare dso_local i32 @__KERNEL_WAITING_ON_TASKGATED_CHECK_ACCESS_UPCALL__(i64, i32, i32, i32) #1

declare dso_local i32 @proc_selfpid(...) #1

declare dso_local i32 @kauth_getgid(...) #1

declare dso_local i32 @extmod_statistics_incr_task_for_pid(i64) #1

declare dso_local i64 @convert_task_to_port(i64) #1

declare dso_local i64 @is_corpsetask(i64) #1

declare dso_local i32 @ipc_port_release_send(i64) #1

declare dso_local %struct.TYPE_11__* @ipc_port_copyout_send(i8*, i32) #1

declare dso_local i32 @get_task_ipcspace(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @task_deallocate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
