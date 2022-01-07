; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_scissor_begin.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_scissor_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* }
%struct.TYPE_5__ = type { i32, i32 }

@menu_disp = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_scissor_begin(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @menu_disp, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %98

13:                                               ; preds = %5
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @menu_disp, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %98

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %26
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %40
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %61, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ugt i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub i32 %71, %72
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %75, %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub i32 %85, %86
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @menu_disp, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32)** %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 %91(%struct.TYPE_5__* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %13, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
