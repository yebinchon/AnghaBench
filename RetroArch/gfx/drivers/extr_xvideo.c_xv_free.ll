; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 (i64)* }
%struct.TYPE_7__ = type { i32, i32 }

@g_x11_dpy = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xv_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %63

9:                                                ; preds = %1
  %10 = call i32 (...) @x11_input_ctx_destroy()
  %11 = load i32, i32* @g_x11_dpy, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  %14 = call i32 @XShmDetach(i32 %11, %struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @shmdt(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPC_RMID, align 4
  %25 = call i32 @shmctl(i32 %23, i32 %24, i32* null)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @XFree(i32 %28)
  %30 = call i32 @x11_window_destroy(i32 1)
  %31 = call i32 (...) @x11_colormap_destroy()
  %32 = load i32, i32* @g_x11_dpy, align 4
  %33 = call i32 @XCloseDisplay(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @free(%struct.TYPE_6__* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @free(%struct.TYPE_6__* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @free(%struct.TYPE_6__* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %9
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (i64)*, i32 (i64)** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 %55(i64 %58)
  br label %60

60:                                               ; preds = %50, %9
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = call i32 @free(%struct.TYPE_6__* %61)
  br label %63

63:                                               ; preds = %60, %8
  ret void
}

declare dso_local i32 @x11_input_ctx_destroy(...) #1

declare dso_local i32 @XShmDetach(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @shmdt(i32) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

declare dso_local i32 @XFree(i32) #1

declare dso_local i32 @x11_window_destroy(i32) #1

declare dso_local i32 @x11_colormap_destroy(...) #1

declare dso_local i32 @XCloseDisplay(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
