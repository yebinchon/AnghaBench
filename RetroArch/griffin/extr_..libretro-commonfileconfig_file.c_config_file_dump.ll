; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_file_dump.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_file_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.config_entry_list*, %struct.config_include_list* }
%struct.config_entry_list = type { i8*, i8*, %struct.config_entry_list*, i32 }
%struct.config_include_list = type { i8*, %struct.config_include_list* }

@.str = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@config_sort_compare_func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s = \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_file_dump(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_entry_list*, align 8
  %8 = alloca %struct.config_include_list*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.config_entry_list* null, %struct.config_entry_list** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.config_include_list*, %struct.config_include_list** %10, align 8
  store %struct.config_include_list* %11, %struct.config_include_list** %8, align 8
  br label %12

12:                                               ; preds = %15, %3
  %13 = load %struct.config_include_list*, %struct.config_include_list** %8, align 8
  %14 = icmp ne %struct.config_include_list* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.config_include_list*, %struct.config_include_list** %8, align 8
  %18 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.config_include_list*, %struct.config_include_list** %8, align 8
  %22 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %21, i32 0, i32 1
  %23 = load %struct.config_include_list*, %struct.config_include_list** %22, align 8
  store %struct.config_include_list* %23, %struct.config_include_list** %8, align 8
  br label %12

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.config_entry_list*, %struct.config_entry_list** %29, align 8
  %31 = load i32, i32* @config_sort_compare_func, align 4
  %32 = call %struct.config_entry_list* @merge_sort_linked_list(%struct.config_entry_list* %30, i32 %31)
  store %struct.config_entry_list* %32, %struct.config_entry_list** %7, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.config_entry_list*, %struct.config_entry_list** %35, align 8
  store %struct.config_entry_list* %36, %struct.config_entry_list** %7, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.config_entry_list* %38, %struct.config_entry_list** %40, align 8
  br label %41

41:                                               ; preds = %63, %37
  %42 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %43 = icmp ne %struct.config_entry_list* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %46 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %44
  %50 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %51 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %57 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %60 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %61)
  br label %63

63:                                               ; preds = %54, %49, %44
  %64 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %65 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %64, i32 0, i32 2
  %66 = load %struct.config_entry_list*, %struct.config_entry_list** %65, align 8
  store %struct.config_entry_list* %66, %struct.config_entry_list** %7, align 8
  br label %41

67:                                               ; preds = %41
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local %struct.config_entry_list* @merge_sort_linked_list(%struct.config_entry_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
