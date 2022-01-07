; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_MessageMode_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_MessageMode_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@chat_playerNum = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@chat_team = common dso_local global i32 0, align 4
@chatField = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_MessageMode_f() #0 {
  store i32 -1, i32* @chat_playerNum, align 4
  %1 = load i32, i32* @qfalse, align 4
  store i32 %1, i32* @chat_team, align 4
  %2 = call i32 @Field_Clear(%struct.TYPE_5__* @chatField)
  store i32 30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @chatField, i32 0, i32 0), align 4
  %3 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 4
  %5 = xor i32 %4, %3
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @Field_Clear(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
