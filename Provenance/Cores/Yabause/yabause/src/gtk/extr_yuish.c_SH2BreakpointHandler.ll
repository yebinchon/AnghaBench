; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_SH2BreakpointHandler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_SH2BreakpointHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@yui = common dso_local global i32 0, align 4
@MSH2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @SH2BreakpointHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SH2BreakpointHandler(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @yui, align 4
  %10 = call i32 @yui_window_pause(i32 %9)
  %11 = load i32, i32* @yui, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** @MSH2, align 8
  %14 = icmp eq i32* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @yui_sh_new(i32 %11, i32 %15)
  %17 = call %struct.TYPE_9__* @YUI_SH(i32 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SH2GetRegisters(i32 %20, %struct.TYPE_8__* %7)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = call i32 @SH2UpdateRegList(%struct.TYPE_9__* %22, %struct.TYPE_8__* %7)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SH2UpdateCodeList(%struct.TYPE_9__* %24, i32 %26)
  %28 = call i32 (...) @debugPauseLoop()
  ret void
}

declare dso_local i32 @yui_window_pause(i32) #1

declare dso_local %struct.TYPE_9__* @YUI_SH(i32) #1

declare dso_local i32 @yui_sh_new(i32, i32) #1

declare dso_local i32 @SH2GetRegisters(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SH2UpdateRegList(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @SH2UpdateCodeList(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @debugPauseLoop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
