; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_At.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_At.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { i32, i32, i32 }

@IndexOutOfBoundsError = common dso_local global i32 0, align 4
@Int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.List*, i32)* @List_At to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @List_At(%struct.List* %0, i32 %1) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.List* %0, %struct.List** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.List*, %struct.List** %3, align 8
  %10 = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %13, %8 ], [ %15, %14 ]
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.List*, %struct.List** %3, align 8
  %20 = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp sle i32 %18, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load %struct.List*, %struct.List** %3, align 8
  %26 = getelementptr inbounds %struct.List, %struct.List* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %31, %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.List*, %struct.List** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32* @List_Next(%struct.List* %32, i32 %33)
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %28

38:                                               ; preds = %28
  br label %60

39:                                               ; preds = %16
  %40 = load %struct.List*, %struct.List** %3, align 8
  %41 = getelementptr inbounds %struct.List, %struct.List* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = load %struct.List*, %struct.List** %3, align 8
  %47 = getelementptr inbounds %struct.List, %struct.List* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %52, %39
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.List*, %struct.List** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32* @List_Prev(%struct.List* %53, i32 %54)
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  br label %49

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32* @List_Next(%struct.List*, i32) #1

declare dso_local i32* @List_Prev(%struct.List*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
