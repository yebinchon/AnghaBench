; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_init_fd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_client.c_mmal_vc_init_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }

@MMAL_EIO = common dso_local global i64 0, align 8
@once = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4
@client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"mmalipc\00", align 1
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@mmal_vchiq_instance = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialise vchiq\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to connect to vchiq\00", align 1
@mmal_vc_vchiq_callback = common dso_local global i32 0, align 4
@WORKER_VER_MAJOR = common dso_local global i32 0, align 4
@WORKER_VER_MINIMUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not open vchiq service\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"could not create wait pool\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"mmal client bulk lock\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"could not create bulk lock\00", align 1
@MMAL_ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_vc_init_fd(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* @MMAL_EIO, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @init_once, align 4
  %13 = call i32 @vcos_once(i32* @once, i32 %12)
  %14 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 2))
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 3), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 3), align 4
  store i32 %15, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 2))
  %21 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %21, i64* %2, align 8
  br label %103

22:                                               ; preds = %1
  %23 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %24 = call i32 @vcos_log_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @vchiq_initialise_fd(i32* @mmal_vchiq_instance, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* @MMAL_EIO, align 8
  store i64 %32, i64* %8, align 8
  br label %79

33:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  %34 = load i32, i32* @mmal_vchiq_instance, align 4
  %35 = call i64 @vchiq_connect(i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* @MMAL_EIO, align 8
  store i64 %41, i64* %8, align 8
  br label %79

42:                                               ; preds = %33
  %43 = call i32 @memset(%struct.TYPE_5__* %4, i32 0, i32 24)
  %44 = call i32 (...) @MMAL_CONTROL_FOURCC()
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @mmal_vc_vchiq_callback, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store %struct.TYPE_6__* @client, %struct.TYPE_6__** %48, align 8
  %49 = load i32, i32* @WORKER_VER_MAJOR, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @WORKER_VER_MINIMUM, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @mmal_vchiq_instance, align 4
  %54 = call i64 @vchiq_open_service(i32 %53, %struct.TYPE_5__* %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 4))
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64, i64* @MMAL_EIO, align 8
  store i64 %60, i64* %8, align 8
  br label %79

61:                                               ; preds = %42
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 0), align 4
  store i32 1, i32* %7, align 4
  %62 = call i64 @create_waitpool(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 5))
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @MMAL_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %79

68:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  %69 = call i64 @vcos_mutex_create(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 6), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i64, i64* @VCOS_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i64, i64* @MMAL_ENOSPC, align 8
  store i64 %74, i64* %8, align 8
  br label %79

75:                                               ; preds = %68
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 1), align 4
  %76 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 2))
  %77 = call i32 (...) @mmal_vc_release()
  %78 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %78, i64* %2, align 8
  br label %103

79:                                               ; preds = %72, %66, %58, %39, %30
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @destroy_waitpool(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 5))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 0), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 4), align 4
  %89 = call i32 @vchiq_close_service(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @mmal_vchiq_instance, align 4
  %95 = call i32 @vchiq_shutdown(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %98 = call i32 @vcos_log_unregister(i32 %97)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 3), align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 3), align 4
  %101 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @client, i32 0, i32 2))
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %96, %75, %19
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i64 @vchiq_initialise_fd(i32*, i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i64 @vchiq_connect(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @MMAL_CONTROL_FOURCC(...) #1

declare dso_local i64 @vchiq_open_service(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @create_waitpool(i32*) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @mmal_vc_release(...) #1

declare dso_local i32 @destroy_waitpool(i32*) #1

declare dso_local i32 @vchiq_close_service(i32) #1

declare dso_local i32 @vchiq_shutdown(i32) #1

declare dso_local i32 @vcos_log_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
