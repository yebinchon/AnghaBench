; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_VideoRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_VideoRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"VDP read with bad type %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @VideoRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VideoRead() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 3, i32 0), align 8
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = lshr i32 %4, 1
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 3, i32 1), align 4
  switch i32 %6, label %28 [
    i32 0, label %7
    i32 8, label %14
    i32 4, label %21
  ]

7:                                                ; preds = %0
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, 32767
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %0
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, 63
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %0
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 2), align 8
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, 63
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %0
  %29 = load i32, i32* @EL_ANOMALY, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 3, i32 1), align 4
  %31 = call i32 @elprintf(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %21, %14, %7
  %33 = call i32 (...) @AutoIncrement()
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @AutoIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
