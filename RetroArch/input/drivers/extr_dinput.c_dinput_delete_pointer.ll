; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_delete_pointer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_delete_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { %struct.pointer_status }
%struct.pointer_status = type { i32, %struct.pointer_status* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dinput_input*, i32)* @dinput_delete_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_delete_pointer(%struct.dinput_input* %0, i32 %1) #0 {
  %3 = alloca %struct.dinput_input*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pointer_status*, align 8
  %6 = alloca %struct.pointer_status*, align 8
  store %struct.dinput_input* %0, %struct.dinput_input** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %8 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %7, i32 0, i32 0
  store %struct.pointer_status* %8, %struct.pointer_status** %5, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %11 = icmp ne %struct.pointer_status* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %14 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %13, i32 0, i32 1
  %15 = load %struct.pointer_status*, %struct.pointer_status** %14, align 8
  %16 = icmp ne %struct.pointer_status* %15, null
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %21 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %20, i32 0, i32 1
  %22 = load %struct.pointer_status*, %struct.pointer_status** %21, align 8
  %23 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %29 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %28, i32 0, i32 1
  %30 = load %struct.pointer_status*, %struct.pointer_status** %29, align 8
  store %struct.pointer_status* %30, %struct.pointer_status** %6, align 8
  %31 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %32 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %31, i32 0, i32 1
  %33 = load %struct.pointer_status*, %struct.pointer_status** %32, align 8
  %34 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %33, i32 0, i32 1
  %35 = load %struct.pointer_status*, %struct.pointer_status** %34, align 8
  %36 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %37 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %36, i32 0, i32 1
  store %struct.pointer_status* %35, %struct.pointer_status** %37, align 8
  %38 = load %struct.pointer_status*, %struct.pointer_status** %6, align 8
  %39 = call i32 @free(%struct.pointer_status* %38)
  br label %40

40:                                               ; preds = %27, %19
  %41 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %42 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %41, i32 0, i32 1
  %43 = load %struct.pointer_status*, %struct.pointer_status** %42, align 8
  store %struct.pointer_status* %43, %struct.pointer_status** %5, align 8
  br label %9

44:                                               ; preds = %17
  ret void
}

declare dso_local i32 @free(%struct.pointer_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
