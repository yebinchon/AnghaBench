; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoGetInternal.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoGetInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@Pico = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoGetInternal(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %35 [
    i32 128, label %6
    i32 129, label %10
    i32 130, label %14
    i32 131, label %21
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico, i32 0, i32 2), align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico, i32 0, i32 1, i32 0), align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico, i32 0, i32 0, i32 0), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 12
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico, i32 0, i32 1, i32 0), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico, i32 0, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i1 [ false, %21 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %2, %30, %14, %10, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
