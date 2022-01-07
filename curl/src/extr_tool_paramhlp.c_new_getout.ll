; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_new_getout.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_new_getout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getout = type { i32, %struct.getout* }
%struct.OperationConfig = type { i32, %struct.getout*, %struct.getout* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.getout* @new_getout(%struct.OperationConfig* %0) #0 {
  %2 = alloca %struct.OperationConfig*, align 8
  %3 = alloca %struct.getout*, align 8
  %4 = alloca %struct.getout*, align 8
  store %struct.OperationConfig* %0, %struct.OperationConfig** %2, align 8
  %5 = call %struct.getout* @calloc(i32 1, i32 16)
  store %struct.getout* %5, %struct.getout** %3, align 8
  %6 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %7 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %6, i32 0, i32 1
  %8 = load %struct.getout*, %struct.getout** %7, align 8
  store %struct.getout* %8, %struct.getout** %4, align 8
  %9 = load %struct.getout*, %struct.getout** %3, align 8
  %10 = icmp ne %struct.getout* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.getout*, %struct.getout** %4, align 8
  %13 = icmp ne %struct.getout* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.getout*, %struct.getout** %3, align 8
  %16 = load %struct.getout*, %struct.getout** %4, align 8
  %17 = getelementptr inbounds %struct.getout, %struct.getout* %16, i32 0, i32 1
  store %struct.getout* %15, %struct.getout** %17, align 8
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.getout*, %struct.getout** %3, align 8
  %20 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %21 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %20, i32 0, i32 2
  store %struct.getout* %19, %struct.getout** %21, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.getout*, %struct.getout** %3, align 8
  %24 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %25 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %24, i32 0, i32 1
  store %struct.getout* %23, %struct.getout** %25, align 8
  %26 = load %struct.OperationConfig*, %struct.OperationConfig** %2, align 8
  %27 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.getout*, %struct.getout** %3, align 8
  %30 = getelementptr inbounds %struct.getout, %struct.getout* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.getout*, %struct.getout** %3, align 8
  ret %struct.getout* %32
}

declare dso_local %struct.getout* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
