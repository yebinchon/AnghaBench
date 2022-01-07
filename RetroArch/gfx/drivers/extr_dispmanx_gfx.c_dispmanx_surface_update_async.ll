; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_update_async.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_update_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_surface = type { i32, i32, i32, %struct.dispmanx_page* }
%struct.dispmanx_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dispmanx_surface*)* @dispmanx_surface_update_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_surface_update_async(i8* %0, %struct.dispmanx_surface* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dispmanx_surface*, align 8
  %5 = alloca %struct.dispmanx_page*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dispmanx_surface* %1, %struct.dispmanx_surface** %4, align 8
  store %struct.dispmanx_page* null, %struct.dispmanx_page** %5, align 8
  %6 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %7 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %6, i32 0, i32 3
  %8 = load %struct.dispmanx_page*, %struct.dispmanx_page** %7, align 8
  %9 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %8, i64 0
  store %struct.dispmanx_page* %9, %struct.dispmanx_page** %5, align 8
  %10 = load %struct.dispmanx_page*, %struct.dispmanx_page** %5, align 8
  %11 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %14 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %17 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %21 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %20, i32 0, i32 0
  %22 = call i32 @vc_dispmanx_resource_write_data(i32 %12, i32 %15, i32 %18, i8* %19, i32* %21)
  ret void
}

declare dso_local i32 @vc_dispmanx_resource_write_data(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
