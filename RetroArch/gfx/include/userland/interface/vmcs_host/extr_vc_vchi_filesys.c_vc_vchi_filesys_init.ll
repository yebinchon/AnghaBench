; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_vchi_filesys_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_vchi_filesys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__, i64, i64, i64, i32, i32*, i32*, i64, i64, i32*, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@vc_filesys_client = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"HFilesys\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@FILESERV_MAX_BULK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HFilesys bulk_recv\00", align 1
@FILESERV_4CC = common dso_local global i32 0, align 4
@filesys_callback = common dso_local global i32 0, align 4
@VC_FILESERV_VER = common dso_local global i8* null, align 8
@filesys_task_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_vchi_filesys_init(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %12 = call i32 @memset(%struct.TYPE_7__* @vc_filesys_client, i32 0, i32 4)
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 0), align 8
  %15 = icmp slt i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i32 @vcos_verify(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %81

20:                                               ; preds = %3
  %21 = call i64 @vcos_mutex_create(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 18), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @VCOS_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @vcos_assert(i32 %25)
  %27 = call i64 @vcos_event_create(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 8), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @VCOS_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @vcos_assert(i32 %31)
  %33 = call i64 @vcos_event_create(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 17), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @VCOS_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @vcos_assert(i32 %37)
  %39 = load i32, i32* @FILESERV_MAX_BULK, align 4
  %40 = call i32 @vcos_malloc_aligned(i32 %39, i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 16), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 15), align 8
  %41 = call i32 @memset(%struct.TYPE_7__* %9, i32 0, i32 136)
  %42 = load i32, i32* @FILESERV_4CC, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 14
  store i32 %42, i32* %43, align 8
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 13
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 12
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 11
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 10
  store i32* @filesys_callback, i32** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 9
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 8), i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** @VC_FILESERV_VER, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @VC_FILESERV_VER, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @vchi_service_open(i32 %61, %struct.TYPE_7__* %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 2))
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @vcos_assert(i32 %65)
  %67 = call i32 @vcos_thread_attr_init(i32* %10)
  %68 = call i32 @vcos_thread_attr_setstacksize(i32* %10, i32 4000)
  %69 = call i32 @vcos_thread_attr_settimeslice(i32* %10, i32 1)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 1), align 4
  %70 = load i32, i32* @filesys_task_func, align 4
  %71 = call i64 @vcos_thread_create(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 3), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %70, i32* null)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @VCOS_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @vcos_assert(i32 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vc_filesys_client, i32 0, i32 2), align 8
  %78 = call i32 @vchi_service_release(i32 %77)
  %79 = load i64, i64* %8, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %20, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vcos_event_create(i32*, i8*) #1

declare dso_local i32 @vcos_malloc_aligned(i32, i32, i8*) #1

declare dso_local i64 @vchi_service_open(i32, %struct.TYPE_7__*, i32*) #1

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
