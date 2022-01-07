; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_convert_port_entry_to_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_convert_port_entry_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@IKOT_NAMED_ENTRY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_MAP_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_port_entry_to_map(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call i64 @IP_VALID(%struct.TYPE_14__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %84

10:                                               ; preds = %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = call i64 @ip_kotype(%struct.TYPE_14__* %11)
  %13 = load i64, i64* @IKOT_NAMED_ENTRY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %84

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i64, i64* @TRUE, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %16
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = call i32 @ip_lock(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = call i64 @ip_active(%struct.TYPE_14__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %19
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = call i64 @ip_kotype(%struct.TYPE_14__* %26)
  %28 = load i64, i64* @IKOT_NAMED_ENTRY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %5, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = call i32 @lck_mtx_try_lock(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = call i32 @ip_unlock(%struct.TYPE_14__* %40)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mutex_pause(i32 %44)
  br label %16

46:                                               ; preds = %30
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = call i32 @lck_mtx_unlock(i32* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = call i32 @ip_unlock(%struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %46
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VM_PROT_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %60, %46
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = call i32 @mach_destroy_memory_entry(%struct.TYPE_14__* %73)
  %75 = load i32, i32* @VM_MAP_NULL, align 4
  store i32 %75, i32* %2, align 4
  br label %89

76:                                               ; preds = %67
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @vm_map_reference_swap(i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = call i32 @mach_destroy_memory_entry(%struct.TYPE_14__* %79)
  br label %83

81:                                               ; preds = %25, %19
  %82 = load i32, i32* @VM_MAP_NULL, align 4
  store i32 %82, i32* %2, align 4
  br label %89

83:                                               ; preds = %76, %16
  br label %87

84:                                               ; preds = %10, %1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = call i32 @convert_port_to_map(%struct.TYPE_14__* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %83
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %81, %72
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @IP_VALID(%struct.TYPE_14__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_14__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_14__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_14__*) #1

declare dso_local i32 @lck_mtx_try_lock(i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_pause(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @mach_destroy_memory_entry(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_map_reference_swap(i32) #1

declare dso_local i32 @convert_port_to_map(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
