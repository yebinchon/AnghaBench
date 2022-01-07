; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/mdns/main/extr_mdns_example_main.c_check_button.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/mdns/main/extr_mdns_example_main.c_check_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_button.old_level = internal global i32 1, align 4
@EXAMPLE_BUTTON_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"esp32\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"_arduino\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_tcp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_http\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"_printer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_ipp\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"_afpovertcp\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"_smb\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"_ftp\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"_nfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_button() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EXAMPLE_BUTTON_GPIO, align 4
  %3 = call i32 @gpio_get_level(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @check_button.old_level, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = call i32 @query_mdns_host(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @query_mdns_service(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @query_mdns_service(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @query_mdns_service(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @query_mdns_service(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @query_mdns_service(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @query_mdns_service(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @query_mdns_service(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @query_mdns_service(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %9, %6, %0
  %20 = load i32, i32* %1, align 4
  store i32 %20, i32* @check_button.old_level, align 4
  ret void
}

declare dso_local i32 @gpio_get_level(i32) #1

declare dso_local i32 @query_mdns_host(i8*) #1

declare dso_local i32 @query_mdns_service(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
