; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_save_current_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_save_current_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"[config] Config directory not set, cannot save configuration.\00", align 1
@MSG_OVERRIDES_SAVED_SUCCESSFULLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"[config] [overrides] %s\0A\00", align 1
@runloop_overrides_active = common dso_local global i32 0, align 4
@MSG_OVERRIDES_ERROR_SAVING = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @command_event_save_current_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_save_current_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %4, align 16
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %38 [
    i32 128, label %6
    i32 129, label %19
    i32 130, label %19
    i32 131, label %19
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %8 = call i32 @path_is_empty(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %12 = call i32 @strlcpy(i8* %11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %18

13:                                               ; preds = %6
  %14 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %15 = call i32 @path_get(i32 %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %17 = call i32 @command_event_save_config(i32 %15, i8* %16, i32 128)
  br label %18

18:                                               ; preds = %13, %10
  br label %38

19:                                               ; preds = %1, %1, %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @config_save_overrides(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %25 = load i32, i32* @MSG_OVERRIDES_SAVED_SUCCESSFULLY, align 4
  %26 = call i8* @msg_hash_to_str(i32 %25)
  %27 = call i32 @strlcpy(i8* %24, i8* %26, i32 128)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 1, i32* @runloop_overrides_active, align 4
  br label %37

30:                                               ; preds = %19
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %32 = load i32, i32* @MSG_OVERRIDES_ERROR_SAVING, align 4
  %33 = call i8* @msg_hash_to_str(i32 %32)
  %34 = call i32 @strlcpy(i8* %31, i8* %33, i32 128)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %36 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %30, %23
  br label %38

38:                                               ; preds = %1, %37, %18
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %40 = call i32 @string_is_empty(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %44 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %45 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %46 = call i32 @runloop_msg_queue_push(i8* %43, i32 1, i32 180, i32 1, i32* null, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @command_event_save_config(i32, i8*, i32) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i32 @config_save_overrides(i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
