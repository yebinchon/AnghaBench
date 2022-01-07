; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_command.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netplay_connection = type { i32 }

@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_command(i32* %0, %struct.netplay_connection* %1, i32 %2, i8* %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.netplay_connection*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @retro_assert(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @netplay_send_raw_cmd(i32* %18, %struct.netplay_connection* %19, i32 %20, i8* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %31

26:                                               ; preds = %7
  %27 = load i8*, i8** %15, align 8
  %28 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %29 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %30 = call i32 @runloop_msg_queue_push(i8* %27, i32 1, i32 180, i32 0, i32* null, i32 %28, i32 %29)
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @retro_assert(i32*) #1

declare dso_local i32 @netplay_send_raw_cmd(i32*, %struct.netplay_connection*, i32, i8*, i64) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
