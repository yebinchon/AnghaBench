; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps4.c_hidpad_ps4_check_dpad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps4.c_hidpad_ps4_check_dpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps4 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DPAD_LEFT_UP = common dso_local global i32 0, align 4
@DPAD_UP = common dso_local global i32 0, align 4
@DPAD_UP_RIGHT = common dso_local global i32 0, align 4
@DPAD_RIGHT = common dso_local global i32 0, align 4
@DPAD_RIGHT_DOWN = common dso_local global i32 0, align 4
@DPAD_DOWN = common dso_local global i32 0, align 4
@DPAD_DOWN_LEFT = common dso_local global i32 0, align 4
@DPAD_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps4*, i32)* @hidpad_ps4_check_dpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpad_ps4_check_dpad(%struct.ps4* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps4*, align 8
  %5 = alloca i32, align 4
  store %struct.ps4* %0, %struct.ps4** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %103 [
    i32 128, label %7
    i32 129, label %31
    i32 131, label %55
    i32 130, label %79
  ]

7:                                                ; preds = %2
  %8 = load %struct.ps4*, %struct.ps4** %4, align 8
  %9 = getelementptr inbounds %struct.ps4, %struct.ps4* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DPAD_LEFT_UP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = load %struct.ps4*, %struct.ps4** %4, align 8
  %16 = getelementptr inbounds %struct.ps4, %struct.ps4* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DPAD_UP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load %struct.ps4*, %struct.ps4** %4, align 8
  %23 = getelementptr inbounds %struct.ps4, %struct.ps4* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DPAD_UP_RIGHT, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %21, %14, %7
  %29 = phi i1 [ true, %14 ], [ true, %7 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %104

31:                                               ; preds = %2
  %32 = load %struct.ps4*, %struct.ps4** %4, align 8
  %33 = getelementptr inbounds %struct.ps4, %struct.ps4* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DPAD_UP_RIGHT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load %struct.ps4*, %struct.ps4** %4, align 8
  %40 = getelementptr inbounds %struct.ps4, %struct.ps4* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DPAD_RIGHT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.ps4*, %struct.ps4** %4, align 8
  %47 = getelementptr inbounds %struct.ps4, %struct.ps4* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DPAD_RIGHT_DOWN, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %45, %38, %31
  %53 = phi i1 [ true, %38 ], [ true, %31 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %104

55:                                               ; preds = %2
  %56 = load %struct.ps4*, %struct.ps4** %4, align 8
  %57 = getelementptr inbounds %struct.ps4, %struct.ps4* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DPAD_RIGHT_DOWN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %55
  %63 = load %struct.ps4*, %struct.ps4** %4, align 8
  %64 = getelementptr inbounds %struct.ps4, %struct.ps4* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DPAD_DOWN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.ps4*, %struct.ps4** %4, align 8
  %71 = getelementptr inbounds %struct.ps4, %struct.ps4* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DPAD_DOWN_LEFT, align 4
  %75 = icmp eq i32 %73, %74
  br label %76

76:                                               ; preds = %69, %62, %55
  %77 = phi i1 [ true, %62 ], [ true, %55 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %104

79:                                               ; preds = %2
  %80 = load %struct.ps4*, %struct.ps4** %4, align 8
  %81 = getelementptr inbounds %struct.ps4, %struct.ps4* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DPAD_DOWN_LEFT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %79
  %87 = load %struct.ps4*, %struct.ps4** %4, align 8
  %88 = getelementptr inbounds %struct.ps4, %struct.ps4* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DPAD_LEFT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load %struct.ps4*, %struct.ps4** %4, align 8
  %95 = getelementptr inbounds %struct.ps4, %struct.ps4* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DPAD_LEFT_UP, align 4
  %99 = icmp eq i32 %97, %98
  br label %100

100:                                              ; preds = %93, %86, %79
  %101 = phi i1 [ true, %86 ], [ true, %79 ], [ %99, %93 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %100, %76, %52, %28
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
