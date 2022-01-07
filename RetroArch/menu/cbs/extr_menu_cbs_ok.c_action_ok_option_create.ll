; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_option_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_option_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MSG_ERROR_SAVING_CORE_OPTIONS_FILE = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_CORE_OPTIONS_FILE_CREATED_SUCCESSFULLY = common dso_local global i32 0, align 4
@RARCH_PATH_CORE_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_option_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_option_create(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 16
  %21 = trunc i64 %17 to i32
  %22 = call i32 @retroarch_validate_game_options(i8* %19, i32 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @MSG_ERROR_SAVING_CORE_OPTIONS_FILE, align 4
  %26 = call i32 @msg_hash_to_str(i32 %25)
  %27 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %28 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %29 = call i32 @runloop_msg_queue_push(i32 %26, i32 1, i32 100, i32 1, i32* null, i32 %27, i32 %28)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %53

30:                                               ; preds = %5
  %31 = call i32* @config_file_new_from_path_to_string(i8* %19)
  store i32* %31, i32** %14, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = call i32* (...) @config_file_new_alloc()
  store i32* %34, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %53

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32*, i32** %14, align 8
  %40 = call i64 @config_file_write(i32* %39, i8* %19, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @MSG_CORE_OPTIONS_FILE_CREATED_SUCCESSFULLY, align 4
  %44 = call i32 @msg_hash_to_str(i32 %43)
  %45 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %46 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %47 = call i32 @runloop_msg_queue_push(i32 %44, i32 1, i32 100, i32 1, i32* null, i32 %45, i32 %46)
  %48 = load i32, i32* @RARCH_PATH_CORE_OPTIONS, align 4
  %49 = call i32 @path_set(i32 %48, i8* %19)
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @config_file_free(i32* %51)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %50, %36, %24
  %54 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @retroarch_validate_game_options(i8*, i32, i32) #2

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #2

declare dso_local i32* @config_file_new_alloc(...) #2

declare dso_local i64 @config_file_write(i32*, i8*, i32) #2

declare dso_local i32 @path_set(i32, i8*) #2

declare dso_local i32 @config_file_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
