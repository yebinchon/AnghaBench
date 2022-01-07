; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_ToggleConsole_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_ToggleConsole_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@g_consoleField = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_console_field_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_ToggleConsole_f() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %2 = load i64, i64* @CA_DISCONNECTED, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %6 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (...) @CL_StartDemoLoop()
  br label %17

10:                                               ; preds = %4, %0
  %11 = call i32 @Field_Clear(%struct.TYPE_4__* @g_consoleField)
  %12 = load i32, i32* @g_console_field_width, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_consoleField, i32 0, i32 0), align 4
  %13 = call i32 (...) @Con_ClearNotify()
  %14 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %16 = xor i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  br label %17

17:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @CL_StartDemoLoop(...) #1

declare dso_local i32 @Field_Clear(%struct.TYPE_4__*) #1

declare dso_local i32 @Con_ClearNotify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
