; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_sync.c_convert_semaphore_to_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_sync.c_convert_semaphore_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_25__* }

@SEMAPHORE_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@IKOT_SEMAPHORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @convert_semaphore_to_port(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SEMAPHORE_NULL, align 8
  %9 = icmp eq %struct.TYPE_24__* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %2, align 8
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %4, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = call i32 @IP_VALID(%struct.TYPE_25__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %12
  %20 = call %struct.TYPE_25__* (...) @ipc_port_alloc_kernel()
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %4, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = call i32 @IP_VALID(%struct.TYPE_25__* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = ptrtoint %struct.TYPE_24__* %25 to i64
  %27 = load i64, i64* @IKOT_SEMAPHORE, align 8
  %28 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_25__* %24, i64 %26, i64 %27)
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = call i32 @OSCompareAndSwapPtr(%struct.TYPE_25__* %29, %struct.TYPE_25__* %30, %struct.TYPE_25__** %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %19
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_25__* %36)
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  store %struct.TYPE_25__* %40, %struct.TYPE_25__** %4, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %42 = call i64 @ip_kotype(%struct.TYPE_25__* %41)
  %43 = load i64, i64* @IKOT_SEMAPHORE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = ptrtoint %struct.TYPE_24__* %50 to i64
  %52 = icmp eq i64 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %35, %19
  br label %56

56:                                               ; preds = %55, %12
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = call i32 @ip_lock(%struct.TYPE_25__* %57)
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = call i32 @ip_active(%struct.TYPE_25__* %59)
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = call %struct.TYPE_25__* @ipc_port_make_send_locked(%struct.TYPE_25__* %62)
  store %struct.TYPE_25__* %63, %struct.TYPE_25__** %5, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 1, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %56
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  %73 = icmp eq %struct.TYPE_25__* %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = call i32 @ipc_port_make_sonce_locked(%struct.TYPE_25__* %80)
  %82 = call i32 @ipc_port_nsrequest(%struct.TYPE_25__* %76, i32 %79, i32 %81, %struct.TYPE_25__** %6)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = icmp eq %struct.TYPE_25__* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %93

88:                                               ; preds = %56
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %90 = call i32 @ip_unlock(%struct.TYPE_25__* %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %92 = call i32 @semaphore_dereference(%struct.TYPE_24__* %91)
  br label %93

93:                                               ; preds = %88, %68
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %94, %struct.TYPE_25__** %2, align 8
  br label %95

95:                                               ; preds = %93, %10
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  ret %struct.TYPE_25__* %96
}

declare dso_local i32 @IP_VALID(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @OSCompareAndSwapPtr(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__**) #1

declare dso_local i32 @ipc_port_dealloc_kernel(%struct.TYPE_25__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_25__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_25__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @ipc_port_make_send_locked(%struct.TYPE_25__*) #1

declare dso_local i32 @ipc_port_nsrequest(%struct.TYPE_25__*, i32, i32, %struct.TYPE_25__**) #1

declare dso_local i32 @ipc_port_make_sonce_locked(%struct.TYPE_25__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_25__*) #1

declare dso_local i32 @semaphore_dereference(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
