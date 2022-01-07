; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttsetwater.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttsetwater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32 }

@TTMAXLOWAT = common dso_local global i32 0, align 4
@TTMINLOWAT = common dso_local global i32 0, align 4
@TTMAXHIWAT = common dso_local global i32 0, align 4
@TTMINHIWAT = common dso_local global i32 0, align 4
@CBSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttsetwater(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = call i32 @TTY_LOCK_OWNED(%struct.tty* %5)
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 10
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* @TTMAXLOWAT, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TTMAXLOWAT, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 2
  %20 = load i32, i32* @TTMINLOWAT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @TTMINLOWAT, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, 2
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  br label %29

29:                                               ; preds = %27, %15
  %30 = phi i32 [ %16, %15 ], [ %28, %27 ]
  store i32 %30, i32* %4, align 4
  %31 = load %struct.tty*, %struct.tty** %2, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TTMAXHIWAT, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @TTMAXHIWAT, align 4
  br label %51

41:                                               ; preds = %29
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TTMINHIWAT, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @TTMINHIWAT, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i32 [ %40, %39 ], [ %50, %49 ]
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @CBSIZE, align 4
  %55 = call i32 @roundup(i32 %53, i32 %54)
  %56 = load %struct.tty*, %struct.tty** %2, align 8
  %57 = getelementptr inbounds %struct.tty, %struct.tty* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
