; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_config_methods_str2bin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_config_methods_str2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_KEYPAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@WPS_CONFIG_ETHERNET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@WPS_CONFIG_LABEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ext_nfc_token\00", align 1
@WPS_CONFIG_EXT_NFC_TOKEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"int_nfc_token\00", align 1
@WPS_CONFIG_INT_NFC_TOKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"nfc_interface\00", align 1
@WPS_CONFIG_NFC_INTERFACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"push_button\00", align 1
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@WPS_CONFIG_PHY_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_config_methods_str2bin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %8 = load i32, i32* @WPS_CONFIG_KEYPAD, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @os_strstr(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @WPS_CONFIG_ETHERNET, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @os_strstr(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @os_strstr(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @os_strstr(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @WPS_CONFIG_EXT_NFC_TOKEN, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @os_strstr(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @WPS_CONFIG_INT_NFC_TOKEN, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @os_strstr(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @WPS_CONFIG_NFC_INTERFACE, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @os_strstr(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i8*, i8** %2, align 8
  %70 = call i64 @os_strstr(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @WPS_CONFIG_KEYPAD, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %6
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @os_strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
