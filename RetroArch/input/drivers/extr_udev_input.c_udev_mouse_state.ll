; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_mouse_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_mouse_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @udev_mouse_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_mouse_state(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.TYPE_10__* @udev_get_mouse(%struct.TYPE_9__* %11, i32 %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 129
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 128
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i64 @udev_pointer_is_off_window(%struct.TYPE_9__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %91

28:                                               ; preds = %23, %20, %17
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %90 [
    i32 129, label %30
    i32 128, label %42
    i32 134, label %54
    i32 132, label %58
    i32 133, label %62
    i32 138, label %66
    i32 137, label %70
    i32 130, label %74
    i32 131, label %78
    i32 135, label %82
    i32 136, label %86
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = call i32 @udev_mouse_get_x(%struct.TYPE_10__* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %36, %33 ], [ %39, %37 ]
  store i32 %41, i32* %5, align 4
  br label %91

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = call i32 @udev_mouse_get_y(%struct.TYPE_10__* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %48, %45 ], [ %51, %49 ]
  store i32 %53, i32* %5, align 4
  br label %91

54:                                               ; preds = %28
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %91

58:                                               ; preds = %28
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %91

62:                                               ; preds = %28
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %91

66:                                               ; preds = %28
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  br label %91

70:                                               ; preds = %28
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %28
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  br label %91

78:                                               ; preds = %28
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  br label %91

82:                                               ; preds = %28
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %91

86:                                               ; preds = %28
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %5, align 4
  br label %91

90:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %52, %40, %27, %16
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_10__* @udev_get_mouse(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @udev_pointer_is_off_window(%struct.TYPE_9__*) #1

declare dso_local i32 @udev_mouse_get_x(%struct.TYPE_10__*) #1

declare dso_local i32 @udev_mouse_get_y(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
