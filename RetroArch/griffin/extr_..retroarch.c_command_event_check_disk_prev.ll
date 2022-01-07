; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_check_disk_prev.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_check_disk_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_disk_control_callback = type { i32 (...)*, i32 (...)* }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@MSG_GOT_INVALID_DISK_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.retro_disk_control_callback*)* @command_event_check_disk_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_check_disk_prev(%struct.retro_disk_control_callback* %0) #0 {
  %2 = alloca %struct.retro_disk_control_callback*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.retro_disk_control_callback* %0, %struct.retro_disk_control_callback** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %2, align 8
  %7 = icmp ne %struct.retro_disk_control_callback* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %2, align 8
  %10 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = icmp ne i32 (...)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %53

14:                                               ; preds = %8
  %15 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %2, align 8
  %16 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %15, i32 0, i32 1
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = icmp ne i32 (...)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %53

20:                                               ; preds = %14
  %21 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %2, align 8
  %22 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  store i32 %24, i32* %3, align 4
  %25 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %2, align 8
  %26 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %25, i32 0, i32 1
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = call i32 (...) %27()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @UINT_MAX, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi i1 [ false, %20 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @MSG_GOT_INVALID_DISK_INDEX, align 4
  %42 = call i32 @msg_hash_to_str(i32 %41)
  %43 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %53

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @command_event_disk_control_set_index(i32 %51)
  br label %53

53:                                               ; preds = %50, %40, %19, %13
  ret void
}

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @command_event_disk_control_set_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
