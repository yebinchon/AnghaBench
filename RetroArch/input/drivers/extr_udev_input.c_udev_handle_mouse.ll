; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_handle_mouse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_handle_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_event = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.input_event*, %struct.TYPE_7__*)* @udev_handle_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udev_handle_mouse(i8* %0, %struct.input_event* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_event*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.input_event* %1, %struct.input_event** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.input_event*, %struct.input_event** %5, align 8
  %11 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %107 [
    i32 133, label %13
    i32 132, label %37
    i32 134, label %90
  ]

13:                                               ; preds = %3
  %14 = load %struct.input_event*, %struct.input_event** %5, align 8
  %15 = getelementptr inbounds %struct.input_event, %struct.input_event* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %35 [
    i32 137, label %17
    i32 135, label %23
    i32 136, label %29
  ]

17:                                               ; preds = %13
  %18 = load %struct.input_event*, %struct.input_event** %5, align 8
  %19 = getelementptr inbounds %struct.input_event, %struct.input_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %36

23:                                               ; preds = %13
  %24 = load %struct.input_event*, %struct.input_event** %5, align 8
  %25 = getelementptr inbounds %struct.input_event, %struct.input_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %36

29:                                               ; preds = %13
  %30 = load %struct.input_event*, %struct.input_event** %5, align 8
  %31 = getelementptr inbounds %struct.input_event, %struct.input_event* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %36

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35, %29, %23, %17
  br label %107

37:                                               ; preds = %3
  %38 = load %struct.input_event*, %struct.input_event** %5, align 8
  %39 = getelementptr inbounds %struct.input_event, %struct.input_event* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %89 [
    i32 129, label %41
    i32 128, label %47
    i32 130, label %53
    i32 131, label %71
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = load %struct.input_event*, %struct.input_event** %5, align 8
  %44 = getelementptr inbounds %struct.input_event, %struct.input_event* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @udev_mouse_set_x(%struct.TYPE_6__* %42, i32 %45, i32 0)
  br label %89

47:                                               ; preds = %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = load %struct.input_event*, %struct.input_event** %5, align 8
  %50 = getelementptr inbounds %struct.input_event, %struct.input_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @udev_mouse_set_y(%struct.TYPE_6__* %48, i32 %51, i32 0)
  br label %89

53:                                               ; preds = %37
  %54 = load %struct.input_event*, %struct.input_event** %5, align 8
  %55 = getelementptr inbounds %struct.input_event, %struct.input_event* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  br label %70

61:                                               ; preds = %53
  %62 = load %struct.input_event*, %struct.input_event** %5, align 8
  %63 = getelementptr inbounds %struct.input_event, %struct.input_event* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %58
  br label %89

71:                                               ; preds = %37
  %72 = load %struct.input_event*, %struct.input_event** %5, align 8
  %73 = getelementptr inbounds %struct.input_event, %struct.input_event* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  store i32 1, i32* %78, align 4
  br label %88

79:                                               ; preds = %71
  %80 = load %struct.input_event*, %struct.input_event** %5, align 8
  %81 = getelementptr inbounds %struct.input_event, %struct.input_event* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 6
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %37, %88, %70, %47, %41
  br label %107

90:                                               ; preds = %3
  %91 = load %struct.input_event*, %struct.input_event** %5, align 8
  %92 = getelementptr inbounds %struct.input_event, %struct.input_event* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %106 [
    i32 139, label %94
    i32 138, label %100
  ]

94:                                               ; preds = %90
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = load %struct.input_event*, %struct.input_event** %5, align 8
  %97 = getelementptr inbounds %struct.input_event, %struct.input_event* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @udev_mouse_set_x(%struct.TYPE_6__* %95, i32 %98, i32 1)
  br label %106

100:                                              ; preds = %90
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = load %struct.input_event*, %struct.input_event** %5, align 8
  %103 = getelementptr inbounds %struct.input_event, %struct.input_event* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @udev_mouse_set_y(%struct.TYPE_6__* %101, i32 %104, i32 1)
  br label %106

106:                                              ; preds = %90, %100, %94
  br label %107

107:                                              ; preds = %3, %106, %89, %36
  ret void
}

declare dso_local i32 @udev_mouse_set_x(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @udev_mouse_set_y(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
