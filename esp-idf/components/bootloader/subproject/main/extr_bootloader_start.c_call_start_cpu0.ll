; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader/subproject/main/extr_bootloader_start.c_call_start_cpu0.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader/subproject/main/extr_bootloader_start.c_call_start_cpu0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_OK = common dso_local global i64 0, align 8
@INVALID_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @call_start_cpu0() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @bootloader_init()
  %4 = load i64, i64* @ESP_OK, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @bootloader_reset()
  br label %8

8:                                                ; preds = %6, %0
  %9 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = call i32 @select_partition_number(%struct.TYPE_4__* %1)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @INVALID_INDEX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @bootloader_reset()
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @bootloader_utility_load_boot_image(%struct.TYPE_4__* %1, i32 %17)
  unreachable
}

declare dso_local i64 @bootloader_init(...) #1

declare dso_local i32 @bootloader_reset(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @select_partition_number(%struct.TYPE_4__*) #1

declare dso_local i32 @bootloader_utility_load_boot_image(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
