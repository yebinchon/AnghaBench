; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_DrawInput.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_DrawInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }

@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@con = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@re = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@g_consoleField = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_DrawInput() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %3 = load i64, i64* @CA_DISCONNECTED, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 8
  %7 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %39

11:                                               ; preds = %5, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  %13 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sub nsw i32 %12, %14
  store i32 %15, i32* %1, align 4
  %16 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @re, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 2), align 8
  %18 = call i32 %16(i32 %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %20 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %21 = mul nsw i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @SCR_DrawSmallChar(i64 %23, i32 %24, i8 signext 93)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %27 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* %1, align 4
  %32 = load i64, i64* @SCREEN_WIDTH, align 8
  %33 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %34 = mul nsw i32 3, %33
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %32, %35
  %37 = load i32, i32* @qtrue, align 4
  %38 = call i32 @Field_Draw(i32* @g_consoleField, i64 %30, i32 %31, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @SCR_DrawSmallChar(i64, i32, i8 signext) #1

declare dso_local i32 @Field_Draw(i32*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
