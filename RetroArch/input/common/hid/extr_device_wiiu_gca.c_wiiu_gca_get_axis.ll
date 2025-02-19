; ModuleID = '/home/carl/AnghaBench/RetroArch/input/common/hid/extr_device_wiiu_gca.c_wiiu_gca_get_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/common/hid/extr_device_wiiu_gca.c_wiiu_gca_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @wiiu_gca_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiu_gca_get_axis(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @gamepad_read_axis_data(i32 %10, %struct.TYPE_6__* %6)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gamepad_get_axis_value(i32 %22, %struct.TYPE_6__* %6)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @gamepad_read_axis_data(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gamepad_get_axis_value(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
