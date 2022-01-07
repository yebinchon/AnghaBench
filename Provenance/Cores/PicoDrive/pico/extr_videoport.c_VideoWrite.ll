; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_VideoWrite.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_VideoWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PDRAW_DIRTY_SPRITES = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @VideoWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VideoWrite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 4, i32 0), align 8
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 4, i32 1), align 4
  switch i32 %5, label %53 [
    i32 1, label %6
    i32 3, label %37
    i32 5, label %45
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 8
  %15 = or i32 %12, %14
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %6
  %17 = load i32, i32* %2, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0), align 8
  %19 = load i32, i32* %3, align 4
  %20 = lshr i32 %19, 1
  %21 = and i32 %20, 32767
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 4, i32 2), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 127
  %29 = shl i32 %28, 9
  %30 = sub i32 %24, %29
  %31 = icmp ult i32 %30, 1024
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load i32, i32* @PDRAW_DIRTY_SPRITES, align 4
  %34 = load i32, i32* @rendstatus, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @rendstatus, align 4
  br label %36

36:                                               ; preds = %32, %16
  br label %53

37:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 3, i32 0), align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1), align 8
  %40 = load i32, i32* %3, align 4
  %41 = lshr i32 %40, 1
  %42 = and i32 %41, 63
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32 %38, i32* %44, align 4
  br label %53

45:                                               ; preds = %1
  %46 = load i32, i32* %2, align 4
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 2), align 8
  %48 = load i32, i32* %3, align 4
  %49 = lshr i32 %48, 1
  %50 = and i32 %49, 63
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %1, %45, %37, %36
  %54 = call i32 (...) @AutoIncrement()
  ret void
}

declare dso_local i32 @AutoIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
