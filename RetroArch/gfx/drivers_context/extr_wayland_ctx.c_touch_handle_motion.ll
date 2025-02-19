; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_touch_handle_motion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_touch_handle_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.wl_touch = type { i32 }

@MAX_TOUCHES = common dso_local global i32 0, align 4
@active_touch_positions = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_touch*, i32, i64, i32, i32)* @touch_handle_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touch_handle_motion(i8* %0, %struct.wl_touch* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_touch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_touch* %1, %struct.wl_touch** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %56, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @MAX_TOUCHES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @wl_fixed_to_int(i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @wl_fixed_to_int(i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_touch_positions, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %38, %29, %21
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %17

59:                                               ; preds = %17
  ret void
}

declare dso_local i64 @wl_fixed_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
