; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_register_fd_range.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_register_fd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MAX_FDS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Invalid arguments: esp_vfs_register_fd_range(0x%x, 0x%x, %d, %d)\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LEN_PATH_PREFIX_IGNORED = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@s_fd_table_lock = common dso_local global i32 0, align 4
@s_fd_table = common dso_local global %struct.TYPE_3__* null, align 8
@s_vfs = common dso_local global i32** null, align 8
@FD_TABLE_ENTRY_UNUSED = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"esp_vfs_register_fd_range cannot set fd %d (used by other VFS)\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"esp_vfs_register_fd_range is successful for range <%d; %d) and VFS ID %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_vfs_register_fd_range(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MAX_FDS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MAX_FDS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %23, %19, %16, %4
  %32 = load i32, i32* @TAG, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %40, i64* %5, align 8
  br label %135

41:                                               ; preds = %27
  store i32 -1, i32* %10, align 4
  %42 = load i32, i32* @LEN_PATH_PREFIX_IGNORED, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @esp_vfs_register_common(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32* %43, i8* %44, i32* %10)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @ESP_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %128

49:                                               ; preds = %41
  %50 = call i32 @_lock_acquire(i32* @s_fd_table_lock)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %123, %49
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %105

64:                                               ; preds = %56
  %65 = load i32**, i32*** @s_vfs, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @free(i32* %69)
  %71 = load i32**, i32*** @s_vfs, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %96, %64
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = bitcast %struct.TYPE_3__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 bitcast (%struct.TYPE_3__* @FD_TABLE_ENTRY_UNUSED to i8*), i64 12, i1 false)
  br label %95

95:                                               ; preds = %89, %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %76

99:                                               ; preds = %76
  %100 = call i32 @_lock_release(i32* @s_fd_table_lock)
  %101 = load i32, i32* @TAG, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %104, i64* %5, align 8
  br label %135

105:                                              ; preds = %56
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %52

126:                                              ; preds = %52
  %127 = call i32 @_lock_release(i32* @s_fd_table_lock)
  br label %128

128:                                              ; preds = %126, %41
  %129 = load i32, i32* @TAG, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %129, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %128, %99, %31
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, ...) #1

declare dso_local i64 @esp_vfs_register_common(i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
