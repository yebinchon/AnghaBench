; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_register_fd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_register_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@s_vfs_count = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Invalid arguments for esp_vfs_register_fd(%d, 0x%x)\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@s_fd_table_lock = common dso_local global i32 0, align 4
@MAX_FDS = common dso_local global i32 0, align 4
@s_fd_table = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"esp_vfs_register_fd(%d, 0x%x) finished with %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_register_fd(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @s_vfs_count, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14, %10, %2
  %18 = load i32, i32* @TAG, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 (i32, i8*, i64, i32, ...) @ESP_LOGD(i32 %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %21)
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %14
  %25 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %25, i32* %6, align 4
  %26 = call i32 @_lock_acquire(i32* @s_fd_table_lock)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %62, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAX_FDS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_fd_table, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %61

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_fd_table, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i64, i64* %4, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_fd_table, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_fd_table, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @ESP_OK, align 4
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %27

65:                                               ; preds = %39, %27
  %66 = call i32 @_lock_release(i32* @s_fd_table_lock)
  %67 = load i32, i32* @TAG, align 4
  %68 = load i64, i64* %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @esp_err_to_name(i32 %71)
  %73 = call i32 (i32, i8*, i64, i32, ...) @ESP_LOGD(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %70, i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %65, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @_lock_release(i32*) #1

declare dso_local i32 @esp_err_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
