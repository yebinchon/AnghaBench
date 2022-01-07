; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps3.c_frontend_ps3_parse_drive_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps3.c_frontend_ps3_parse_drive_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/app_home/\00", align 1
@FILE_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev_hdd0/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev_hdd1/\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/dev_bdvd/\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"/host_root/\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"/dev_usb000/\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"/dev_usb001/\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/dev_usb002/\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"/dev_usb003/\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"/dev_usb004/\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"/dev_usb005/\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"/dev_usb006/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @frontend_ps3_parse_drive_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_ps3_parse_drive_list(i8* %0, i32 %1) #0 {
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
  %18 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %19 = call i32 @msg_hash_to_str(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %22 = call i32 @menu_entries_append_enum(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 0, i32 0)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %25 = call i32 @msg_hash_to_str(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %28 = call i32 @menu_entries_append_enum(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 0, i32 0)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %31 = call i32 @msg_hash_to_str(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %34 = call i32 @menu_entries_append_enum(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 0, i32 0)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %37 = call i32 @msg_hash_to_str(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %40 = call i32 @menu_entries_append_enum(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 0, i32 0)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %43 = call i32 @msg_hash_to_str(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %46 = call i32 @menu_entries_append_enum(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 0, i32 0)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %49 = call i32 @msg_hash_to_str(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %52 = call i32 @menu_entries_append_enum(i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 0, i32 0)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %55 = call i32 @msg_hash_to_str(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %58 = call i32 @menu_entries_append_enum(i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 0, i32 0)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %61 = call i32 @msg_hash_to_str(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %64 = call i32 @menu_entries_append_enum(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 0, i32 0)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %67 = call i32 @msg_hash_to_str(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %70 = call i32 @menu_entries_append_enum(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 0, i32 0)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %73 = call i32 @msg_hash_to_str(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %76 = call i32 @menu_entries_append_enum(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 0, i32 0)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %79 = call i32 @msg_hash_to_str(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %82 = call i32 @menu_entries_append_enum(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 0, i32 0)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %85 = call i32 @msg_hash_to_str(i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %88 = call i32 @menu_entries_append_enum(i32* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %85, i32 %86, i32 %87, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @menu_entries_append_enum(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
