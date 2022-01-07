; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_term.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }

@eglIntDestroyVG_impl = common dso_local global i32 0, align 4
@EGLINTDESTROYVG_ID = common dso_local global i32 0, align 4
@eglIntDestroyGL_impl = common dso_local global i32 0, align 4
@EGLINTDESTROYGL_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @egl_context_term(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %4, i32** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @vcos_assert(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @vcos_assert(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %51 [
    i32 128, label %19
    i32 130, label %35
    i32 129, label %35
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @eglIntDestroyVG_impl, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @EGLINTDESTROYVG_ID, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @RPC_UINT(i32 %25)
  %27 = call i32 @RPC_CALL1(i32 %20, i32* %21, i32 %22, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @RPC_FLUSH(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @vg_client_state_free(i32* %33)
  br label %53

35:                                               ; preds = %1, %1
  %36 = load i32, i32* @eglIntDestroyGL_impl, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @EGLINTDESTROYGL_ID, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @RPC_UINT(i32 %41)
  %43 = call i32 @RPC_CALL1(i32 %36, i32* %37, i32 %38, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @RPC_FLUSH(i32* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @glxx_client_state_free(i32* %49)
  br label %53

51:                                               ; preds = %1
  %52 = call i32 (...) @UNREACHABLE()
  br label %53

53:                                               ; preds = %51, %35, %19
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  ret void
}

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @RPC_CALL1(i32, i32*, i32, i32) #1

declare dso_local i32 @RPC_UINT(i32) #1

declare dso_local i32 @RPC_FLUSH(i32*) #1

declare dso_local i32 @vg_client_state_free(i32*) #1

declare dso_local i32 @glxx_client_state_free(i32*) #1

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
