; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_cmd_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_cmd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.netplay_connection }
%struct.netplay_connection = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@NETPLAY_CMD_SPECTATE = common dso_local global i32 0, align 4
@NETPLAY_CMD_PLAY_BIT_SLAVE = common dso_local global i32 0, align 4
@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@NETPLAY_CMD_PLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_cmd_mode(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %13 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %11, align 8
  store %struct.netplay_connection* null, %struct.netplay_connection** %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store %struct.netplay_connection* %20, %struct.netplay_connection** %12, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %60 [
    i32 128, label %23
    i32 129, label %25
    i32 130, label %27
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @NETPLAY_CMD_SPECTATE, align 4
  store i32 %24, i32* %6, align 4
  br label %61

25:                                               ; preds = %21
  %26 = load i32, i32* @NETPLAY_CMD_PLAY_BIT_SLAVE, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %21, %25
  store i32* %8, i32** %9, align 8
  %28 = call i32 (...) @netplay_settings_share_mode()
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %53, %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @htonl(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @NETPLAY_CMD_PLAY, align 4
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %87

61:                                               ; preds = %56, %23
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i64 4, i64 0
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @handle_play_spectate(%struct.TYPE_10__* %67, i32 0, i32* null, i32 %68, i32 %73, i32* %74)
  store i32 1, i32* %3, align 4
  br label %87

76:                                               ; preds = %61
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = icmp ne i32* %81, null
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i64 4, i64 0
  %85 = trunc i64 %84 to i32
  %86 = call i32 @netplay_send_raw_cmd(%struct.TYPE_10__* %77, %struct.netplay_connection* %78, i32 %79, i32* %80, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %76, %66, %60
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @netplay_settings_share_mode(...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @handle_play_spectate(%struct.TYPE_10__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @netplay_send_raw_cmd(%struct.TYPE_10__*, %struct.netplay_connection*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
