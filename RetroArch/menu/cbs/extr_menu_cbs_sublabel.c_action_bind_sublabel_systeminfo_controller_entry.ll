; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_systeminfo_controller_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_systeminfo_controller_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_USERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Port #%d device name: %s (#%d)\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Device display name: %s\0ADevice config name: %s\0ADevice identifiers: %d/%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_systeminfo_controller_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_systeminfo_controller_entry(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4096 x i8], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %40, %7
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* @MAX_USERS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32, i32* %16, align 4
  %23 = call i64 @input_is_autoconfigured(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i8* @input_config_get_device_name(i32 %28)
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @input_autoconfigure_get_device_name_index(i32 %30)
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 4096, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %29, i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %35 = call i64 @string_is_equal(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %43

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %16, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %17

43:                                               ; preds = %37, %17
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %45 = load i32, i32* %16, align 4
  %46 = call i8* @input_config_get_device_display_name(i32 %45)
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %16, align 4
  %50 = call i8* @input_config_get_device_display_name(i32 %49)
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i8* [ %50, %48 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %51 ]
  %54 = load i32, i32* %16, align 4
  %55 = call i8* @input_config_get_device_display_name(i32 %54)
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %16, align 4
  %59 = call i8* @input_config_get_device_config_name(i32 %58)
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i8* [ %59, %57 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %60 ]
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @input_config_get_vid(i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @input_config_get_pid(i32 %65)
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 4096, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %62, i32 %64, i32 %66)
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @strlcpy(i8* %68, i8* %69, i64 %70)
  ret i32 0
}

declare dso_local i64 @input_is_autoconfigured(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @input_config_get_device_name(i32) #1

declare dso_local i32 @input_autoconfigure_get_device_name_index(i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @input_config_get_device_display_name(i32) #1

declare dso_local i8* @input_config_get_device_config_name(i32) #1

declare dso_local i32 @input_config_get_vid(i32) #1

declare dso_local i32 @input_config_get_pid(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
