; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_add_child_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_add_child_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.config_entry_list*, %struct.config_entry_list* }
%struct.config_entry_list = type { i32, %struct.config_entry_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @add_child_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_child_list(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.config_entry_list*, align 8
  %6 = alloca %struct.config_entry_list*, align 8
  %7 = alloca %struct.config_entry_list*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  store %struct.config_entry_list* %10, %struct.config_entry_list** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.config_entry_list*, %struct.config_entry_list** %12, align 8
  %14 = icmp ne %struct.config_entry_list* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.config_entry_list*, %struct.config_entry_list** %17, align 8
  store %struct.config_entry_list* %18, %struct.config_entry_list** %6, align 8
  br label %19

19:                                               ; preds = %24, %15
  %20 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %21 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %20, i32 0, i32 1
  %22 = load %struct.config_entry_list*, %struct.config_entry_list** %21, align 8
  %23 = icmp ne %struct.config_entry_list* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %26 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %25, i32 0, i32 1
  %27 = load %struct.config_entry_list*, %struct.config_entry_list** %26, align 8
  store %struct.config_entry_list* %27, %struct.config_entry_list** %6, align 8
  br label %19

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %32, %28
  %30 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %31 = icmp ne %struct.config_entry_list* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %34 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %36 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %35, i32 0, i32 1
  %37 = load %struct.config_entry_list*, %struct.config_entry_list** %36, align 8
  store %struct.config_entry_list* %37, %struct.config_entry_list** %5, align 8
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.config_entry_list*, %struct.config_entry_list** %40, align 8
  %42 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %43 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %42, i32 0, i32 1
  store %struct.config_entry_list* %41, %struct.config_entry_list** %43, align 8
  br label %60

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %48, %44
  %46 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %47 = icmp ne %struct.config_entry_list* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %50 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %52 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %51, i32 0, i32 1
  %53 = load %struct.config_entry_list*, %struct.config_entry_list** %52, align 8
  store %struct.config_entry_list* %53, %struct.config_entry_list** %5, align 8
  br label %45

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.config_entry_list*, %struct.config_entry_list** %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store %struct.config_entry_list* %57, %struct.config_entry_list** %59, align 8
  br label %60

60:                                               ; preds = %54, %38
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store %struct.config_entry_list* null, %struct.config_entry_list** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.config_entry_list*, %struct.config_entry_list** %64, align 8
  %66 = icmp ne %struct.config_entry_list* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.config_entry_list*, %struct.config_entry_list** %69, align 8
  store %struct.config_entry_list* %70, %struct.config_entry_list** %7, align 8
  br label %71

71:                                               ; preds = %76, %67
  %72 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %73 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %72, i32 0, i32 1
  %74 = load %struct.config_entry_list*, %struct.config_entry_list** %73, align 8
  %75 = icmp ne %struct.config_entry_list* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %78 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %77, i32 0, i32 1
  %79 = load %struct.config_entry_list*, %struct.config_entry_list** %78, align 8
  store %struct.config_entry_list* %79, %struct.config_entry_list** %7, align 8
  br label %71

80:                                               ; preds = %71
  %81 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store %struct.config_entry_list* %81, %struct.config_entry_list** %83, align 8
  br label %87

84:                                               ; preds = %60
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store %struct.config_entry_list* null, %struct.config_entry_list** %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
