; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_android_ctx.c_android_gfx_ctx_has_focus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_android_ctx.c_android_gfx_ctx_has_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32 }

@g_android = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @android_gfx_ctx_has_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_gfx_ctx_has_focus(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.android_app*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* @g_android, align 8
  %7 = inttoptr i64 %6 to %struct.android_app*
  store %struct.android_app* %7, %struct.android_app** %5, align 8
  %8 = load %struct.android_app*, %struct.android_app** %5, align 8
  %9 = icmp ne %struct.android_app* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.android_app*, %struct.android_app** %5, align 8
  %13 = getelementptr inbounds %struct.android_app, %struct.android_app* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @slock_lock(i32 %14)
  %16 = load %struct.android_app*, %struct.android_app** %5, align 8
  %17 = getelementptr inbounds %struct.android_app, %struct.android_app* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.android_app*, %struct.android_app** %5, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @slock_unlock(i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %11, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
