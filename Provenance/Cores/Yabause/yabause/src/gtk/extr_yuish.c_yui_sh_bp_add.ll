; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_bp_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_bp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%8X\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @yui_sh_bp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_sh_bp_add(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64* @gtk_entry_get_text(i32* %10)
  store i64* %11, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load i64*, i64** %6, align 8
  %18 = call i32 @sscanf(i64* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @SH2AddCodeBreakpoint(i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @gtk_entry_set_text(i32* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SH2GetRegisters(i32 %28, %struct.TYPE_8__* %8)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SH2UpdateCodeList(%struct.TYPE_9__* %30, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i32 @SH2UpdateBreakpointList(%struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64* @gtk_entry_get_text(i32*) #1

declare dso_local i32 @sscanf(i64*, i8*, i32*) #1

declare dso_local i32 @SH2AddCodeBreakpoint(i32, i32) #1

declare dso_local i32 @gtk_entry_set_text(i32*, i8*) #1

declare dso_local i32 @SH2GetRegisters(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SH2UpdateCodeList(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SH2UpdateBreakpointList(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
