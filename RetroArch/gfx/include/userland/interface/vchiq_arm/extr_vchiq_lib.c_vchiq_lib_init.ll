; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_vchiq_lib_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_vchiq_lib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }

@vchiq_lib_init.mutex_initialised = internal global i32 0, align 4
@vchiq_lib_init.vchiq_lib_mutex = internal global i32 0, align 4
@vchiq_instance = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"vchiq-init\00", align 1
@vchiq_lib_log_category = common dso_local global i32 0, align 4
@vchiq_default_lib_log_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vchiq_lib\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev/vchiq\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@VCHIQ_IOC_GET_CONFIG = common dso_local global i32 0, align 4
@VCHIQ_VERSION_MIN = common dso_local global i64 0, align 8
@VCHIQ_VERSION = common dso_local global %struct.TYPE_9__* null, align 8
@VCHIQ_VERSION_LIB_VERSION = common dso_local global i64 0, align 8
@VCHIQ_IOC_LIB_VERSION = common dso_local global i32 0, align 4
@VCHIQ_VERSION_CLOSE_DELIVERED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"VCHIQ instance\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"Incompatible VCHIQ library - driver version %d (min %d), library version %d (min %d)\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Very incompatible VCHIQ library - cannot retrieve driver version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32)* @vchiq_lib_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @vchiq_lib_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_8__* @vchiq_instance, %struct.TYPE_8__** %3, align 8
  %7 = call i32 (...) @vcos_global_lock()
  %8 = load i32, i32* @vchiq_lib_init.mutex_initialised, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = call i32 @vcos_mutex_create(i32* @vchiq_lib_init.vchiq_lib_mutex, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @vchiq_default_lib_log_level, align 4
  %13 = call i32 @vcos_log_set_level(i32* @vchiq_lib_log_category, i32 %12)
  %14 = call i32 @vcos_log_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @vchiq_lib_log_category)
  store i32 1, i32* @vchiq_lib_init.mutex_initialised, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32 (...) @vcos_global_unlock()
  %17 = call i32 @vcos_mutex_lock(i32* @vchiq_lib_init.vchiq_lib_mutex)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %115

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @O_RDWR, align 4
  %27 = call i64 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @dup(i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i64 [ %27, %25 ], [ %30, %28 ]
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %113

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 16, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @VCHIQ_IOC_GET_CONFIG, align 4
  %47 = call i32 @ioctl(i64 %45, i32 %46, %struct.TYPE_9__* %4)
  %48 = call i32 @RETRY(i32 %42, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VCHIQ_VERSION_MIN, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @VCHIQ_VERSION, align 8
  %60 = icmp ule %struct.TYPE_9__* %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VCHIQ_VERSION_LIB_VERSION, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @VCHIQ_IOC_LIB_VERSION, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @VCHIQ_VERSION, align 8
  %73 = call i32 @ioctl(i64 %70, i32 %71, %struct.TYPE_9__* %72)
  %74 = call i32 @RETRY(i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %66, %61
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VCHIQ_VERSION_CLOSE_DELIVERED, align 8
  %84 = icmp sge i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = call i32 @vcos_mutex_create(i32* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %78, %75
  br label %112

94:                                               ; preds = %56, %51, %39
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @VCHIQ_VERSION, align 8
  %103 = load i64, i64* @VCHIQ_VERSION_MIN, align 8
  %104 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i64 %99, %struct.TYPE_9__* %101, %struct.TYPE_9__* %102, i64 %103)
  br label %107

105:                                              ; preds = %94
  %106 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %97
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @close(i64 %110)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %112

112:                                              ; preds = %107, %93
  br label %114

113:                                              ; preds = %31
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %114

114:                                              ; preds = %113, %112
  br label %126

115:                                              ; preds = %15
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %114
  %127 = call i32 @vcos_mutex_unlock(i32* @vchiq_lib_init.vchiq_lib_mutex)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %128
}

declare dso_local i32 @vcos_global_lock(...) #1

declare dso_local i32 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_log_set_level(i32*, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32*) #1

declare dso_local i32 @vcos_global_unlock(...) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @dup(i32) #1

declare dso_local i32 @RETRY(i32, i32) #1

declare dso_local i32 @ioctl(i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
