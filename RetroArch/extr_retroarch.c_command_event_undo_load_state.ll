; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_undo_load_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_undo_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_NO_STATE_HAS_BEEN_LOADED_YET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s \22%s\22.\00", align 1
@MSG_FAILED_TO_UNDO_LOAD_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RAM\00", align 1
@MSG_UNDID_LOAD_STATE = common dso_local global i32 0, align 4
@RARCH_NETPLAY_CTL_LOAD_SAVESTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @command_event_undo_load_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_undo_load_state(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i64 (...) @content_undo_load_buf_is_empty()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @MSG_NO_STATE_HAS_BEEN_LOADED_YET, align 4
  %10 = call i8* @msg_hash_to_str(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @strlcpy(i8* %8, i8* %10, i64 %11)
  br label %28

13:                                               ; preds = %2
  %14 = call i32 (...) @content_undo_load_state()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @MSG_FAILED_TO_UNDO_LOAD_STATE, align 4
  %20 = call i8* @msg_hash_to_str(i32 %19)
  %21 = call i32 @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %28

22:                                               ; preds = %13
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @MSG_UNDID_LOAD_STATE, align 4
  %25 = call i8* @msg_hash_to_str(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @strlcpy(i8* %23, i8* %25, i64 %26)
  br label %28

28:                                               ; preds = %22, %16, %7
  ret void
}

declare dso_local i64 @content_undo_load_buf_is_empty(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @content_undo_load_state(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
