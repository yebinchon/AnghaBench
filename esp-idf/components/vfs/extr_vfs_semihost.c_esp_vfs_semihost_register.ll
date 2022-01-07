; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_semihost.c_esp_vfs_semihost_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_semihost.c_esp_vfs_semihost_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32*, i32 }

@vfs_semihost_lseek = common dso_local global i32 0, align 4
@vfs_semihost_read = common dso_local global i32 0, align 4
@vfs_semihost_close = common dso_local global i32 0, align 4
@vfs_semihost_open = common dso_local global i32 0, align 4
@vfs_semihost_write = common dso_local global i32 0, align 4
@ESP_VFS_FLAG_CONTEXT_PTR = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Register semihosting driver '%s' -> '%s'\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"OpenOCD is not connected!\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS = common dso_local global i32 0, align 4
@s_semhost_ctx = common dso_local global %struct.TYPE_7__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Register semihosting driver %d %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_semihost_register(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* @vfs_semihost_lseek, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32* @vfs_semihost_read, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32* @vfs_semihost_close, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* @vfs_semihost_open, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32* @vfs_semihost_write, i32** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %14 = load i32, i32* @ESP_VFS_FLAG_CONTEXT_PTR, align 4
  store i32 %14, i32* %13, align 8
  %15 = load i32, i32* @TAG, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %23)
  %25 = call i32 (...) @esp_cpu_in_ocd_debug_mode()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %30, i32* %3, align 4
  br label %100

31:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_semhost_ctx, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = call i64 @ctx_is_unused(%struct.TYPE_7__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %60

44:                                               ; preds = %36
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_semhost_ctx, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @strcmp(i8* %45, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %55, i32* %3, align 4
  br label %100

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %32

60:                                               ; preds = %43, %32
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %65, i32* %3, align 4
  br label %100

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_semhost_ctx, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strlcpy(i32 %72, i8* %73, i32 3)
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_semhost_ctx, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strlcpy(i32 %83, i8* %84, i32 3)
  br label %86

86:                                               ; preds = %77, %66
  %87 = load i32, i32* @TAG, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_semhost_ctx, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %88, %struct.TYPE_7__* %92)
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_semhost_ctx, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = call i32 @esp_vfs_register(i8* %94, %struct.TYPE_6__* %6, %struct.TYPE_7__* %98)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %86, %64, %54, %27
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @esp_cpu_in_ocd_debug_mode(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @ctx_is_unused(%struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @esp_vfs_register(i8*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
