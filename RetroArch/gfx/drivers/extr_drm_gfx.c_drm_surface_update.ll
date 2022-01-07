; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_surface_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_surface_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_surface = type { i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.drm_video = type { i32 }
%struct.drm_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.drm_surface*)* @drm_surface_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_surface_update(i8* %0, i8* %1, %struct.drm_surface* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_surface*, align 8
  %7 = alloca %struct.drm_video*, align 8
  %8 = alloca %struct.drm_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_surface* %2, %struct.drm_surface** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.drm_video*
  store %struct.drm_video* %13, %struct.drm_video** %7, align 8
  store %struct.drm_page* null, %struct.drm_page** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %57, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %17 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  %21 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %22 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %25 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %40 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memcpy(i64 %33, i32* %38, i64 %41)
  %43 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %44 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %51 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %20
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.drm_surface*, %struct.drm_surface** %6, align 8
  %62 = call i32 @drm_page_flip(%struct.drm_surface* %61)
  ret void
}

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @drm_page_flip(%struct.drm_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
