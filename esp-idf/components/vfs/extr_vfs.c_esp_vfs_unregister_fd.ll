; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_unregister_fd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_unregister_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@s_vfs_count = common dso_local global i64 0, align 8
@MAX_FDS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Invalid arguments for esp_vfs_unregister_fd(%d, %d)\00", align 1
@s_fd_table_lock = common dso_local global i32 0, align 4
@s_fd_table = common dso_local global %struct.TYPE_4__* null, align 8
@FD_TABLE_ENTRY_UNUSED = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"esp_vfs_unregister_fd(%d, %d) finished with %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_unregister_fd(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @s_vfs_count, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_FDS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %15, %11, %2
  %23 = load i32, i32* @TAG, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, i64, i32, ...) @ESP_LOGD(i32 %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %18
  %29 = call i32 @_lock_acquire(i32* @s_fd_table_lock)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_fd_table, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %54

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = bitcast %struct.TYPE_4__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 bitcast (%struct.TYPE_4__* @FD_TABLE_ENTRY_UNUSED to i8*), i64 24, i1 false)
  %53 = load i32, i32* @ESP_OK, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %44, %38, %28
  %55 = call i32 @_lock_release(i32* @s_fd_table_lock)
  %56 = load i32, i32* @TAG, align 4
  %57 = load i64, i64* %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @esp_err_to_name(i32 %59)
  %61 = call i32 (i32, i8*, i64, i32, ...) @ESP_LOGD(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32 %58, i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @_lock_acquire(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_lock_release(i32*) #1

declare dso_local i32 @esp_err_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
