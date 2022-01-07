; ModuleID = '/home/carl/AnghaBench/RetroArch/tools/ranetplayer/extr_ranetplayer.c_send_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tools/ranetplayer/extr_ranetplayer.c_send_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ranp_in = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@cmd_size = common dso_local global i32 0, align 4
@payload = common dso_local global i32* null, align 8
@NETPLAY_CMD_INFO = common dso_local global i32 0, align 4
@frame_offset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_input(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  br label %5

5:                                                ; preds = %1, %33, %48
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @ranp_in, align 4
  %7 = call i32 @read(i32 %6, i32* @cmd, i32 8)
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 8
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i32, i32* @ranp_in, align 4
  %12 = call i32 @read(i32 %11, i32* @cmd_size, i32 8)
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %5
  store i32 0, i32* %2, align 4
  br label %50

16:                                               ; preds = %10
  %17 = load i32, i32* @cmd, align 4
  %18 = call i32 @ntohl(i32 %17)
  store i32 %18, i32* @cmd, align 4
  %19 = load i32, i32* @cmd_size, align 4
  %20 = call i32 @ntohl(i32 %19)
  store i32 %20, i32* @cmd_size, align 4
  %21 = call i32 (...) @EXPAND()
  %22 = load i32, i32* @ranp_in, align 4
  %23 = load i32*, i32** @payload, align 8
  %24 = load i32, i32* @cmd_size, align 4
  %25 = call i32 @read(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @cmd_size, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %50

29:                                               ; preds = %16
  %30 = load i32, i32* @cmd, align 4
  %31 = load i32, i32* @NETPLAY_CMD_INFO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %5

34:                                               ; preds = %29
  %35 = call i64 @frame_offset_cmd(i32 0)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* @frame_offset, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = call i32 (...) @SEND()
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %42
  br label %5

49:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %28, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @EXPAND(...) #1

declare dso_local i64 @frame_offset_cmd(i32) #1

declare dso_local i32 @SEND(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
