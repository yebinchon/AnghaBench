; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_Event.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ServerOptions_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %38 [
    i32 129, label %9
    i32 130, label %16
    i32 132, label %16
    i32 131, label %18
    i32 128, label %25
    i32 133, label %31
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QM_ACTIVATED, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %38

14:                                               ; preds = %9
  %15 = call i32 (...) @ServerOptions_SetPlayerItems()
  br label %38

16:                                               ; preds = %2, %2
  %17 = call i32 (...) @ServerOptions_SetPlayerItems()
  br label %38

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @QM_ACTIVATED, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %38

23:                                               ; preds = %18
  %24 = call i32 (...) @ServerOptions_Start()
  br label %38

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @QM_ACTIVATED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %38

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @QM_ACTIVATED, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @UI_PopMenu()
  br label %38

38:                                               ; preds = %2, %36, %35, %30, %29, %23, %22, %16, %14, %13
  ret void
}

declare dso_local i32 @ServerOptions_SetPlayerItems(...) #1

declare dso_local i32 @ServerOptions_Start(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
