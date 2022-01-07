; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_vsync_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_vsync_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_page = type { i32, %struct.TYPE_2__*, i32, %struct.dispmanx_surface* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dispmanx_surface = type { %struct.dispmanx_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @dispmanx_vsync_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_vsync_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dispmanx_page*, align 8
  %6 = alloca %struct.dispmanx_surface*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dispmanx_page*
  store %struct.dispmanx_page* %8, %struct.dispmanx_page** %5, align 8
  %9 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %10 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %9, i32 0, i32 3
  %11 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %10, align 8
  store %struct.dispmanx_surface* %11, %struct.dispmanx_surface** %6, align 8
  %12 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %13 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %12, i32 0, i32 0
  %14 = load %struct.dispmanx_page*, %struct.dispmanx_page** %13, align 8
  %15 = icmp ne %struct.dispmanx_page* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %18 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %17, i32 0, i32 0
  %19 = load %struct.dispmanx_page*, %struct.dispmanx_page** %18, align 8
  %20 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @slock_lock(i32 %21)
  %23 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %24 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %23, i32 0, i32 0
  %25 = load %struct.dispmanx_page*, %struct.dispmanx_page** %24, align 8
  %26 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %28 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %27, i32 0, i32 0
  %29 = load %struct.dispmanx_page*, %struct.dispmanx_page** %28, align 8
  %30 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @slock_unlock(i32 %31)
  br label %33

33:                                               ; preds = %16, %2
  %34 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %35 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %6, align 8
  %36 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %35, i32 0, i32 0
  store %struct.dispmanx_page* %34, %struct.dispmanx_page** %36, align 8
  %37 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %38 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @slock_lock(i32 %41)
  %43 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %44 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %50 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scond_signal(i32 %53)
  %55 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %56 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @slock_unlock(i32 %59)
  ret void
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @scond_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
