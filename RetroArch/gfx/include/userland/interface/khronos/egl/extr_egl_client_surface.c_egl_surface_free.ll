; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"egl_surface_free\00", align 1
@WINDOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"egl_surface_free: calling platform_destroy_winhandle...\00", align 1
@.str.2 = private unnamed_addr constant [99 x i8] c"egl_surface_free: calling eglIntDestroySurface_impl via RPC...; thread = 0x%X; serverbuffer = 0x%X\00", align 1
@eglIntDestroySurface_impl = common dso_local global i32 0, align 4
@EGLINTDESTROYSURFACE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"egl_surface_free: calling egl_surface_pool_free...\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"egl_surface_free: end\00", align 1
@PLATFORM_WIN_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @egl_surface_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %5, i32** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WINDOW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @platform_destroy_winhandle(i32 %15, i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load i32*, i32** %3, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load i32, i32* @eglIntDestroySurface_impl, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @EGLINTDESTROYSURFACE_ID, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @RPC_UINT(i64 %33)
  %35 = call i32 @RPC_CALL1_RES(i32 %28, i32* %29, i32 %30, i32 %34)
  %36 = call i32 @RPC_INT_RES(i32 %35)
  %37 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = call i32 @egl_surface_pool_free(%struct.TYPE_4__* %38)
  %40 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @vcos_log_trace(i8*, ...) #1

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local i32 @platform_destroy_winhandle(i32, i64) #1

declare dso_local i32 @RPC_INT_RES(i32) #1

declare dso_local i32 @RPC_CALL1_RES(i32, i32*, i32, i32) #1

declare dso_local i32 @RPC_UINT(i64) #1

declare dso_local i32 @egl_surface_pool_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
