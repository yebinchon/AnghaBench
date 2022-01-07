; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivac_dealloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivac_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_18__*, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@IVAM_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@iv_global_table = common dso_local global %struct.TYPE_19__* null, align 8
@IVAC_NULL = common dso_local global %struct.TYPE_16__* null, align 8
@MACH_VOUCHER_ATTR_KEY_NONE = common dso_local global i32 0, align 4
@ipc_voucher_attr_control_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivac_dealloc(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IVAM_NULL, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = call i32 (...) @ivgt_lock()
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = call i64 @os_ref_get_count(i32* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @ivgt_unlock()
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** @iv_global_table, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = icmp eq %struct.TYPE_16__* %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %21
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** @iv_global_table, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %3, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IVAM_NULL, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** @iv_global_table, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IVAC_NULL, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** @iv_global_table, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %44, align 8
  %45 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NONE, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** @iv_global_table, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  br label %50

50:                                               ; preds = %29, %21
  %51 = call i32 (...) @ivgt_unlock()
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IVAM_NULL, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = icmp ne %struct.TYPE_15__* %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = call i32 %58(%struct.TYPE_15__* %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = call i64 @IP_VALID(%struct.TYPE_17__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = call i32 @ip_active(%struct.TYPE_17__* %66)
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_17__* %75)
  br label %77

77:                                               ; preds = %65, %61
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @kfree(%struct.TYPE_18__* %80, i32 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = call i32 @ivac_lock_destroy(%struct.TYPE_16__* %87)
  %89 = load i32, i32* @ipc_voucher_attr_control_zone, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = call i32 @zfree(i32 %89, %struct.TYPE_16__* %90)
  br label %92

92:                                               ; preds = %77, %19
  ret void
}

declare dso_local i32 @ivgt_lock(...) #1

declare dso_local i64 @os_ref_get_count(i32*) #1

declare dso_local i32 @ivgt_unlock(...) #1

declare dso_local i64 @IP_VALID(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_active(%struct.TYPE_17__*) #1

declare dso_local i32 @ipc_port_dealloc_kernel(%struct.TYPE_17__*) #1

declare dso_local i32 @kfree(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ivac_lock_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
