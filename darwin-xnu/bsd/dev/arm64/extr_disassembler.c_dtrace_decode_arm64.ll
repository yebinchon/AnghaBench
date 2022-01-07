; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_dtrace_decode_arm64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_dtrace_decode_arm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@NUM_DECODE_ENTRIES = common dso_local global i32 0, align 4
@arm64_decode_table = common dso_local global %struct.TYPE_2__* null, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_decode_arm64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NUM_DECODE_ENTRIES, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arm64_decode_table, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %10, %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arm64_decode_table, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arm64_decode_table, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
