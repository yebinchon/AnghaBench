; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_vc_vchi_khronos_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_vc_vchi_khronos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i32* }

@bulk_event = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@khrn_vchiq_instance = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"* failed to open vchiq device\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gldemo: connecting\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"* failed to connect\00", align 1
@VC_KHRN_VERSION = common dso_local global i8* null, align 8
@FOURCC_KHAN = common dso_local global i32 0, align 4
@khan_callback = common dso_local global i32 0, align 4
@vchiq_khan_service = common dso_local global i32 0, align 4
@FOURCC_KHRN = common dso_local global i32 0, align 4
@khrn_callback = common dso_local global i32 0, align 4
@vchiq_khrn_service = common dso_local global i32 0, align 4
@FOURCC_KHHN = common dso_local global i32 0, align 4
@khhn_callback = common dso_local global i32 0, align 4
@vchiq_khhn_service = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"* failed to add service - already in use?\00", align 1
@khrn_queue = common dso_local global i32 0, align 4
@khhn_queue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"gldemo: connected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_vchi_khronos_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = call i64 @vcos_event_create(i32* @bulk_event, i32* null)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @UNUSED_NDEBUG(i64 %7)
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @VCOS_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @vcos_assert(i32 %12)
  %14 = call i64 @vchiq_initialise(i32* @khrn_vchiq_instance)
  %15 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = call i32 @vcos_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %0
  %21 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @khrn_vchiq_instance, align 4
  %23 = call i64 @vchiq_connect(i32 %22)
  %24 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @vcos_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load i8*, i8** @VC_KHRN_VERSION, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** @VC_KHRN_VERSION, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @FOURCC_KHAN, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @khan_callback, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @khrn_vchiq_instance, align 4
  %40 = call i64 @vchiq_open_service(i32 %39, %struct.TYPE_3__* %5, i32* @vchiq_khan_service)
  store i64 %40, i64* %2, align 8
  %41 = load i32, i32* @FOURCC_KHRN, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @khrn_callback, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @khrn_vchiq_instance, align 4
  %46 = call i64 @vchiq_open_service(i32 %45, %struct.TYPE_3__* %5, i32* @vchiq_khrn_service)
  store i64 %46, i64* %3, align 8
  %47 = load i32, i32* @FOURCC_KHHN, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @khhn_callback, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @khrn_vchiq_instance, align 4
  %52 = call i64 @vchiq_open_service(i32 %51, %struct.TYPE_3__* %5, i32* @vchiq_khhn_service)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %29
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56, %29
  %65 = call i32 @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %60
  %68 = call i32 @vchiu_queue_init(i32* @khrn_queue, i32 64)
  %69 = call i32 @vchiu_queue_init(i32* @khhn_queue, i32 64)
  %70 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @vcos_event_create(i32*, i32*) #1

declare dso_local i32 @UNUSED_NDEBUG(i64) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vchiq_initialise(i32*) #1

declare dso_local i32 @vcos_log_error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vcos_log_trace(i8*) #1

declare dso_local i64 @vchiq_connect(i32) #1

declare dso_local i64 @vchiq_open_service(i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @vchiu_queue_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
