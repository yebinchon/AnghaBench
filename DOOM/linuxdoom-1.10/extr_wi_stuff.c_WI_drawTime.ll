; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawTime.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@colon = common dso_local global %struct.TYPE_4__* null, align 8
@FB = common dso_local global i32 0, align 4
@sucks = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawTime(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %63

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 3599
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %17, %18
  %20 = srem i32 %19, 60
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @WI_drawNum(i32 %21, i32 %22, i32 %23, i32 2)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colon, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SHORT(i32 %27)
  %29 = sub nsw i32 %24, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 60
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 60
  br i1 %33, label %39, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FB, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colon, align 8
  %44 = call i32 @V_DrawPatch(i32 %40, i32 %41, i32 %42, %struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sdiv i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %16, label %51

51:                                               ; preds = %46
  br label %63

52:                                               ; preds = %12
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sucks, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SHORT(i32 %56)
  %58 = sub nsw i32 %53, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FB, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sucks, align 8
  %62 = call i32 @V_DrawPatch(i32 %58, i32 %59, i32 %60, %struct.TYPE_4__* %61)
  br label %63

63:                                               ; preds = %11, %52, %51
  ret void
}

declare dso_local i32 @WI_drawNum(i32, i32, i32, i32) #1

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
