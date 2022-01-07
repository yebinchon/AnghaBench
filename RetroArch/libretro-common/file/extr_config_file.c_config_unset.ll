; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_config_unset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_config_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.config_entry_list* }
%struct.config_entry_list = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_unset(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_entry_list*, align 8
  %6 = alloca %struct.config_entry_list*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  store %struct.config_entry_list* %9, %struct.config_entry_list** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.config_entry_list* @config_get_entry(%struct.TYPE_4__* %10, i8* %11, %struct.config_entry_list** %5)
  store %struct.config_entry_list* %12, %struct.config_entry_list** %6, align 8
  %13 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %14 = icmp ne %struct.config_entry_list* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %18 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %20 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %22 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free(i32* %23)
  %25 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %26 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @free(i32* %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.config_entry_list* @config_get_entry(%struct.TYPE_4__*, i8*, %struct.config_entry_list**) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
