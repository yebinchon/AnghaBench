; ModuleID = '/home/carl/AnghaBench/RetroArch/wifi/drivers/extr_connmanctl.c_connmanctl_scan.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wifi/drivers/extr_connmanctl.c_connmanctl_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_list_elem_attr = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RARCH_FILETYPE_UNSET = common dso_local global i32 0, align 4
@lines = common dso_local global i64 0, align 8
@MSG_LOCALAP_SWITCHING_OFF = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"connmanctl enable wifi\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"connmanctl scan wifi\00", align 1
@MSG_WIFI_SCAN_COMPLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"connmanctl services\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @connmanctl_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connmanctl_scan() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca %union.string_list_elem_attr, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %3, align 8
  %6 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load i32, i32* @RARCH_FILETYPE_UNSET, align 4
  %8 = bitcast %union.string_list_elem_attr* %2 to i32*
  store i32 %7, i32* %8, align 4
  %9 = load i64, i64* @lines, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i64, i64* @lines, align 8
  %13 = call i32 @free(i64 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i64 (...) @string_list_new()
  store i64 %15, i64* @lines, align 8
  %16 = call i64 (...) @connmanctl_tether_status()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* @MSG_LOCALAP_SWITCHING_OFF, align 4
  %20 = call i32 @msg_hash_to_str(i32 %19)
  %21 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %22 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %23 = call i32 @runloop_msg_queue_push(i32 %20, i32 1, i32 180, i32 1, i32* null, i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = call i32 @connmanctl_tether_toggle(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %18, %14
  %29 = call i32* @popen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @pclose(i32* %29)
  %31 = call i32* @popen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @pclose(i32* %31)
  %33 = load i32, i32* @MSG_WIFI_SCAN_COMPLETE, align 4
  %34 = call i32 @msg_hash_to_str(i32 %33)
  %35 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %36 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %37 = call i32 @runloop_msg_queue_push(i32 %34, i32 1, i32 180, i32 1, i32* null, i32 %35, i32 %36)
  %38 = call i32* @popen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %60, %28
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %41 = load i32*, i32** %3, align 8
  %42 = call i32* @fgets(i8* %40, i32 512, i32* %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %5, align 8
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %56, %49, %44
  %61 = load i64, i64* @lines, align 8
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %63 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @string_list_append(i64 %61, i8* %62, i32 %64)
  br label %39

66:                                               ; preds = %39
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @pclose(i32* %67)
  ret void
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @string_list_new(...) #1

declare dso_local i64 @connmanctl_tether_status(...) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @connmanctl_tether_toggle(i32, i8*, i8*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @string_list_append(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
