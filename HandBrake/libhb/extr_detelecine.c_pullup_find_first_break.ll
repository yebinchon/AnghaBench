; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_find_first_break.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_find_first_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_field = type { i32, %struct.pullup_field* }

@PULLUP_BREAK_RIGHT = common dso_local global i32 0, align 4
@PULLUP_BREAK_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pullup_field*, i32)* @pullup_find_first_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pullup_find_first_break(%struct.pullup_field* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pullup_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pullup_field* %0, %struct.pullup_field** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %13 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PULLUP_BREAK_RIGHT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %20 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %19, i32 0, i32 1
  %21 = load %struct.pullup_field*, %struct.pullup_field** %20, align 8
  %22 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PULLUP_BREAK_LEFT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18, %11
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %32 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %31, i32 0, i32 1
  %33 = load %struct.pullup_field*, %struct.pullup_field** %32, align 8
  store %struct.pullup_field* %33, %struct.pullup_field** %4, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
