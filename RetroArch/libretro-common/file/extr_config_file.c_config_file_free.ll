; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_config_file_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_config_file_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_include_list = type { %struct.config_include_list*, %struct.config_include_list*, i64, %struct.config_include_list*, %struct.config_include_list*, %struct.config_include_list* }
%struct.config_entry_list = type { %struct.config_entry_list*, %struct.config_entry_list*, i64, %struct.config_entry_list*, %struct.config_entry_list*, %struct.config_entry_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_file_free(%struct.config_include_list* %0) #0 {
  %2 = alloca %struct.config_include_list*, align 8
  %3 = alloca %struct.config_include_list*, align 8
  %4 = alloca %struct.config_entry_list*, align 8
  %5 = alloca %struct.config_entry_list*, align 8
  %6 = alloca %struct.config_include_list*, align 8
  store %struct.config_include_list* %0, %struct.config_include_list** %2, align 8
  store %struct.config_include_list* null, %struct.config_include_list** %3, align 8
  store %struct.config_entry_list* null, %struct.config_entry_list** %4, align 8
  %7 = load %struct.config_include_list*, %struct.config_include_list** %2, align 8
  %8 = icmp ne %struct.config_include_list* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %98

10:                                               ; preds = %1
  %11 = load %struct.config_include_list*, %struct.config_include_list** %2, align 8
  %12 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %11, i32 0, i32 5
  %13 = load %struct.config_include_list*, %struct.config_include_list** %12, align 8
  %14 = bitcast %struct.config_include_list* %13 to %struct.config_entry_list*
  store %struct.config_entry_list* %14, %struct.config_entry_list** %4, align 8
  br label %15

15:                                               ; preds = %55, %10
  %16 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %17 = icmp ne %struct.config_entry_list* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  store %struct.config_entry_list* null, %struct.config_entry_list** %5, align 8
  %19 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %20 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %19, i32 0, i32 3
  %21 = load %struct.config_entry_list*, %struct.config_entry_list** %20, align 8
  %22 = icmp ne %struct.config_entry_list* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %25 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %24, i32 0, i32 3
  %26 = load %struct.config_entry_list*, %struct.config_entry_list** %25, align 8
  %27 = bitcast %struct.config_entry_list* %26 to %struct.config_include_list*
  %28 = call i32 @free(%struct.config_include_list* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %31 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %30, i32 0, i32 4
  %32 = load %struct.config_entry_list*, %struct.config_entry_list** %31, align 8
  %33 = icmp ne %struct.config_entry_list* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %36 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %35, i32 0, i32 4
  %37 = load %struct.config_entry_list*, %struct.config_entry_list** %36, align 8
  %38 = bitcast %struct.config_entry_list* %37 to %struct.config_include_list*
  %39 = call i32 @free(%struct.config_include_list* %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %42 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %41, i32 0, i32 4
  store %struct.config_entry_list* null, %struct.config_entry_list** %42, align 8
  %43 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %44 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %43, i32 0, i32 3
  store %struct.config_entry_list* null, %struct.config_entry_list** %44, align 8
  %45 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  store %struct.config_entry_list* %45, %struct.config_entry_list** %5, align 8
  %46 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  %47 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %46, i32 0, i32 1
  %48 = load %struct.config_entry_list*, %struct.config_entry_list** %47, align 8
  store %struct.config_entry_list* %48, %struct.config_entry_list** %4, align 8
  %49 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %50 = icmp ne %struct.config_entry_list* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.config_entry_list*, %struct.config_entry_list** %5, align 8
  %53 = bitcast %struct.config_entry_list* %52 to %struct.config_include_list*
  %54 = call i32 @free(%struct.config_include_list* %53)
  br label %55

55:                                               ; preds = %51, %40
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.config_include_list*, %struct.config_include_list** %2, align 8
  %58 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.config_include_list*
  store %struct.config_include_list* %60, %struct.config_include_list** %3, align 8
  br label %61

61:                                               ; preds = %84, %56
  %62 = load %struct.config_include_list*, %struct.config_include_list** %3, align 8
  %63 = icmp ne %struct.config_include_list* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  store %struct.config_include_list* null, %struct.config_include_list** %6, align 8
  %65 = load %struct.config_include_list*, %struct.config_include_list** %3, align 8
  %66 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %65, i32 0, i32 0
  %67 = load %struct.config_include_list*, %struct.config_include_list** %66, align 8
  %68 = icmp ne %struct.config_include_list* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.config_include_list*, %struct.config_include_list** %3, align 8
  %71 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %70, i32 0, i32 0
  %72 = load %struct.config_include_list*, %struct.config_include_list** %71, align 8
  %73 = call i32 @free(%struct.config_include_list* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.config_include_list*, %struct.config_include_list** %3, align 8
  store %struct.config_include_list* %75, %struct.config_include_list** %6, align 8
  %76 = load %struct.config_include_list*, %struct.config_include_list** %3, align 8
  %77 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %76, i32 0, i32 1
  %78 = load %struct.config_include_list*, %struct.config_include_list** %77, align 8
  store %struct.config_include_list* %78, %struct.config_include_list** %3, align 8
  %79 = load %struct.config_include_list*, %struct.config_include_list** %6, align 8
  %80 = icmp ne %struct.config_include_list* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.config_include_list*, %struct.config_include_list** %6, align 8
  %83 = call i32 @free(%struct.config_include_list* %82)
  br label %84

84:                                               ; preds = %81, %74
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.config_include_list*, %struct.config_include_list** %2, align 8
  %87 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %86, i32 0, i32 0
  %88 = load %struct.config_include_list*, %struct.config_include_list** %87, align 8
  %89 = icmp ne %struct.config_include_list* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.config_include_list*, %struct.config_include_list** %2, align 8
  %92 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %91, i32 0, i32 0
  %93 = load %struct.config_include_list*, %struct.config_include_list** %92, align 8
  %94 = call i32 @free(%struct.config_include_list* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.config_include_list*, %struct.config_include_list** %2, align 8
  %97 = call i32 @free(%struct.config_include_list* %96)
  br label %98

98:                                               ; preds = %95, %9
  ret void
}

declare dso_local i32 @free(%struct.config_include_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
