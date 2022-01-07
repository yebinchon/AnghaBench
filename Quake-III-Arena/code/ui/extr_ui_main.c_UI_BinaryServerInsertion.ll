; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BinaryServerInsertion.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BinaryServerInsertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@uiInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ui_netSource = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_BinaryServerInsertion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BinaryServerInsertion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 0), align 8
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %50, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netSource, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 3), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 2), align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 1), align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @trap_LAN_CompareServers(i32 %15, i32 %16, i32 %17, i32 %18, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %12
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @UI_InsertServerIntoDisplayList(i32 %30, i32 %33)
  br label %61

35:                                               ; preds = %12
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49
  br label %9

51:                                               ; preds = %9
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @UI_InsertServerIntoDisplayList(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %29
  ret void
}

declare dso_local i32 @trap_LAN_CompareServers(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_InsertServerIntoDisplayList(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
