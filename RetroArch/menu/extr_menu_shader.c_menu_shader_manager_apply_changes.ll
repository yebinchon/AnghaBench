; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_apply_changes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_apply_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i64 }

@RARCH_SHADER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_shader_manager_apply_changes(%struct.video_shader* %0) #0 {
  %2 = alloca %struct.video_shader*, align 8
  %3 = alloca i32, align 4
  store %struct.video_shader* %0, %struct.video_shader** %2, align 8
  %4 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.video_shader*, %struct.video_shader** %2, align 8
  %6 = icmp ne %struct.video_shader* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.video_shader*, %struct.video_shader** %2, align 8
  %10 = call i32 @menu_shader_manager_get_type(%struct.video_shader* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.video_shader*, %struct.video_shader** %2, align 8
  %12 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @RARCH_SHADER_NONE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.video_shader*, %struct.video_shader** %2, align 8
  %21 = call i32 @menu_shader_manager_save_preset(%struct.video_shader* %20, i32* null, i32 1)
  br label %25

22:                                               ; preds = %15, %8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @menu_shader_manager_set_preset(i32* null, i32 %23, i32* null, i32 1)
  br label %25

25:                                               ; preds = %22, %19, %7
  ret void
}

declare dso_local i32 @menu_shader_manager_get_type(%struct.video_shader*) #1

declare dso_local i32 @menu_shader_manager_save_preset(%struct.video_shader*, i32*, i32) #1

declare dso_local i32 @menu_shader_manager_set_preset(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
