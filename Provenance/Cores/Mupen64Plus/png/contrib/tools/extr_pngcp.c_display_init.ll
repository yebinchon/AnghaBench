; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i8*, i8*, i8*, i32, i64, i64, i32*, i32*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"no output file\00", align 1
@WARNINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @display_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_init(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  store %struct.display* %0, %struct.display** %2, align 8
  %3 = load %struct.display*, %struct.display** %2, align 8
  %4 = call i32 @memset(%struct.display* %3, i32 0, i32 96)
  %5 = load %struct.display*, %struct.display** %2, align 8
  %6 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load %struct.display*, %struct.display** %2, align 8
  %8 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.display*, %struct.display** %2, align 8
  %10 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @WARNINGS, align 4
  %12 = load %struct.display*, %struct.display** %2, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load %struct.display*, %struct.display** %2, align 8
  %15 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 10
  store i32* null, i32** %15, align 8
  %16 = load %struct.display*, %struct.display** %2, align 8
  %17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 9
  store i32* null, i32** %17, align 8
  %18 = load %struct.display*, %struct.display** %2, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  %20 = load %struct.display*, %struct.display** %2, align 8
  %21 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 7
  store i32* null, i32** %21, align 8
  %22 = load %struct.display*, %struct.display** %2, align 8
  %23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 3
  store i32 -1, i32* %23, align 8
  ret void
}

declare dso_local i32 @memset(%struct.display*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
