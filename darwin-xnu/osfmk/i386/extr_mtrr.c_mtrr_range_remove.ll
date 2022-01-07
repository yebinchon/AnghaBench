; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_range_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_range_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"mtrr_range_remove base = 0x%llx, size = 0x%llx, type = %d\0A\00", align 1
@mtrr_initialized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@mtrr_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@mtrr_update_setup = common dso_local global i32 0, align 4
@mtrr_update_action = common dso_local global i32 0, align 4
@mtrr_update_teardown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_range_remove(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @DBG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i64, i64* @mtrr_initialized, align 8
  %18 = load i64, i64* @FALSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %21, i32* %4, align 4
  br label %77

22:                                               ; preds = %3
  %23 = call i32 (...) @MTRR_LOCK()
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %62, %22
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 0), align 8
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 1), align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %8, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %28
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @var_range_overlap(%struct.TYPE_5__* %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 1), align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @var_range_encode(%struct.TYPE_5__* %54, i32 %55, i32 %56, i32 %57, i32 0)
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %60, i32* %9, align 4
  br label %65

61:                                               ; preds = %37, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %24

65:                                               ; preds = %59, %24
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @mtrr_update_setup, align 4
  %70 = load i32, i32* @mtrr_update_action, align 4
  %71 = load i32, i32* @mtrr_update_teardown, align 4
  %72 = call i32 @mp_rendezvous(i32 %69, i32 %70, i32 %71, i32* null)
  %73 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = call i32 (...) @MTRR_UNLOCK()
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @MTRR_LOCK(...) #1

declare dso_local i64 @var_range_overlap(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @var_range_encode(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @mp_rendezvous(i32, i32, i32, i32*) #1

declare dso_local i32 @MTRR_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
