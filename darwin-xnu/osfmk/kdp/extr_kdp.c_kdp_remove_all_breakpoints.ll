; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_remove_all_breakpoints.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_remove_all_breakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@breakpoints_initialized = common dso_local global i64 0, align 8
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@breakpoint_list = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"kdp_remove_all_breakpoints: found extant breakpoints, removing them.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kdp_remove_all_breakpoints() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @FALSE, align 8
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* @breakpoints_initialized, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %48, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = ptrtoint i32* %24 to i32
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @kdp_machine_vm_write(i32 %25, i32 %32, i32 %39)
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %2, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %19, %11
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %7

51:                                               ; preds = %7
  %52 = load i64, i64* %2, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56, %0
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i32 @kdp_machine_vm_write(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
