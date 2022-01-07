; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ctl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.tween = type { i32* }

@anim = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cur_time = common dso_local global i32 0, align 4
@old_time = common dso_local global i32 0, align 4
@delta_time = common dso_local global float 0.000000e+00, align 4
@animation_is_active = common dso_local global i32 0, align 4
@ticker_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_ctl(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tween*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %42 [
    i32 130, label %8
    i32 131, label %39
    i32 128, label %40
    i32 129, label %41
  ]

8:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %30, %8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anim, i32 0, i32 1), align 4
  %12 = call i64 @da_count(i32 %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anim, i32 0, i32 1), align 4
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.tween* @da_getptr(i32 %15, i64 %16)
  store %struct.tween* %17, %struct.tween** %6, align 8
  %18 = load %struct.tween*, %struct.tween** %6, align 8
  %19 = icmp ne %struct.tween* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.tween*, %struct.tween** %6, align 8
  %23 = getelementptr inbounds %struct.tween, %struct.tween* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.tween*, %struct.tween** %6, align 8
  %28 = getelementptr inbounds %struct.tween, %struct.tween* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anim, i32 0, i32 1), align 4
  %35 = call i32 @da_free(i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anim, i32 0, i32 0), align 4
  %37 = call i32 @da_free(i32 %36)
  %38 = call i32 @memset(%struct.TYPE_3__* @anim, i32 0, i32 4)
  store i32 0, i32* @cur_time, align 4
  store i32 0, i32* @old_time, align 4
  store float 0.000000e+00, float* @delta_time, align 4
  br label %43

39:                                               ; preds = %2
  store i32 0, i32* @animation_is_active, align 4
  store i32 0, i32* @ticker_is_active, align 4
  br label %43

40:                                               ; preds = %2
  store i32 1, i32* @animation_is_active, align 4
  store i32 1, i32* @ticker_is_active, align 4
  br label %43

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %2, %41
  br label %43

43:                                               ; preds = %42, %40, %39, %33
  ret i32 1
}

declare dso_local i64 @da_count(i32) #1

declare dso_local %struct.tween* @da_getptr(i32, i64) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
