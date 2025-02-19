; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_clear_oldest_entry.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_clear_oldest_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@Q68_JIT_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Tried to clear oldest entry from an empty table!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @clear_oldest_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_oldest_entry(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @Q68_JIT_TABLE_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %48

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @TIMESTAMP_COMPARE(i32 %26, i32 %34, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %23, %20
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %23
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %5

51:                                               ; preds = %5
  %52 = load i32, i32* %3, align 4
  %53 = icmp sge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @LIKELY(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = call i32 @clear_entry(%struct.TYPE_5__* %58, %struct.TYPE_6__* %64)
  br label %70

66:                                               ; preds = %51
  %67 = call i32 @DMSG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %57
  ret void
}

declare dso_local i64 @TIMESTAMP_COMPARE(i32, i32, i32) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @clear_entry(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @DMSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
