; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_get_entry_list_head.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_get_entry_list_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.config_entry_list* }
%struct.config_entry_list = type { i32, i32, i32 }
%struct.config_file_entry = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_get_entry_list_head(%struct.TYPE_3__* %0, %struct.config_file_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.config_file_entry*, align 8
  %6 = alloca %struct.config_entry_list*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.config_file_entry* %1, %struct.config_file_entry** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  store %struct.config_entry_list* %9, %struct.config_entry_list** %6, align 8
  %10 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %11 = icmp ne %struct.config_entry_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %15 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.config_file_entry*, %struct.config_file_entry** %5, align 8
  %18 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %20 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.config_file_entry*, %struct.config_file_entry** %5, align 8
  %23 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %25 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.config_file_entry*, %struct.config_file_entry** %5, align 8
  %28 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
