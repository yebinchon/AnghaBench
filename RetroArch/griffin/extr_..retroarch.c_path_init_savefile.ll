; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_init_savefile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_init_savefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_CTL_IS_SRAM_USED = common dso_local global i32 0, align 4
@RARCH_CTL_IS_SRAM_SAVE_DISABLED = common dso_local global i32 0, align 4
@rarch_use_sram = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_SRAM_WILL_NOT_BE_SAVED = common dso_local global i32 0, align 4
@CMD_EVENT_AUTOSAVE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_init_savefile() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RARCH_CTL_IS_SRAM_USED, align 4
  %3 = call i64 @rarch_ctl(i32 %2, i32* null)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @RARCH_CTL_IS_SRAM_SAVE_DISABLED, align 4
  %7 = call i64 @rarch_ctl(i32 %6, i32* null)
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %5, %0
  %11 = phi i1 [ false, %0 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* @rarch_use_sram, align 4
  %14 = load i32, i32* @RARCH_CTL_IS_SRAM_USED, align 4
  %15 = call i64 @rarch_ctl(i32 %14, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @MSG_SRAM_WILL_NOT_BE_SAVED, align 4
  %19 = call i32 @msg_hash_to_str(i32 %18)
  %20 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @CMD_EVENT_AUTOSAVE_INIT, align 4
  %23 = call i32 @command_event(i32 %22, i32* null)
  br label %24

24:                                               ; preds = %21, %17
  ret void
}

declare dso_local i64 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
