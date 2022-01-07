; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps2.c_frontend_ps2_parse_drive_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps2.c_frontend_ps2_parse_drive_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@BOOT_DEVICE_MC0 = common dso_local global i32 0, align 4
@FILE_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@BOOT_DEVICE_MC1 = common dso_local global i32 0, align 4
@BOOT_DEVICE_CDFS = common dso_local global i32 0, align 4
@BOOT_DEVICE_MASS = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @frontend_ps2_parse_drive_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_ps2_parse_drive_list(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_UNKNOWN, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @BOOT_DEVICE_MC0, align 4
  %19 = call i8* @rootDevicePath(i32 %18)
  %20 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %21 = call i32 @msg_hash_to_str(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %24 = call i32 @menu_entries_append_enum(i32* %17, i8* %19, i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @BOOT_DEVICE_MC1, align 4
  %27 = call i8* @rootDevicePath(i32 %26)
  %28 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %29 = call i32 @msg_hash_to_str(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %32 = call i32 @menu_entries_append_enum(i32* %25, i8* %27, i32 %29, i32 %30, i32 %31, i32 0, i32 0)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @BOOT_DEVICE_CDFS, align 4
  %35 = call i8* @rootDevicePath(i32 %34)
  %36 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %37 = call i32 @msg_hash_to_str(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %40 = call i32 @menu_entries_append_enum(i32* %33, i8* %35, i32 %37, i32 %38, i32 %39, i32 0, i32 0)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @BOOT_DEVICE_MASS, align 4
  %43 = call i8* @rootDevicePath(i32 %42)
  %44 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %45 = call i32 @msg_hash_to_str(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %48 = call i32 @menu_entries_append_enum(i32* %41, i8* %43, i32 %45, i32 %46, i32 %47, i32 0, i32 0)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @BOOT_DEVICE_HOST, align 4
  %51 = call i8* @rootDevicePath(i32 %50)
  %52 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %53 = call i32 @msg_hash_to_str(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %56 = call i32 @menu_entries_append_enum(i32* %49, i8* %51, i32 %53, i32 %54, i32 %55, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @menu_entries_append_enum(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @rootDevicePath(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
