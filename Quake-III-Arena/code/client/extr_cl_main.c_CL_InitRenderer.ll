; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_InitRenderer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_InitRenderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*)*, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@re = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"gfx/2d/bigchars\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@g_console_field_width = common dso_local global i32 0, align 4
@g_consoleField = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitRenderer() #0 {
  %1 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 1), align 8
  %2 = call i32 %1(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0))
  %3 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %4 = call i32 %3(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 3), align 4
  %5 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %6 = call i32 %5(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 2), align 4
  %7 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %8 = call i32 %7(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 4
  %10 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %11 = sdiv i32 %9, %10
  %12 = sub nsw i32 %11, 2
  store i32 %12, i32* @g_console_field_width, align 4
  %13 = load i32, i32* @g_console_field_width, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_consoleField, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
