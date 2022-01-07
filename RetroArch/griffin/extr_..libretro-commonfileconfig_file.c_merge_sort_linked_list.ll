; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_merge_sort_linked_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_merge_sort_linked_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_entry_list = type { %struct.config_entry_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_entry_list* (%struct.config_entry_list*, i32 (%struct.config_entry_list*, %struct.config_entry_list*)*)* @merge_sort_linked_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_entry_list* @merge_sort_linked_list(%struct.config_entry_list* %0, i32 (%struct.config_entry_list*, %struct.config_entry_list*)* %1) #0 {
  %3 = alloca %struct.config_entry_list*, align 8
  %4 = alloca %struct.config_entry_list*, align 8
  %5 = alloca i32 (%struct.config_entry_list*, %struct.config_entry_list*)*, align 8
  %6 = alloca %struct.config_entry_list*, align 8
  %7 = alloca %struct.config_entry_list*, align 8
  %8 = alloca %struct.config_entry_list*, align 8
  %9 = alloca %struct.config_entry_list*, align 8
  %10 = alloca %struct.config_entry_list*, align 8
  %11 = alloca %struct.config_entry_list*, align 8
  store %struct.config_entry_list* %0, %struct.config_entry_list** %4, align 8
  store i32 (%struct.config_entry_list*, %struct.config_entry_list*)* %1, i32 (%struct.config_entry_list*, %struct.config_entry_list*)** %5, align 8
  %12 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %12, %struct.config_entry_list** %6, align 8
  %13 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %13, %struct.config_entry_list** %7, align 8
  %14 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %14, %struct.config_entry_list** %8, align 8
  store %struct.config_entry_list* null, %struct.config_entry_list** %9, align 8
  store %struct.config_entry_list* null, %struct.config_entry_list** %10, align 8
  store %struct.config_entry_list* null, %struct.config_entry_list** %11, align 8
  %15 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %16 = icmp ne %struct.config_entry_list* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %19 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %18, i32 0, i32 0
  %20 = load %struct.config_entry_list*, %struct.config_entry_list** %19, align 8
  %21 = icmp ne %struct.config_entry_list* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %23, %struct.config_entry_list** %3, align 8
  br label %109

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %35, %24
  %26 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %27 = icmp ne %struct.config_entry_list* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %30 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %29, i32 0, i32 0
  %31 = load %struct.config_entry_list*, %struct.config_entry_list** %30, align 8
  %32 = icmp ne %struct.config_entry_list* %31, null
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  store %struct.config_entry_list* %36, %struct.config_entry_list** %8, align 8
  %37 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %38 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %37, i32 0, i32 0
  %39 = load %struct.config_entry_list*, %struct.config_entry_list** %38, align 8
  store %struct.config_entry_list* %39, %struct.config_entry_list** %6, align 8
  %40 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %41 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %40, i32 0, i32 0
  %42 = load %struct.config_entry_list*, %struct.config_entry_list** %41, align 8
  %43 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %42, i32 0, i32 0
  %44 = load %struct.config_entry_list*, %struct.config_entry_list** %43, align 8
  store %struct.config_entry_list* %44, %struct.config_entry_list** %7, align 8
  br label %25

45:                                               ; preds = %33
  %46 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %47 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %46, i32 0, i32 0
  store %struct.config_entry_list* null, %struct.config_entry_list** %47, align 8
  %48 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %49 = load i32 (%struct.config_entry_list*, %struct.config_entry_list*)*, i32 (%struct.config_entry_list*, %struct.config_entry_list*)** %5, align 8
  %50 = call %struct.config_entry_list* @merge_sort_linked_list(%struct.config_entry_list* %48, i32 (%struct.config_entry_list*, %struct.config_entry_list*)* %49)
  store %struct.config_entry_list* %50, %struct.config_entry_list** %4, align 8
  %51 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %52 = load i32 (%struct.config_entry_list*, %struct.config_entry_list*)*, i32 (%struct.config_entry_list*, %struct.config_entry_list*)** %5, align 8
  %53 = call %struct.config_entry_list* @merge_sort_linked_list(%struct.config_entry_list* %51, i32 (%struct.config_entry_list*, %struct.config_entry_list*)* %52)
  store %struct.config_entry_list* %53, %struct.config_entry_list** %6, align 8
  br label %54

54:                                               ; preds = %105, %45
  %55 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %56 = icmp ne %struct.config_entry_list* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %59 = icmp ne %struct.config_entry_list* %58, null
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ true, %54 ], [ %59, %57 ]
  br i1 %61, label %62, label %107

62:                                               ; preds = %60
  %63 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %64 = icmp ne %struct.config_entry_list* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %66, %struct.config_entry_list** %10, align 8
  %67 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %68 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %67, i32 0, i32 0
  %69 = load %struct.config_entry_list*, %struct.config_entry_list** %68, align 8
  store %struct.config_entry_list* %69, %struct.config_entry_list** %4, align 8
  br label %96

70:                                               ; preds = %62
  %71 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %72 = icmp ne %struct.config_entry_list* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  store %struct.config_entry_list* %74, %struct.config_entry_list** %10, align 8
  %75 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %76 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %75, i32 0, i32 0
  %77 = load %struct.config_entry_list*, %struct.config_entry_list** %76, align 8
  store %struct.config_entry_list* %77, %struct.config_entry_list** %6, align 8
  br label %95

78:                                               ; preds = %70
  %79 = load i32 (%struct.config_entry_list*, %struct.config_entry_list*)*, i32 (%struct.config_entry_list*, %struct.config_entry_list*)** %5, align 8
  %80 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %81 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %82 = call i32 %79(%struct.config_entry_list* %80, %struct.config_entry_list* %81)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %85, %struct.config_entry_list** %10, align 8
  %86 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %87 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %86, i32 0, i32 0
  %88 = load %struct.config_entry_list*, %struct.config_entry_list** %87, align 8
  store %struct.config_entry_list* %88, %struct.config_entry_list** %4, align 8
  br label %94

89:                                               ; preds = %78
  %90 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  store %struct.config_entry_list* %90, %struct.config_entry_list** %10, align 8
  %91 = load %struct.config_entry_list*, %struct.config_entry_list** %6, align 8
  %92 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %91, i32 0, i32 0
  %93 = load %struct.config_entry_list*, %struct.config_entry_list** %92, align 8
  store %struct.config_entry_list* %93, %struct.config_entry_list** %6, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %65
  %97 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %98 = icmp ne %struct.config_entry_list* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load %struct.config_entry_list*, %struct.config_entry_list** %10, align 8
  store %struct.config_entry_list* %100, %struct.config_entry_list** %9, align 8
  br label %105

101:                                              ; preds = %96
  %102 = load %struct.config_entry_list*, %struct.config_entry_list** %10, align 8
  %103 = load %struct.config_entry_list*, %struct.config_entry_list** %11, align 8
  %104 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %103, i32 0, i32 0
  store %struct.config_entry_list* %102, %struct.config_entry_list** %104, align 8
  br label %105

105:                                              ; preds = %101, %99
  %106 = load %struct.config_entry_list*, %struct.config_entry_list** %10, align 8
  store %struct.config_entry_list* %106, %struct.config_entry_list** %11, align 8
  br label %54

107:                                              ; preds = %60
  %108 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  store %struct.config_entry_list* %108, %struct.config_entry_list** %3, align 8
  br label %109

109:                                              ; preds = %107, %22
  %110 = load %struct.config_entry_list*, %struct.config_entry_list** %3, align 8
  ret %struct.config_entry_list* %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
