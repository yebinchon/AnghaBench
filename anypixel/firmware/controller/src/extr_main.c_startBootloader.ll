; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_startBootloader.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_startBootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@ledpackets = common dso_local global %struct.TYPE_4__* null, align 8
@PANEL_NW = common dso_local global i64 0, align 8
@PKT_TYPE_REBOOT = common dso_local global i32 0, align 4
@PKT_TYPE_BL_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startBootloader() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %4 = load i64, i64* @PANEL_NW, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %2, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32, i32* @PKT_TYPE_REBOOT, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %16 = load i64, i64* @PANEL_NW, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 -2123739470, i32* %21, align 4
  %22 = call i32 (...) @BLhelper_dup()
  %23 = call i32 (...) @BLhelper_send()
  %24 = call i32 @Delay(i32 100)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* @PKT_TYPE_BL_INIT, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %35 = load i64, i64* @PANEL_NW, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = call i32 (...) @BLhelper_send()
  %40 = call i32 @Delay(i32 500)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %29

44:                                               ; preds = %29
  ret void
}

declare dso_local i32 @BLhelper_dup(...) #1

declare dso_local i32 @BLhelper_send(...) #1

declare dso_local i32 @Delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
