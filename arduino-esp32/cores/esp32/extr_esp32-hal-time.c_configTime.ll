; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-time.c_configTime.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-time.c_configTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNTP_OPMODE_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configTime(i64 %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = call i32 (...) @tcpip_adapter_init()
  %12 = call i64 (...) @sntp_enabled()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call i32 (...) @sntp_stop()
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, i32* @SNTP_OPMODE_POLL, align 4
  %18 = call i32 @sntp_setoperatingmode(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sntp_setservername(i32 0, i8* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @sntp_setservername(i32 1, i8* %21)
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @sntp_setservername(i32 2, i8* %23)
  %25 = call i32 (...) @sntp_init()
  %26 = load i64, i64* %6, align 8
  %27 = sub nsw i64 0, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @setTimeZone(i64 %27, i32 %28)
  ret void
}

declare dso_local i32 @tcpip_adapter_init(...) #1

declare dso_local i64 @sntp_enabled(...) #1

declare dso_local i32 @sntp_stop(...) #1

declare dso_local i32 @sntp_setoperatingmode(i32) #1

declare dso_local i32 @sntp_setservername(i32, i8*) #1

declare dso_local i32 @sntp_init(...) #1

declare dso_local i32 @setTimeZone(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
