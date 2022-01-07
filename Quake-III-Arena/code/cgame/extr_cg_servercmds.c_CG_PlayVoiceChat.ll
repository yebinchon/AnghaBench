; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_PlayVoiceChat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_PlayVoiceChat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }

@CHAN_VOICE = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@cg_noVoiceChats = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@cg_noVoiceText = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@voiceChatBuffer = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_PlayVoiceChat(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
