; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_dispmanx.c_vc_vchi_dispmanx_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_dispmanx.c_vc_vchi_dispmanx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32 }

@dispmanx_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"HDispmanx\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@dispmanx_message_available_event = common dso_local global i32 0, align 4
@dispmanx_notify_available_event = common dso_local global i32 0, align 4
@VC_DISPMANX_VERSION = common dso_local global i32 0, align 4
@DISPMANX_CLIENT_NAME = common dso_local global i32 0, align 4
@dispmanx_client_callback = common dso_local global i32 0, align 4
@VC_FALSE = common dso_local global i32 0, align 4
@DISPMANX_NOTIFY_NAME = common dso_local global i32 0, align 4
@dispmanx_notify_callback = common dso_local global i32 0, align 4
@dispmanx_notify_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"HDispmanx Notify\00", align 1
@dispmanx_notify_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_vchi_dispmanx_init(i32 %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 0), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %129

16:                                               ; preds = %3
  %17 = call i32 @memset(%struct.TYPE_6__* @dispmanx_client, i32 0, i32 4)
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 1), align 8
  %19 = call i64 @vcos_mutex_create(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 4), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @VCOS_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @vcos_assert(i32 %23)
  %25 = call i64 @vcos_event_create(i32* @dispmanx_message_available_event, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @VCOS_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @vcos_assert(i32 %29)
  %31 = call i64 @vcos_event_create(i32* @dispmanx_notify_available_event, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @VCOS_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @vcos_assert(i32 %35)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 0), align 8
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %126, %16
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 1), align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %129

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %43 = load i32, i32* @VC_DISPMANX_VERSION, align 4
  %44 = call i32 @VCHI_VERSION(i32 %43)
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %46 = load i32, i32* @DISPMANX_CLIENT_NAME, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %48 = load i32**, i32*** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = ptrtoint i32* %51 to i32
  store i32 %52, i32* %47, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 ptrtoint (i32* @dispmanx_client_callback to i32), i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i32 ptrtoint (i32* @dispmanx_message_available_event to i32), i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  %58 = load i32, i32* @VC_FALSE, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %57, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 8
  %62 = load i32, i32* @VC_FALSE, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 9
  %64 = load i32, i32* @VC_FALSE, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %66 = load i32, i32* @VC_DISPMANX_VERSION, align 4
  %67 = call i32 @VCHI_VERSION(i32 %66)
  store i32 %67, i32* %65, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %69 = load i32, i32* @DISPMANX_NOTIFY_NAME, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %71 = load i32**, i32*** %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i32*, i32** %71, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = ptrtoint i32* %74 to i32
  store i32 %75, i32* %70, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32 ptrtoint (i32* @dispmanx_notify_callback to i32), i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i32 ptrtoint (i32* @dispmanx_notify_available_event to i32), i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  %81 = load i32, i32* @VC_FALSE, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %80, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 8
  %85 = load i32, i32* @VC_FALSE, align 4
  store i32 %85, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 9
  %87 = load i32, i32* @VC_FALSE, align 4
  store i32 %87, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 3), align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i64 @vchi_service_open(i32 %88, %struct.TYPE_5__* %11, i32* %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @vcos_assert(i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 2), align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = call i64 @vchi_service_open(i32 %97, %struct.TYPE_5__* %12, i32* %100)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @vcos_assert(i32 %104)
  %106 = call i32 @vcos_thread_attr_init(i32* %10)
  %107 = call i32 @vcos_thread_attr_setstacksize(i32* %10, i32 2048)
  %108 = call i32 @vcos_thread_attr_settimeslice(i32* %10, i32 1)
  %109 = load i32, i32* @dispmanx_notify_func, align 4
  %110 = call i64 @vcos_thread_create(i32* @dispmanx_notify_task, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 %109, i32* null)
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @VCOS_SUCCESS, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @vcos_assert(i32 %114)
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 3), align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @vchi_service_release(i32 %119)
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dispmanx_client, i32 0, i32 2), align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @vchi_service_release(i32 %124)
  br label %126

126:                                              ; preds = %41
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %9, align 8
  br label %37

129:                                              ; preds = %15, %37
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vcos_event_create(i32*, i8*) #1

declare dso_local i32 @VCHI_VERSION(i32) #1

declare dso_local i64 @vchi_service_open(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @vcos_thread_attr_init(i32*) #1

declare dso_local i32 @vcos_thread_attr_setstacksize(i32*, i32) #1

declare dso_local i32 @vcos_thread_attr_settimeslice(i32*, i32) #1

declare dso_local i64 @vcos_thread_create(i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @vchi_service_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
