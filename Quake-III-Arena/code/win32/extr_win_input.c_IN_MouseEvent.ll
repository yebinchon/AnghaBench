; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_MouseEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_MouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@s_wmv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@g_wv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SE_KEY = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_MouseEvent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_wmv, i32 0, i32 1), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %59

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %54, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_wmv, i32 0, i32 0), align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_wv, i32 0, i32 0), align 4
  %25 = load i32, i32* @SE_KEY, align 4
  %26 = load i64, i64* @K_MOUSE1, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* @qtrue, align 4
  %31 = call i32 @Sys_QueEvent(i32 %24, i32 %25, i64 %29, i32 %30, i32 0, i32* null)
  br label %32

32:                                               ; preds = %23, %17, %11
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_wmv, i32 0, i32 0), align 4
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_wv, i32 0, i32 0), align 4
  %46 = load i32, i32* @SE_KEY, align 4
  %47 = load i64, i64* @K_MOUSE1, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* @qfalse, align 4
  %52 = call i32 @Sys_QueEvent(i32 %45, i32 %46, i64 %50, i32 %51, i32 0, i32* null)
  br label %53

53:                                               ; preds = %44, %38, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %8

57:                                               ; preds = %8
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_wmv, i32 0, i32 0), align 4
  br label %59

59:                                               ; preds = %57, %6
  ret void
}

declare dso_local i32 @Sys_QueEvent(i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
