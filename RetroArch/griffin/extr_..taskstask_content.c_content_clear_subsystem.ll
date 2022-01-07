; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_clear_subsystem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_clear_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending_subsystem_rom_id = common dso_local global i64 0, align 8
@pending_subsystem_init = common dso_local global i32 0, align 4
@RARCH_MAX_SUBSYSTEM_ROMS = common dso_local global i32 0, align 4
@pending_subsystem_roms = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @content_clear_subsystem() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @pending_subsystem_rom_id, align 8
  store i32 0, i32* @pending_subsystem_init, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %25, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @RARCH_MAX_SUBSYSTEM_ROMS, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = load i32**, i32*** @pending_subsystem_roms, align 8
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %7, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load i32**, i32*** @pending_subsystem_roms, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @free(i32* %18)
  %20 = load i32**, i32*** @pending_subsystem_roms, align 8
  %21 = load i32, i32* %1, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %6
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %2

28:                                               ; preds = %2
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
