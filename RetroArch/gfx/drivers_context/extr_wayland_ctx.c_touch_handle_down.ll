; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_touch_handle_down.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_touch_handle_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.wl_touch = type { i32 }
%struct.wl_surface = type { i32 }

@num_active_touches = common dso_local global i32 0, align 4
@MAX_TOUCHES = common dso_local global i32 0, align 4
@active_touch_positions = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_touch*, i32, i32, %struct.wl_surface*, i32, i32, i32)* @touch_handle_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touch_handle_down(i8* %0, %struct.wl_touch* %1, i32 %2, i32 %3, %struct.wl_surface* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wl_touch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wl_surface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.wl_touch* %1, %struct.wl_touch** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.wl_surface* %4, %struct.wl_surface** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %18, align 8
  %21 = load i32, i32* @num_active_touches, align 4
  %22 = load i32, i32* @MAX_TOUCHES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %8
  store i32 0, i32* %17, align 4
  br label %25

25:                                               ; preds = %68, %24
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @MAX_TOUCHES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %39 = load i32, i32* @num_active_touches, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %45 = load i32, i32* @num_active_touches, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @wl_fixed_to_int(i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %53 = load i32, i32* @num_active_touches, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @wl_fixed_to_int(i32 %57)
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %61 = load i32, i32* @num_active_touches, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* @num_active_touches, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @num_active_touches, align 4
  br label %71

67:                                               ; preds = %29
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %25

71:                                               ; preds = %37, %25
  br label %72

72:                                               ; preds = %71, %8
  ret void
}

declare dso_local i64 @wl_fixed_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
