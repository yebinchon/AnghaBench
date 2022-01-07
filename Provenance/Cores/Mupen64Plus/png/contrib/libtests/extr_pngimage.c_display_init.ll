; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_display_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@WARNINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @display_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_init(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  store %struct.display* %0, %struct.display** %2, align 8
  %3 = load %struct.display*, %struct.display** %2, align 8
  %4 = call i32 @memset(%struct.display* %3, i32 0, i32 88)
  %5 = load i32, i32* @WARNINGS, align 4
  %6 = load %struct.display*, %struct.display** %2, align 8
  %7 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 10
  store i32 %5, i32* %7, align 8
  %8 = load %struct.display*, %struct.display** %2, align 8
  %9 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 9
  store i32* null, i32** %9, align 8
  %10 = load %struct.display*, %struct.display** %2, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.display*, %struct.display** %2, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 7
  store i32* null, i32** %13, align 8
  %14 = load %struct.display*, %struct.display** %2, align 8
  %15 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 6
  store i32* null, i32** %15, align 8
  %16 = load %struct.display*, %struct.display** %2, align 8
  %17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.display*, %struct.display** %2, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.display*, %struct.display** %2, align 8
  %21 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.display*, %struct.display** %2, align 8
  %23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 2
  %24 = call i32 @buffer_init(i32* %23)
  ret void
}

declare dso_local i32 @memset(%struct.display*, i32, i32) #1

declare dso_local i32 @buffer_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
