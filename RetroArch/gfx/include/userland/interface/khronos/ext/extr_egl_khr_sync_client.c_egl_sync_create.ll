; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_sync_client.c_egl_sync_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_sync_client.c_egl_sync_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"EGL_SYNC_T\00", align 1
@KHR_SUCCESS = common dso_local global i64 0, align 8
@eglIntCreateSync_impl = common dso_local global i32 0, align 4
@EGLINTCREATESYNC_ID = common dso_local global i32 0, align 4
@EGLINTCREATESYNCFENCE_ID = common dso_local global i32 0, align 4
@EGL_SYNC_FENCE_KHR = common dso_local global i64 0, align 8
@eglIntCreateSyncFence_impl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i64, i64, i64, i64, i64)* @egl_sync_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @egl_sync_create(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %16, i32** %12, align 8
  %17 = call i64 @khrn_platform_malloc(i32 48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = inttoptr i64 %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %13, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @rpc_get_client_id(i32* %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %94

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = ashr i32 %42, 32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %49, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @khronos_platform_semaphore_create(i32* %55, i32* %58, i32 0)
  %60 = load i64, i64* @KHR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %24
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %64 = call i32 @khrn_platform_free(%struct.TYPE_4__* %63)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %94

65:                                               ; preds = %24
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* @eglIntCreateSync_impl, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @EGLINTCREATESYNC_ID, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @RPC_UINT(i64 %70)
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @RPC_UINT(i64 %72)
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @RPC_INT(i64 %74)
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @RPC_UINT(i64 %76)
  %78 = call i32 @RPC_CALL4_RES(i32 %67, i32* %68, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77)
  %79 = call i32 @RPC_UINT_RES(i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %65
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = call i32 @khronos_platform_semaphore_destroy(i32* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %91 = call i32 @khrn_platform_free(%struct.TYPE_4__* %90)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %94

92:                                               ; preds = %65
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %6, align 8
  br label %94

94:                                               ; preds = %92, %86, %62, %23
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %95
}

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local i64 @khrn_platform_malloc(i32, i8*) #1

declare dso_local i32 @rpc_get_client_id(i32*) #1

declare dso_local i64 @khronos_platform_semaphore_create(i32*, i32*, i32) #1

declare dso_local i32 @khrn_platform_free(%struct.TYPE_4__*) #1

declare dso_local i32 @RPC_UINT_RES(i32) #1

declare dso_local i32 @RPC_CALL4_RES(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RPC_UINT(i64) #1

declare dso_local i32 @RPC_INT(i64) #1

declare dso_local i32 @khronos_platform_semaphore_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
