; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gpuserv.c_vc_gpuserv_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gpuserv.c_vc_gpuserv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32 }

@gpuserv_client_once = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4
@gpuserv_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VCOS_SUCCESS = common dso_local global i32 0, align 4
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@VCOS_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gpuserv\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: starting initialisation\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@gpuserv_client_vchiq_instance = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: failed to initialise vchiq: %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: failed to connect to vchiq: %d\00", align 1
@gpuserv_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: could not open vchiq service: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_gpuserv_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @init_once, align 4
  %5 = call i32 @vcos_once(i32* @gpuserv_client_once, i32 %4)
  %6 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 2), align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 2), align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 0))
  %12 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %12, i32* %1, align 4
  br label %61

13:                                               ; preds = %0
  %14 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %15 = load i32, i32* @VCOS_LOG_TRACE, align 4
  %16 = call i32 @vcos_log_set_level(i32 %14, i32 %15)
  %17 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %18 = call i32 @vcos_log_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @VCOS_FUNCTION, align 4
  %20 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i64 @vchiq_initialise(i32* @gpuserv_client_vchiq_instance)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load i32, i32* @VCOS_FUNCTION, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %26, i64 %27)
  br label %59

29:                                               ; preds = %13
  %30 = load i32, i32* @gpuserv_client_vchiq_instance, align 4
  %31 = call i64 @vchiq_connect(i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @VCOS_FUNCTION, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %36, i64 %37)
  br label %59

39:                                               ; preds = %29
  %40 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 24)
  %41 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext 71, i8 signext 80, i8 zeroext 85, i8 signext 83)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @gpuserv_callback, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @gpuserv_client_vchiq_instance, align 4
  %49 = call i64 @vchiq_open_service(i32 %48, %struct.TYPE_5__* %2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 1))
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i32, i32* @VCOS_FUNCTION, align 4
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %54, i64 %55)
  br label %59

57:                                               ; preds = %39
  %58 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %61

59:                                               ; preds = %53, %35, %25
  %60 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpuserv_client, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %61

61:                                               ; preds = %59, %57, %10
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i32 @vcos_log_set_level(i32, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i64 @vchiq_initialise(i32*) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

declare dso_local i64 @vchiq_connect(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 zeroext, i8 signext) #1

declare dso_local i64 @vchiq_open_service(i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
