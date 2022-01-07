; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_kobject.c_ipc_kobject_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_kobject.c_ipc_kobject_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@MIG_NO_REPLY = common dso_local global i32 0, align 4
@KERNEL_AUDIT_TOKEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERNEL_SECURITY_TOKEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kobject_notify(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  %13 = load i32, i32* @MIG_NO_REPLY, align 4
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = bitcast %struct.TYPE_25__* %14 to %struct.TYPE_22__*
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = ptrtoint %struct.TYPE_25__* %17 to i64
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = inttoptr i64 %22 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %6, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = call i64 @bcmp(i32* %25, i32* @KERNEL_AUDIT_TOKEN, i32 4)
  %27 = icmp ne i64 0, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %2
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = call i64 @bcmp(i32* %32, i32* @KERNEL_SECURITY_TOKEN, i32 4)
  %34 = icmp ne i64 0, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %30
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %94 [
    i32 131, label %41
    i32 130, label %93
    i32 129, label %93
    i32 128, label %93
    i32 132, label %93
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %43 = call i32 @ip_kotype(%struct.TYPE_26__* %42)
  switch i32 %43, label %92 [
    i32 135, label %44
    i32 134, label %48
    i32 139, label %52
    i32 138, label %56
    i32 140, label %60
    i32 136, label %71
    i32 144, label %84
    i32 133, label %88
  ]

44:                                               ; preds = %41
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = call i32 @ipc_voucher_notify(%struct.TYPE_25__* %45)
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %3, align 4
  br label %104

48:                                               ; preds = %41
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = call i32 @ipc_voucher_attr_control_notify(%struct.TYPE_25__* %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %41
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = call i32 @semaphore_notify(%struct.TYPE_25__* %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %104

56:                                               ; preds = %41
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = call i32 @task_port_notify(%struct.TYPE_25__* %57)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %104

60:                                               ; preds = %41
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %62 = call i32 @ip_lock(%struct.TYPE_26__* %61)
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %69 = call i32 @ipc_port_destroy(%struct.TYPE_26__* %68)
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %3, align 4
  br label %104

71:                                               ; preds = %41
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = bitcast %struct.TYPE_25__* %75 to %struct.TYPE_23__*
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @upl_no_senders(i32 %74, i32 %78)
  %80 = load i32, i32* @MACH_PORT_NULL, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %3, align 4
  br label %104

84:                                               ; preds = %41
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %86 = call i32 @fileport_notify(%struct.TYPE_25__* %85)
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %104

88:                                               ; preds = %41
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %90 = call i32 @work_interval_port_notify(%struct.TYPE_25__* %89)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %3, align 4
  br label %104

92:                                               ; preds = %41
  br label %96

93:                                               ; preds = %37, %37, %37, %37
  br label %96

94:                                               ; preds = %37
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %3, align 4
  br label %104

96:                                               ; preds = %93, %92
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %98 = call i32 @ip_kotype(%struct.TYPE_26__* %97)
  switch i32 %98, label %102 [
    i32 137, label %99
  ]

99:                                               ; preds = %96
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %101 = call i32 @task_suspension_notify(%struct.TYPE_25__* %100)
  store i32 %101, i32* %3, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %99, %94, %88, %84, %71, %60, %56, %52, %48, %44, %35, %28
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @ip_kotype(%struct.TYPE_26__*) #1

declare dso_local i32 @ipc_voucher_notify(%struct.TYPE_25__*) #1

declare dso_local i32 @ipc_voucher_attr_control_notify(%struct.TYPE_25__*) #1

declare dso_local i32 @semaphore_notify(%struct.TYPE_25__*) #1

declare dso_local i32 @task_port_notify(%struct.TYPE_25__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_26__*) #1

declare dso_local i32 @ipc_port_destroy(%struct.TYPE_26__*) #1

declare dso_local i32 @upl_no_senders(i32, i32) #1

declare dso_local i32 @fileport_notify(%struct.TYPE_25__*) #1

declare dso_local i32 @work_interval_port_notify(%struct.TYPE_25__*) #1

declare dso_local i32 @task_suspension_notify(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
