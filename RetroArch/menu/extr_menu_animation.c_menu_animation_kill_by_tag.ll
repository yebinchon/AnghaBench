; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_kill_by_tag.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_kill_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.tween = type { i64, i32 }

@anim = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_kill_by_tag(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tween*, align 8
  store i64* %0, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %50

13:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @anim, i32 0, i32 1), align 4
  %17 = call i32 @da_count(i32 %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @anim, i32 0, i32 1), align 4
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.tween* @da_getptr(i32 %20, i32 %21)
  store %struct.tween* %22, %struct.tween** %5, align 8
  %23 = load %struct.tween*, %struct.tween** %5, align 8
  %24 = icmp ne %struct.tween* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.tween*, %struct.tween** %5, align 8
  %27 = getelementptr inbounds %struct.tween, %struct.tween* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %19
  br label %46

33:                                               ; preds = %25
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @anim, i32 0, i32 2), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.tween*, %struct.tween** %5, align 8
  %38 = getelementptr inbounds %struct.tween, %struct.tween* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @anim, i32 0, i32 0), align 8
  br label %45

39:                                               ; preds = %33
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @anim, i32 0, i32 1), align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @da_delete(i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %14

49:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @da_count(i32) #1

declare dso_local %struct.tween* @da_getptr(i32, i32) #1

declare dso_local i32 @da_delete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
