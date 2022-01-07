; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_driver_ctl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_driver_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@netplay_data = common dso_local global %struct.TYPE_13__* null, align 8
@in_netplay = common dso_local global i32 0, align 4
@netplay_enabled = common dso_local global i32 0, align 4
@netplay_is_client = common dso_local global i32 0, align 4
@CMD_EVENT_DISCORD_UPDATE = common dso_local global i32 0, align 4
@DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED = common dso_local global i32 0, align 4
@discord_is_inited = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_driver_ctl(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** @netplay_data, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* @in_netplay, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %119

12:                                               ; preds = %2
  store i32 1, i32* @in_netplay, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %34 [
    i32 142, label %17
    i32 143, label %18
    i32 145, label %19
    i32 137, label %20
    i32 136, label %22
    i32 138, label %22
    i32 135, label %23
    i32 139, label %33
  ]

17:                                               ; preds = %15
  store i32 1, i32* @netplay_enabled, align 4
  store i32 0, i32* @netplay_is_client, align 4
  br label %117

18:                                               ; preds = %15
  store i32 1, i32* @netplay_enabled, align 4
  store i32 1, i32* @netplay_is_client, align 4
  br label %35

19:                                               ; preds = %15
  store i32 0, i32* @netplay_enabled, align 4
  br label %117

20:                                               ; preds = %15
  %21 = load i32, i32* @netplay_enabled, align 4
  store i32 %21, i32* %7, align 4
  br label %117

22:                                               ; preds = %15, %15
  store i32 0, i32* %7, align 4
  br label %117

23:                                               ; preds = %15
  %24 = load i32, i32* @netplay_enabled, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @netplay_is_client, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %117

33:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %117

34:                                               ; preds = %15
  br label %117

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %114 [
    i32 142, label %38
    i32 143, label %38
    i32 138, label %38
    i32 145, label %39
    i32 137, label %40
    i32 136, label %41
    i32 135, label %45
    i32 139, label %55
    i32 131, label %59
    i32 130, label %62
    i32 140, label %65
    i32 132, label %68
    i32 128, label %71
    i32 134, label %74
    i32 129, label %79
    i32 144, label %82
    i32 141, label %85
    i32 146, label %90
    i32 147, label %95
    i32 133, label %115
  ]

38:                                               ; preds = %36, %36, %36
  br label %117

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %117

40:                                               ; preds = %36
  br label %117

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %117

45:                                               ; preds = %36
  %46 = load i32, i32* @netplay_enabled, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @netplay_is_client, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %117

55:                                               ; preds = %36
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  br label %117

59:                                               ; preds = %36
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = call i32 @netplay_post_frame(%struct.TYPE_13__* %60)
  br label %116

62:                                               ; preds = %36
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i32 @netplay_pre_frame(%struct.TYPE_13__* %63)
  store i32 %64, i32* %7, align 4
  br label %117

65:                                               ; preds = %36
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = call i32 @netplay_toggle_play_spectate(%struct.TYPE_13__* %66)
  br label %116

68:                                               ; preds = %36
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = call i32 @netplay_frontend_paused(%struct.TYPE_13__* %69, i32 1)
  br label %116

71:                                               ; preds = %36
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = call i32 @netplay_frontend_paused(%struct.TYPE_13__* %72, i32 0)
  br label %116

74:                                               ; preds = %36
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = call i32 @netplay_load_savestate(%struct.TYPE_13__* %75, i32* %77, i32 1)
  br label %116

79:                                               ; preds = %36
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = call i32 @netplay_core_reset(%struct.TYPE_13__* %80)
  br label %116

82:                                               ; preds = %36
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = call i32 @netplay_disconnect(%struct.TYPE_13__* %83)
  store i32 %84, i32* %7, align 4
  br label %117

85:                                               ; preds = %36
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = call i32 @netplay_announce_nat_traversal(%struct.TYPE_13__* %88)
  br label %117

90:                                               ; preds = %36
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %116

95:                                               ; preds = %36
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = call i32 @netplay_load_savestate(%struct.TYPE_13__* %110, i32* null, i32 1)
  br label %112

112:                                              ; preds = %109, %100
  br label %113

113:                                              ; preds = %112, %95
  br label %116

114:                                              ; preds = %36
  br label %115

115:                                              ; preds = %36, %114
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %113, %90, %79, %74, %71, %68, %65, %59
  br label %117

117:                                              ; preds = %116, %85, %82, %62, %55, %52, %41, %40, %39, %38, %34, %33, %30, %22, %20, %19, %17
  store i32 0, i32* @in_netplay, align 4
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %11
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @netplay_post_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @netplay_pre_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @netplay_toggle_play_spectate(%struct.TYPE_13__*) #1

declare dso_local i32 @netplay_frontend_paused(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @netplay_load_savestate(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @netplay_core_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @netplay_disconnect(%struct.TYPE_13__*) #1

declare dso_local i32 @netplay_announce_nat_traversal(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
