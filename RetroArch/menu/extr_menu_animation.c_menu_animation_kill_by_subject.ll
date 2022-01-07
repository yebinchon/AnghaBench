; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_kill_by_subject.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_kill_by_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.tween = type { float*, i32 }

@anim = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_animation_kill_by_subject(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float**, align 8
  %7 = alloca %struct.tween*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to float**
  store float** %11, float*** %6, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %69, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 1), align 4
  %15 = call i32 @da_count(i32 %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i1 [ false, %12 ], [ %22, %17 ]
  br i1 %24, label %25, label %72

25:                                               ; preds = %23
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 1), align 4
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.tween* @da_getptr(i32 %26, i32 %27)
  store %struct.tween* %28, %struct.tween** %7, align 8
  %29 = load %struct.tween*, %struct.tween** %7, align 8
  %30 = icmp ne %struct.tween* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %69

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.tween*, %struct.tween** %7, align 8
  %41 = getelementptr inbounds %struct.tween, %struct.tween* %40, i32 0, i32 0
  %42 = load float*, float** %41, align 8
  %43 = load float**, float*** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds float*, float** %43, i64 %45
  %47 = load float*, float** %46, align 8
  %48 = icmp ne float* %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %65

50:                                               ; preds = %39
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 2), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.tween*, %struct.tween** %7, align 8
  %55 = getelementptr inbounds %struct.tween, %struct.tween* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 0), align 8
  br label %62

56:                                               ; preds = %50
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 1), align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @da_delete(i32 %57, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %33

68:                                               ; preds = %62, %33
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %12

72:                                               ; preds = %23
  ret void
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
