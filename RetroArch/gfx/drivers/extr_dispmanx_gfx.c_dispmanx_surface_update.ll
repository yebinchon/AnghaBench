; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_video = type { i64, i32, i32, i32 }
%struct.dispmanx_surface = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@dispmanx_vsync_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispmanx_video*, i8*, %struct.dispmanx_surface*)* @dispmanx_surface_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_surface_update(%struct.dispmanx_video* %0, i8* %1, %struct.dispmanx_surface* %2) #0 {
  %4 = alloca %struct.dispmanx_video*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dispmanx_surface*, align 8
  store %struct.dispmanx_video* %0, %struct.dispmanx_video** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dispmanx_surface* %2, %struct.dispmanx_surface** %6, align 8
  %7 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %8 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %13 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %16 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %20 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %19, i32 0, i32 2
  %21 = call i32 @vc_dispmanx_resource_write_data(i32 %11, i32 %14, i32 %17, i8* %18, i32* %20)
  %22 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %23 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @slock_lock(i32 %24)
  %26 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %27 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %32 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %35 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scond_wait(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %3
  %39 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %40 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @slock_unlock(i32 %41)
  %43 = call i32 @vc_dispmanx_update_start(i32 0)
  %44 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %45 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %47 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %50 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %53 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vc_dispmanx_element_change_source(i32 %48, i32 %51, i32 %56)
  %58 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %59 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @slock_lock(i32 %60)
  %62 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %63 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %67 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @slock_unlock(i32 %68)
  %70 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %71 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @dispmanx_vsync_callback, align 4
  %74 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %75 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = bitcast %struct.TYPE_2__* %76 to i8*
  %78 = call i32 @vc_dispmanx_update_submit(i32 %72, i32 %73, i8* %77)
  %79 = load %struct.dispmanx_video*, %struct.dispmanx_video** %4, align 8
  %80 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %81 = call %struct.TYPE_2__* @dispmanx_get_free_page(%struct.dispmanx_video* %79, %struct.dispmanx_surface* %80)
  %82 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %83 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %82, i32 0, i32 0
  store %struct.TYPE_2__* %81, %struct.TYPE_2__** %83, align 8
  ret void
}

declare dso_local i32 @vc_dispmanx_resource_write_data(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_change_source(i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit(i32, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @dispmanx_get_free_page(%struct.dispmanx_video*, %struct.dispmanx_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
