; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_libretro_find_controller_description.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_libretro_find_controller_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_controller_description = type { i32 }
%struct.retro_controller_info = type { i32, %struct.retro_controller_description* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.retro_controller_description* @libretro_find_controller_description(%struct.retro_controller_info* %0, i32 %1) #0 {
  %3 = alloca %struct.retro_controller_description*, align 8
  %4 = alloca %struct.retro_controller_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.retro_controller_info* %0, %struct.retro_controller_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.retro_controller_info*, %struct.retro_controller_info** %4, align 8
  %10 = getelementptr inbounds %struct.retro_controller_info, %struct.retro_controller_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.retro_controller_info*, %struct.retro_controller_info** %4, align 8
  %15 = getelementptr inbounds %struct.retro_controller_info, %struct.retro_controller_info* %14, i32 0, i32 1
  %16 = load %struct.retro_controller_description*, %struct.retro_controller_description** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.retro_controller_description, %struct.retro_controller_description* %16, i64 %18
  %20 = getelementptr inbounds %struct.retro_controller_description, %struct.retro_controller_description* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %32

25:                                               ; preds = %13
  %26 = load %struct.retro_controller_info*, %struct.retro_controller_info** %4, align 8
  %27 = getelementptr inbounds %struct.retro_controller_info, %struct.retro_controller_info* %26, i32 0, i32 1
  %28 = load %struct.retro_controller_description*, %struct.retro_controller_description** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.retro_controller_description, %struct.retro_controller_description* %28, i64 %30
  store %struct.retro_controller_description* %31, %struct.retro_controller_description** %3, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  store %struct.retro_controller_description* null, %struct.retro_controller_description** %3, align 8
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.retro_controller_description*, %struct.retro_controller_description** %3, align 8
  ret %struct.retro_controller_description* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
