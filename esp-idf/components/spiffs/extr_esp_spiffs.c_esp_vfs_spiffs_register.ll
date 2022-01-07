; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_esp_vfs_spiffs_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_esp_vfs_spiffs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@vfs_spiffs_rmdir = common dso_local global i32 0, align 4
@vfs_spiffs_mkdir = common dso_local global i32 0, align 4
@vfs_spiffs_telldir = common dso_local global i32 0, align 4
@vfs_spiffs_seekdir = common dso_local global i32 0, align 4
@vfs_spiffs_readdir_r = common dso_local global i32 0, align 4
@vfs_spiffs_readdir = common dso_local global i32 0, align 4
@vfs_spiffs_closedir = common dso_local global i32 0, align 4
@vfs_spiffs_opendir = common dso_local global i32 0, align 4
@vfs_spiffs_rename = common dso_local global i32 0, align 4
@vfs_spiffs_unlink = common dso_local global i32 0, align 4
@vfs_spiffs_link = common dso_local global i32 0, align 4
@vfs_spiffs_stat = common dso_local global i32 0, align 4
@vfs_spiffs_fstat = common dso_local global i32 0, align 4
@vfs_spiffs_close = common dso_local global i32 0, align 4
@vfs_spiffs_open = common dso_local global i32 0, align 4
@vfs_spiffs_read = common dso_local global i32 0, align 4
@vfs_spiffs_lseek = common dso_local global i32 0, align 4
@vfs_spiffs_write = common dso_local global i32 0, align 4
@ESP_VFS_FLAG_CONTEXT_PTR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@_efs = common dso_local global %struct.TYPE_11__** null, align 8
@ESP_VFS_PATH_MAX = common dso_local global i64 0, align 8
@vfs_spiffs_utime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_vfs_spiffs_register(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @assert(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32* @vfs_spiffs_rmdir, i32** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32* @vfs_spiffs_mkdir, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store i32* @vfs_spiffs_telldir, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  store i32* @vfs_spiffs_seekdir, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  store i32* @vfs_spiffs_readdir_r, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  store i32* @vfs_spiffs_readdir, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 7
  store i32* @vfs_spiffs_closedir, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 8
  store i32* @vfs_spiffs_opendir, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 9
  store i32* @vfs_spiffs_rename, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 10
  store i32* @vfs_spiffs_unlink, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 11
  store i32* @vfs_spiffs_link, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 12
  store i32* @vfs_spiffs_stat, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 13
  store i32* @vfs_spiffs_fstat, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 14
  store i32* @vfs_spiffs_close, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 15
  store i32* @vfs_spiffs_open, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 16
  store i32* @vfs_spiffs_read, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 17
  store i32* @vfs_spiffs_lseek, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 18
  store i32* @vfs_spiffs_write, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 19
  %31 = load i32, i32* @ESP_VFS_FLAG_CONTEXT_PTR, align 4
  store i32 %31, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i64 @esp_spiffs_init(%struct.TYPE_10__* %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %83

39:                                               ; preds = %1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @esp_spiffs_by_label(i32 %42, i32* %6)
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %47, i64* %2, align 8
  br label %83

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @_efs, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %51
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @ESP_VFS_PATH_MAX, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i32 @strlcat(i32 %55, i32 %58, i64 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @_efs, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i64 %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call i64 @esp_vfs_register(i32 %64, %struct.TYPE_9__* %4, %struct.TYPE_11__* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @ESP_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %48
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @_efs, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %75, i64 %77
  %79 = call i32 @esp_spiffs_free(%struct.TYPE_11__** %78)
  %80 = load i64, i64* %5, align 8
  store i64 %80, i64* %2, align 8
  br label %83

81:                                               ; preds = %48
  %82 = load i64, i64* @ESP_OK, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %81, %74, %46, %37
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @esp_spiffs_init(%struct.TYPE_10__*) #1

declare dso_local i64 @esp_spiffs_by_label(i32, i32*) #1

declare dso_local i32 @strlcat(i32, i32, i64) #1

declare dso_local i64 @esp_vfs_register(i32, %struct.TYPE_9__*, %struct.TYPE_11__*) #1

declare dso_local i32 @esp_spiffs_free(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
