; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_IN_DeactivateMouse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_IN_DeactivateMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i8*, i8*)* }

@mouse_avail = common dso_local global i32 0, align 4
@dpy = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@mouse_active = common dso_local global i64 0, align 8
@in_nograb = common dso_local global %struct.TYPE_5__* null, align 8
@in_dgamouse = common dso_local global %struct.TYPE_6__* null, align 8
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"in_dgamouse\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_DeactivateMouse() #0 {
  %1 = load i32, i32* @mouse_avail, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @dpy, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, i32* @win, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3, %0
  br label %31

10:                                               ; preds = %6
  %11 = load i64, i64* @mouse_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in_nograb, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @uninstall_grabs()
  br label %29

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @in_dgamouse, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %27 = call i32 %26(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i64, i64* @qfalse, align 8
  store i64 %30, i64* @mouse_active, align 8
  br label %31

31:                                               ; preds = %9, %29, %10
  ret void
}

declare dso_local i32 @uninstall_grabs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
