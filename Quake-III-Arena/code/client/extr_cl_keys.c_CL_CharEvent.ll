; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_CL_CharEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_CL_CharEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@cls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@g_consoleField = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@uivm = common dso_local global i32 0, align 4
@UI_KEY_EVENT = common dso_local global i32 0, align 4
@K_CHAR_FLAG = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@chatField = common dso_local global i32 0, align 4
@CA_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CharEvent(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 96
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 126
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  br label %48

9:                                                ; preds = %5
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %11 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @Field_CharEvent(i32* @g_consoleField, i32 %15)
  br label %48

17:                                               ; preds = %9
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %19 = load i32, i32* @KEYCATCH_UI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* @uivm, align 4
  %24 = load i32, i32* @UI_KEY_EVENT, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @K_CHAR_FLAG, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @qtrue, align 4
  %29 = call i32 @VM_Call(i32 %23, i32 %24, i32 %27, i32 %28)
  br label %47

30:                                               ; preds = %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %32 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @Field_CharEvent(i32* @chatField, i32 %36)
  br label %46

38:                                               ; preds = %30
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 1), align 8
  %40 = load i64, i64* @CA_DISCONNECTED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @Field_CharEvent(i32* @g_consoleField, i32 %43)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %8, %47, %14
  ret void
}

declare dso_local i32 @Field_CharEvent(i32*, i32) #1

declare dso_local i32 @VM_Call(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
