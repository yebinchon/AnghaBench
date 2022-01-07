; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_input_st_string_cb_enable_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_input_st_string_cb_enable_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MSG_INPUT_ENABLE_SETTINGS_PASSWORD_OK = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_INPUT_ENABLE_SETTINGS_PASSWORD_NOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @menu_input_st_string_cb_enable_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_st_string_cb_enable_settings(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = call i8* (...) @menu_input_dialog_get_buffer()
  store i8* %15, i8** %5, align 8
  %16 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @string_is_equal(i8* %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @MSG_INPUT_ENABLE_SETTINGS_PASSWORD_OK, align 4
  %29 = call i32 @msg_hash_to_str(i32 %28)
  %30 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %31 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %32 = call i32 @runloop_msg_queue_push(i32 %29, i32 1, i32 100, i32 1, i32* null, i32 %30, i32 %31)
  br label %39

33:                                               ; preds = %14
  %34 = load i32, i32* @MSG_INPUT_ENABLE_SETTINGS_PASSWORD_NOK, align 4
  %35 = call i32 @msg_hash_to_str(i32 %34)
  %36 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %37 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %38 = call i32 @runloop_msg_queue_push(i32 %35, i32 1, i32 100, i32 1, i32* null, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %24
  br label %40

40:                                               ; preds = %39, %9, %2
  %41 = call i32 (...) @menu_input_dialog_end()
  ret void
}

declare dso_local i8* @menu_input_dialog_get_buffer(...) #1

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_input_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
