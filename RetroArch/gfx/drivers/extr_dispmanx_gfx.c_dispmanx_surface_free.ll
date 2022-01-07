; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_video = type { i64, i32, i32, i32 }
%struct.dispmanx_surface = type { i32, i32, i32, %struct.dispmanx_surface*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispmanx_video*, %struct.dispmanx_surface**)* @dispmanx_surface_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_surface_free(%struct.dispmanx_video* %0, %struct.dispmanx_surface** %1) #0 {
  %3 = alloca %struct.dispmanx_video*, align 8
  %4 = alloca %struct.dispmanx_surface**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dispmanx_surface*, align 8
  store %struct.dispmanx_video* %0, %struct.dispmanx_video** %3, align 8
  store %struct.dispmanx_surface** %1, %struct.dispmanx_surface*** %4, align 8
  %7 = load %struct.dispmanx_surface**, %struct.dispmanx_surface*** %4, align 8
  %8 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %7, align 8
  store %struct.dispmanx_surface* %8, %struct.dispmanx_surface** %6, align 8
  %9 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %10 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @slock_lock(i32 %11)
  %13 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %14 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %19 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %22 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scond_wait(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %27 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @slock_unlock(i32 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %62, %25
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %33 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %38 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %37, i32 0, i32 3
  %39 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %39, i64 %41
  %43 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vc_dispmanx_resource_delete(i32 %44)
  %46 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %47 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %46, i32 0, i32 3
  %48 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %48, i64 %50
  %52 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %54 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %53, i32 0, i32 3
  %55 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %55, i64 %57
  %59 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @slock_free(i32 %60)
  br label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %67 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %66, i32 0, i32 3
  %68 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %67, align 8
  %69 = call i32 @free(%struct.dispmanx_surface* %68)
  %70 = call i32 @vc_dispmanx_update_start(i32 0)
  %71 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %72 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %74 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %77 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @vc_dispmanx_element_remove(i32 %75, i32 %78)
  %80 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %81 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @vc_dispmanx_update_submit_sync(i32 %82)
  %84 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %85 = call i32 @free(%struct.dispmanx_surface* %84)
  %86 = load %struct.dispmanx_surface**, %struct.dispmanx_surface*** %4, align 8
  store %struct.dispmanx_surface* null, %struct.dispmanx_surface** %86, align 8
  ret void
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @vc_dispmanx_resource_delete(i32) #1

declare dso_local i32 @slock_free(i32) #1

declare dso_local i32 @free(%struct.dispmanx_surface*) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_remove(i32, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
