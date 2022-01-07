; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_get_free_page.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_get_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_page = type { i32, i32 }
%struct.dispmanx_video = type { i64, i32, i32 }
%struct.dispmanx_surface = type { i32, %struct.dispmanx_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dispmanx_page* (%struct.dispmanx_video*, %struct.dispmanx_surface*)* @dispmanx_get_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dispmanx_page* @dispmanx_get_free_page(%struct.dispmanx_video* %0, %struct.dispmanx_surface* %1) #0 {
  %3 = alloca %struct.dispmanx_video*, align 8
  %4 = alloca %struct.dispmanx_surface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dispmanx_page*, align 8
  store %struct.dispmanx_video* %0, %struct.dispmanx_video** %3, align 8
  store %struct.dispmanx_surface* %1, %struct.dispmanx_surface** %4, align 8
  store %struct.dispmanx_page* null, %struct.dispmanx_page** %6, align 8
  br label %7

7:                                                ; preds = %64, %2
  %8 = load %struct.dispmanx_page*, %struct.dispmanx_page** %6, align 8
  %9 = icmp ne %struct.dispmanx_page* %8, null
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %65

11:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %36, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %15 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %20 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %19, i32 0, i32 1
  %21 = load %struct.dispmanx_page*, %struct.dispmanx_page** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %21, i64 %23
  %25 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %18
  %29 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %4, align 8
  %30 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %29, i32 0, i32 1
  %31 = load %struct.dispmanx_page*, %struct.dispmanx_page** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %31, i64 %33
  store %struct.dispmanx_page* %34, %struct.dispmanx_page** %6, align 8
  br label %39

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %12

39:                                               ; preds = %28, %12
  %40 = load %struct.dispmanx_page*, %struct.dispmanx_page** %6, align 8
  %41 = icmp ne %struct.dispmanx_page* %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  %43 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %44 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @slock_lock(i32 %45)
  %47 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %48 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %53 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %56 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @scond_wait(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %42
  %60 = load %struct.dispmanx_video*, %struct.dispmanx_video** %3, align 8
  %61 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @slock_unlock(i32 %62)
  br label %64

64:                                               ; preds = %59, %39
  br label %7

65:                                               ; preds = %7
  %66 = load %struct.dispmanx_page*, %struct.dispmanx_page** %6, align 8
  %67 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @slock_lock(i32 %68)
  %70 = load %struct.dispmanx_page*, %struct.dispmanx_page** %6, align 8
  %71 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load %struct.dispmanx_page*, %struct.dispmanx_page** %6, align 8
  %73 = getelementptr inbounds %struct.dispmanx_page, %struct.dispmanx_page* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @slock_unlock(i32 %74)
  %76 = load %struct.dispmanx_page*, %struct.dispmanx_page** %6, align 8
  ret %struct.dispmanx_page* %76
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
