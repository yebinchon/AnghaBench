; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/examples/send-presence/extr_send-presence.c_discordInit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/examples/send-presence/extr_send-presence.c_discordInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@handleDiscordReady = common dso_local global i32 0, align 4
@handleDiscordDisconnected = common dso_local global i32 0, align 4
@handleDiscordError = common dso_local global i32 0, align 4
@handleDiscordJoin = common dso_local global i32 0, align 4
@handleDiscordSpectate = common dso_local global i32 0, align 4
@handleDiscordJoinRequest = common dso_local global i32 0, align 4
@APPLICATION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @discordInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discordInit() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 24)
  %3 = load i32, i32* @handleDiscordReady, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @handleDiscordDisconnected, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @handleDiscordError, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @handleDiscordJoin, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @handleDiscordSpectate, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @handleDiscordJoinRequest, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @APPLICATION_ID, align 4
  %16 = call i32 @Discord_Initialize(i32 %15, %struct.TYPE_4__* %1, i32 1, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Discord_Initialize(i32, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
