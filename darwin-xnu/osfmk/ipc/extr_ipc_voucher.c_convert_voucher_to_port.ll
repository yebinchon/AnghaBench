; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_convert_voucher_to_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_convert_voucher_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_25__* }

@IV_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@IKOT_VOUCHER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @convert_voucher_to_port(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IV_NULL, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %9 = icmp eq %struct.TYPE_24__* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %2, align 8
  br label %101

12:                                               ; preds = %1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = call i64 @os_ref_get_count(i32* %14)
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %4, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = call i32 @IP_VALID(%struct.TYPE_25__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %12
  %26 = call %struct.TYPE_25__* (...) @ipc_port_alloc_kernel()
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %4, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = call i32 @IP_VALID(%struct.TYPE_25__* %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = ptrtoint %struct.TYPE_24__* %31 to i64
  %33 = load i64, i64* @IKOT_VOUCHER, align 8
  %34 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_25__* %30, i64 %32, i64 %33)
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** @IP_NULL, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = call i32 @OSCompareAndSwapPtr(%struct.TYPE_25__* %35, %struct.TYPE_25__* %36, %struct.TYPE_25__** %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %25
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_25__* %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %4, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = call i64 @ip_kotype(%struct.TYPE_25__* %47)
  %49 = load i64, i64* @IKOT_VOUCHER, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %57 = ptrtoint %struct.TYPE_24__* %56 to i64
  %58 = icmp eq i64 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %41, %25
  br label %62

62:                                               ; preds = %61, %12
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = call i32 @ip_lock(%struct.TYPE_25__* %63)
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

74:                                               ; preds = %62
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

94:                                               ; preds = %62
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = call i32 @ip_unlock(%struct.TYPE_25__* %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = call i32 @ipc_voucher_release(%struct.TYPE_24__* %97)
  br label %99

99:                                               ; preds = %94, %74
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %2, align 8
  br label %101

101:                                              ; preds = %99, %10
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  ret %struct.TYPE_25__* %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @os_ref_get_count(i32*) #1

declare dso_local i32 @IP_VALID(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @ipc_port_alloc_kernel(...) #1

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

declare dso_local i32 @ipc_voucher_release(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
