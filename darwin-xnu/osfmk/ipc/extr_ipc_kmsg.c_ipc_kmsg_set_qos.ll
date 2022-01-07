; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_set_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_set_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_SEND_PROPAGATE_QOS = common dso_local global i32 0, align 4
@MACH_MSG_PRIORITY_UNSPECIFIED = common dso_local global i64 0, align 8
@MACH_SEND_OVERRIDE = common dso_local global i32 0, align 4
@MACH_SEND_SYNC_OVERRIDE = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i64)* @ipc_kmsg_set_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipc_kmsg_set_qos(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i64 @ipc_get_pthpriority_from_kmsg_voucher(%struct.TYPE_6__* %21, i64* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MACH_SEND_PROPAGATE_QOS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i64 (...) @ipc_get_current_thread_priority()
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load i64, i64* @MACH_MSG_PRIORITY_UNSPECIFIED, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MACH_SEND_OVERRIDE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %42
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @_pthread_priority_normalize_for_ipc(i64 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MACH_SEND_SYNC_OVERRIDE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @IP_VALID(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @MACH_MSGH_BITS_LOCAL(i32 %80)
  %82 = load i64, i64* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ipc_port_link_special_reply_port(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %75, %71
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

declare dso_local i64 @ipc_get_pthpriority_from_kmsg_voucher(%struct.TYPE_6__*, i64*) #1

declare dso_local i64 @ipc_get_current_thread_priority(...) #1

declare dso_local i64 @_pthread_priority_normalize_for_ipc(i64) #1

declare dso_local i64 @IP_VALID(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i32 @ipc_port_link_special_reply_port(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
