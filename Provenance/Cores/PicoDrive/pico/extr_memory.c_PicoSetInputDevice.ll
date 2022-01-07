; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoSetInputDevice.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoSetInputDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_pad_3btn = common dso_local global i32* null, align 8
@read_pad_6btn = common dso_local global i32* null, align 8
@read_nothing = common dso_local global i32* null, align 8
@port_readers = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoSetInputDevice(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %26

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %18 [
    i32 129, label %14
    i32 128, label %16
  ]

14:                                               ; preds = %12
  %15 = load i32*, i32** @read_pad_3btn, align 8
  store i32* %15, i32** %5, align 8
  br label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** @read_pad_6btn, align 8
  store i32* %17, i32** %5, align 8
  br label %20

18:                                               ; preds = %12
  %19 = load i32*, i32** @read_nothing, align 8
  store i32* %19, i32** %5, align 8
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = load i32*, i32** %5, align 8
  %22 = load i32**, i32*** @port_readers, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* %21, i32** %25, align 8
  br label %26

26:                                               ; preds = %20, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
