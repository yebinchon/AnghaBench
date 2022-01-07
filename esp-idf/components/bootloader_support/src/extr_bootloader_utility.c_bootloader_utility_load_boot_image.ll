; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_bootloader_utility_load_boot_image.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_bootloader_utility_load_boot_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@TEST_APP_INDEX = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"No bootable test partition in the partition table\00", align 1
@FACTORY_INDEX = common dso_local global i32 0, align 4
@TRY_LOG_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Falling back to test app as only bootable partition\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"No bootable app partitions in the partition table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_utility_load_boot_image(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TEST_APP_INDEX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = call i64 @try_load_partition(%struct.TYPE_9__* %16, i32* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @load_image(i32* %7)
  br label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @bootloader_reset()
  br label %25

25:                                               ; preds = %21, %19
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %65, %26
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @FACTORY_INDEX, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @index_to_partition(%struct.TYPE_10__* %33, i32 %34)
  %36 = bitcast %struct.TYPE_9__* %8 to i64*
  store i64 %35, i64* %36, align 4
  %37 = bitcast %struct.TYPE_9__* %6 to i8*
  %38 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %65

43:                                               ; preds = %32
  %44 = load i32, i32* @TAG, align 4
  %45 = load i32, i32* @TRY_LOG_FORMAT, align 4
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ESP_LOGD(i32 %44, i32 %45, i32 %46, i32 %48, i32 %50)
  %52 = call i64 @check_anti_rollback(%struct.TYPE_9__* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %43
  %55 = call i64 @try_load_partition(%struct.TYPE_9__* %6, i32* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @set_actual_ota_seq(%struct.TYPE_10__* %58, i32 %59)
  %61 = call i32 @load_image(i32* %7)
  br label %62

62:                                               ; preds = %57, %54, %43
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @log_invalid_app_partition(i32 %63)
  br label %65

65:                                               ; preds = %62, %42
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  br label %28

68:                                               ; preds = %28
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %110, %68
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @index_to_partition(%struct.TYPE_10__* %78, i32 %79)
  %81 = bitcast %struct.TYPE_9__* %9 to i64*
  store i64 %80, i64* %81, align 4
  %82 = bitcast %struct.TYPE_9__* %6 to i8*
  %83 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %110

88:                                               ; preds = %77
  %89 = load i32, i32* @TAG, align 4
  %90 = load i32, i32* @TRY_LOG_FORMAT, align 4
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ESP_LOGD(i32 %89, i32 %90, i32 %91, i32 %93, i32 %95)
  %97 = call i64 @check_anti_rollback(%struct.TYPE_9__* %6)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = call i64 @try_load_partition(%struct.TYPE_9__* %6, i32* %7)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @set_actual_ota_seq(%struct.TYPE_10__* %103, i32 %104)
  %106 = call i32 @load_image(i32* %7)
  br label %107

107:                                              ; preds = %102, %99, %88
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @log_invalid_app_partition(i32 %108)
  br label %110

110:                                              ; preds = %107, %87
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %71

113:                                              ; preds = %71
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = call i64 @try_load_partition(%struct.TYPE_9__* %115, i32* %7)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @TAG, align 4
  %120 = call i32 @ESP_LOGW(i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %121 = call i32 @load_image(i32* %7)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* @TAG, align 4
  %124 = call i32 @ESP_LOGE(i32 %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %125 = call i32 @bzero(i32* %7, i32 4)
  %126 = call i32 (...) @bootloader_reset()
  ret void
}

declare dso_local i64 @try_load_partition(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @load_image(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @bootloader_reset(...) #1

declare dso_local i64 @index_to_partition(%struct.TYPE_10__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_LOGD(i32, i32, i32, i32, i32) #1

declare dso_local i64 @check_anti_rollback(%struct.TYPE_9__*) #1

declare dso_local i32 @set_actual_ota_seq(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @log_invalid_app_partition(i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
