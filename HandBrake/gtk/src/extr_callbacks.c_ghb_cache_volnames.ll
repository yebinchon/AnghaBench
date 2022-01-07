; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_cache_volnames.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_cache_volnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ghb_cache_volnames()\00", align 1
@volname_mutex = common dso_local global i32 0, align 4
@volname_hash = common dso_local global i32 0, align 4
@ghb_file_menu_add_dvd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ghb_cache_volnames(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = call i32 @g_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.TYPE_4__* (...) @dvd_device_list()
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %82

13:                                               ; preds = %1
  %14 = load i32, i32* @volname_mutex, align 4
  %15 = call i32 @g_mutex_lock(i32 %14)
  %16 = load i32, i32* @volname_hash, align 4
  %17 = call i32 @g_hash_table_remove_all(i32 %16)
  br label %18

18:                                               ; preds = %65, %27, %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @g_drive_has_media(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @g_object_unref(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %4, align 8
  br label %18

35:                                               ; preds = %21
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @get_dvd_device_name(i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @get_direct_dvd_volume_name(i32* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @volname_hash, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @g_hash_table_insert(i32 %48, i32* %49, i32* %50)
  br label %65

52:                                               ; preds = %44, %35
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @g_free(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @g_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %47
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @free_drive(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %4, align 8
  br label %18

73:                                               ; preds = %18
  %74 = load i32, i32* @volname_mutex, align 4
  %75 = call i32 @g_mutex_unlock(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = call i32 @g_list_free(%struct.TYPE_4__* %76)
  %78 = load i64, i64* @ghb_file_menu_add_dvd, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @g_idle_add(i32 %79, i32* %80)
  store i32* null, i32** %2, align 8
  br label %82

82:                                               ; preds = %73, %12
  %83 = load i32*, i32** %2, align 8
  ret i32* %83
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local %struct.TYPE_4__* @dvd_device_list(...) #1

declare dso_local i32 @g_mutex_lock(i32) #1

declare dso_local i32 @g_hash_table_remove_all(i32) #1

declare dso_local i32 @g_drive_has_media(i32) #1

declare dso_local i32 @g_object_unref(i32) #1

declare dso_local i32* @get_dvd_device_name(i32) #1

declare dso_local i32* @get_direct_dvd_volume_name(i32*) #1

declare dso_local i32 @g_hash_table_insert(i32, i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @free_drive(i32) #1

declare dso_local i32 @g_mutex_unlock(i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_4__*) #1

declare dso_local i32 @g_idle_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
