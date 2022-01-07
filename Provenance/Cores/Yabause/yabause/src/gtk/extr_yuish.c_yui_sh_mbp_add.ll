; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_mbp_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_mbp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%8X\00", align 1
@BREAK_BYTEREAD = common dso_local global i32 0, align 4
@BREAK_WORDREAD = common dso_local global i32 0, align 4
@BREAK_LONGREAD = common dso_local global i32 0, align 4
@BREAK_BYTEWRITE = common dso_local global i32 0, align 4
@BREAK_WORDWRITE = common dso_local global i32 0, align 4
@BREAK_LONGWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @yui_sh_mbp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_sh_mbp_add(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64* @gtk_entry_get_text(i32* %9)
  store i64* %10, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %38

15:                                               ; preds = %2
  %16 = load i64*, i64** %6, align 8
  %17 = call i32 @sscanf(i64* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BREAK_BYTEREAD, align 4
  %23 = load i32, i32* @BREAK_WORDREAD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BREAK_LONGREAD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BREAK_WORDWRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BREAK_LONGWRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @SH2AddMemoryBreakpoint(i32 %20, i32 %21, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @gtk_entry_set_text(i32* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64* @gtk_entry_get_text(i32*) #1

declare dso_local i32 @sscanf(i64*, i8*, i32*) #1

declare dso_local i32 @SH2AddMemoryBreakpoint(i32, i32, i32) #1

declare dso_local i32 @gtk_entry_set_text(i32*, i8*) #1

declare dso_local i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
