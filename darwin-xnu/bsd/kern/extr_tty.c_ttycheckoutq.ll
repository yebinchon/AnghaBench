; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttycheckoutq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttycheckoutq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uthread = type { i32 }

@OBUFSIZ = common dso_local global i32 0, align 4
@TS_SO_OLOWAT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ttoutq\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttycheckoutq(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uthread*, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty*, %struct.tty** %4, align 8
  %10 = call i32 @TTY_LOCK_OWNED(%struct.tty* %9)
  %11 = call i32 (...) @current_thread()
  %12 = call i64 @get_bsdthread_info(i32 %11)
  %13 = inttoptr i64 %12 to %struct.uthread*
  store %struct.uthread* %13, %struct.uthread** %8, align 8
  %14 = load %struct.tty*, %struct.tty** %4, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.uthread*, %struct.uthread** %8, align 8
  %21 = getelementptr inbounds %struct.uthread, %struct.uthread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  store i32 %25, i32* %7, align 4
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @OBUFSIZ, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 100
  %34 = icmp sgt i32 %29, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %63, %35
  %37 = load %struct.tty*, %struct.tty** %4, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %36
  %44 = load %struct.tty*, %struct.tty** %4, align 8
  %45 = call i32 @ttstart(%struct.tty* %44)
  %46 = load %struct.tty*, %struct.tty** %4, align 8
  %47 = getelementptr inbounds %struct.tty, %struct.tty* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %76

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.uthread*, %struct.uthread** %8, align 8
  %58 = getelementptr inbounds %struct.uthread, %struct.uthread* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %78

63:                                               ; preds = %56
  %64 = load %struct.tty*, %struct.tty** %4, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TS_SO_OLOWAT, align 4
  %68 = call i32 @SET(i32 %66, i32 %67)
  %69 = load %struct.tty*, %struct.tty** %4, align 8
  %70 = load %struct.tty*, %struct.tty** %4, align 8
  %71 = call i32 @TSA_OLOWAT(%struct.tty* %70)
  %72 = load i64, i64* @PZERO, align 8
  %73 = sub nsw i64 %72, 1
  %74 = load i32, i32* @hz, align 4
  %75 = call i32 @ttysleep(%struct.tty* %69, i32 %71, i64 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %36

76:                                               ; preds = %52, %36
  br label %77

77:                                               ; preds = %76, %24
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @ttstart(%struct.tty*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @ttysleep(%struct.tty*, i32, i64, i8*, i32) #1

declare dso_local i32 @TSA_OLOWAT(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
