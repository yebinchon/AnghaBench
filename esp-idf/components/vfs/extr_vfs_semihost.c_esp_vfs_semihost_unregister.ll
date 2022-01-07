; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_semihost.c_esp_vfs_semihost_unregister.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_semihost.c_esp_vfs_semihost_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unregister semihosting driver @ '%s'\00", align 1
@CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS = common dso_local global i32 0, align 4
@s_semhost_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Unregistered semihosting driver @ '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_vfs_semihost_unregister(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @ESP_LOGD(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %7)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_semhost_ctx, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_semhost_ctx, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @strcmp(i8* %24, i64* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %9

38:                                               ; preds = %33, %9
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %43, i64* %2, align 8
  br label %76

44:                                               ; preds = %38
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_semhost_ctx, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = call i64 @esp_vfs_unregister(i64* %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @ESP_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %76

57:                                               ; preds = %44
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_semhost_ctx, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_semhost_ctx, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @TAG, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @ESP_LOGD(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i64, i64* @ESP_OK, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %57, %55, %42
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i64*) #1

declare dso_local i64 @esp_vfs_unregister(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
