; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_YesNo_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_YesNo_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i64)*, i32 (i64, i32)*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@DC = common dso_local global %struct.TYPE_7__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_YesNo_HandleKey(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @Rect_ContainsPoint(i32* %8, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @K_MOUSE1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @K_ENTER, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @K_MOUSE2, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @K_MOUSE3, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42, %38, %34, %30
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32 (i64, i32)*, i32 (i64, i32)** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32 (i64)*, i32 (i64)** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 %55(i64 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 %49(i64 %52, i32 %63)
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %25, %17, %2
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %46
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @Rect_ContainsPoint(i32*, i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
