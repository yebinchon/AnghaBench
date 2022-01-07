; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_gfx_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_gfx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_video = type { i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dispmanx_gfx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_gfx_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dispmanx_video*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dispmanx_video*
  store %struct.dispmanx_video* %5, %struct.dispmanx_video** %3, align 8
  %6 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %7 = icmp ne %struct.dispmanx_video* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %11 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %12 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %11, i32 0, i32 5
  %13 = call i32 @dispmanx_surface_free(%struct.dispmanx_video* %10, i64* %12)
  %14 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %15 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %16 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %15, i32 0, i32 4
  %17 = call i32 @dispmanx_surface_free(%struct.dispmanx_video* %14, i64* %16)
  %18 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %19 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %24 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %25 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %24, i32 0, i32 3
  %26 = call i32 @dispmanx_surface_free(%struct.dispmanx_video* %23, i64* %25)
  br label %27

27:                                               ; preds = %22, %9
  %28 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %29 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vc_dispmanx_display_close(i32 %30)
  %32 = call i32 (...) @bcm_host_deinit()
  %33 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %34 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @slock_free(i32 %35)
  %37 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %38 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @scond_free(i32 %39)
  %41 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %42 = call i32 @free(%struct.dispmanx_video* %41)
  br label %43

43:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @dispmanx_surface_free(%struct.dispmanx_video*, i64*) #1

declare dso_local i32 @vc_dispmanx_display_close(i32) #1

declare dso_local i32 @bcm_host_deinit(...) #1

declare dso_local i32 @slock_free(i32) #1

declare dso_local i32 @scond_free(i32) #1

declare dso_local i32 @free(%struct.dispmanx_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
