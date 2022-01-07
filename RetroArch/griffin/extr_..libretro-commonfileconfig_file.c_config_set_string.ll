; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_set_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.config_entry_list*, %struct.config_entry_list*, i64 }
%struct.config_entry_list = type { i32, %struct.config_entry_list*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_set_string(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_entry_list*, align 8
  %8 = alloca %struct.config_entry_list*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.config_entry_list*, %struct.config_entry_list** %15, align 8
  %17 = icmp ne %struct.config_entry_list* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.config_entry_list*, %struct.config_entry_list** %20, align 8
  br label %26

22:                                               ; preds = %13, %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.config_entry_list*, %struct.config_entry_list** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi %struct.config_entry_list* [ %21, %18 ], [ %25, %22 ]
  store %struct.config_entry_list* %27, %struct.config_entry_list** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.config_entry_list* @config_get_entry(%struct.TYPE_4__* %34, i8* %35, %struct.config_entry_list** %7)
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi %struct.config_entry_list* [ null, %32 ], [ %36, %33 ]
  store %struct.config_entry_list* %38, %struct.config_entry_list** %8, align 8
  %39 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %40 = icmp ne %struct.config_entry_list* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %43 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %48 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %53 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strdup(i8* %57)
  %59 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %60 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %98

61:                                               ; preds = %41, %37
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %98

65:                                               ; preds = %61
  %66 = call i64 @malloc(i32 32)
  %67 = inttoptr i64 %66 to %struct.config_entry_list*
  store %struct.config_entry_list* %67, %struct.config_entry_list** %8, align 8
  %68 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %69 = icmp ne %struct.config_entry_list* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %98

71:                                               ; preds = %65
  %72 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %73 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @strdup(i8* %74)
  %76 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %77 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strdup(i8* %78)
  %80 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %81 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %83 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %82, i32 0, i32 1
  store %struct.config_entry_list* null, %struct.config_entry_list** %83, align 8
  %84 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %85 = icmp ne %struct.config_entry_list* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %88 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %89 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %88, i32 0, i32 1
  store %struct.config_entry_list* %87, %struct.config_entry_list** %89, align 8
  br label %94

90:                                               ; preds = %71
  %91 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store %struct.config_entry_list* %91, %struct.config_entry_list** %93, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store %struct.config_entry_list* %95, %struct.config_entry_list** %97, align 8
  br label %98

98:                                               ; preds = %94, %70, %64, %56
  ret void
}

declare dso_local %struct.config_entry_list* @config_get_entry(%struct.TYPE_4__*, i8*, %struct.config_entry_list**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
