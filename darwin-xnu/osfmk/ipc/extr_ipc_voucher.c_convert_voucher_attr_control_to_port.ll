; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_convert_voucher_attr_control_to_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_convert_voucher_attr_control_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_25__* }

@IVAC_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@IKOT_VOUCHER_ATTR_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @convert_voucher_attr_control_to_port(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IVAC_NULL, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %9 = icmp eq %struct.TYPE_24__* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %2, align 8
  br label %101

12:                                               ; preds = %1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %4, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = call i32 @IP_VALID(%struct.TYPE_25__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %12
  %20 = call %struct.TYPE_25__* (...) @ipc_port_alloc_kernel()
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %4, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = call i32 @IP_VALID(%struct.TYPE_25__* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = call i64 @OSCompareAndSwapPtr(%struct.TYPE_25__* %24, %struct.TYPE_25__* %25, %struct.TYPE_25__** %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = call i32 @ip_lock(%struct.TYPE_25__* %31)
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %35 = ptrtoint %struct.TYPE_24__* %34 to i64
  %36 = load i64, i64* @IKOT_VOUCHER_ATTR_CONTROL, align 8
  %37 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_25__* %33, i64 %35, i64 %36)
  br label %60

38:                                               ; preds = %19
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_25__* %39)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %4, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = call i32 @ip_lock(%struct.TYPE_25__* %44)
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = call i64 @ip_kotype(%struct.TYPE_25__* %46)
  %48 = load i64, i64* @IKOT_VOUCHER_ATTR_CONTROL, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = ptrtoint %struct.TYPE_24__* %55 to i64
  %57 = icmp eq i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %38, %30
  br label %64

61:                                               ; preds = %12
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = call i32 @ip_lock(%struct.TYPE_25__* %62)
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = call i32 @ip_active(%struct.TYPE_25__* %65)
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %69 = call %struct.TYPE_25__* @ipc_port_make_send_locked(%struct.TYPE_25__* %68)
  store %struct.TYPE_25__* %69, %struct.TYPE_25__** %5, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 1, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %64
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %77, align 8
  %79 = icmp eq %struct.TYPE_25__* %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = call i32 @ipc_port_make_sonce_locked(%struct.TYPE_25__* %86)
  %88 = call i32 @ipc_port_nsrequest(%struct.TYPE_25__* %82, i32 %85, i32 %87, %struct.TYPE_25__** %6)
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = icmp eq %struct.TYPE_25__* %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %99

94:                                               ; preds = %64
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = call i32 @ip_unlock(%struct.TYPE_25__* %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = call i32 @ivac_release(%struct.TYPE_24__* %97)
  br label %99

99:                                               ; preds = %94, %74
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %2, align 8
  br label %101

101:                                              ; preds = %99, %10
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  ret %struct.TYPE_25__* %102
}

declare dso_local i32 @IP_VALID(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @OSCompareAndSwapPtr(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__**) #1

declare dso_local i32 @ip_lock(%struct.TYPE_25__*) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @ipc_port_dealloc_kernel(%struct.TYPE_25__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_25__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @ipc_port_make_send_locked(%struct.TYPE_25__*) #1

declare dso_local i32 @ipc_port_nsrequest(%struct.TYPE_25__*, i32, i32, %struct.TYPE_25__**) #1

declare dso_local i32 @ipc_port_make_sonce_locked(%struct.TYPE_25__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_25__*) #1

declare dso_local i32 @ivac_release(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
