; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-time.c_configTzTime.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-time.c_configTzTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNTP_OPMODE_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configTzTime(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = call i32 (...) @tcpip_adapter_init()
  %10 = call i64 (...) @sntp_enabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 (...) @sntp_stop()
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i32, i32* @SNTP_OPMODE_POLL, align 4
  %16 = call i32 @sntp_setoperatingmode(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sntp_setservername(i32 0, i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @sntp_setservername(i32 1, i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @sntp_setservername(i32 2, i8* %21)
  %23 = call i32 (...) @sntp_init()
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24, i32 1)
  %26 = call i32 (...) @tzset()
  ret void
}

declare dso_local i32 @tcpip_adapter_init(...) #1

declare dso_local i64 @sntp_enabled(...) #1

declare dso_local i32 @sntp_stop(...) #1

declare dso_local i32 @sntp_setoperatingmode(i32) #1

declare dso_local i32 @sntp_setservername(i32, i8*) #1

declare dso_local i32 @sntp_init(...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @tzset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
