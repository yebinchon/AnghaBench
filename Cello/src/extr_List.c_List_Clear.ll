; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_Clear.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_Clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { i64, %struct.List*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.List*)* @List_Clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @List_Clear(%struct.List* %0) #0 {
  %2 = alloca %struct.List*, align 8
  %3 = alloca %struct.List*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = alloca %struct.List*, align 8
  store %struct.List* %0, %struct.List** %2, align 8
  %6 = load %struct.List*, %struct.List** %2, align 8
  store %struct.List* %6, %struct.List** %3, align 8
  %7 = load %struct.List*, %struct.List** %3, align 8
  %8 = getelementptr inbounds %struct.List, %struct.List* %7, i32 0, i32 1
  %9 = load %struct.List*, %struct.List** %8, align 8
  store %struct.List* %9, %struct.List** %4, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.List*, %struct.List** %4, align 8
  %12 = icmp ne %struct.List* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.List*, %struct.List** %3, align 8
  %15 = load %struct.List*, %struct.List** %4, align 8
  %16 = call %struct.List** @List_Next(%struct.List* %14, %struct.List* %15)
  %17 = load %struct.List*, %struct.List** %16, align 8
  store %struct.List* %17, %struct.List** %5, align 8
  %18 = load %struct.List*, %struct.List** %4, align 8
  %19 = call i32 @destruct(%struct.List* %18)
  %20 = load %struct.List*, %struct.List** %3, align 8
  %21 = load %struct.List*, %struct.List** %4, align 8
  %22 = call i32 @List_Free(%struct.List* %20, %struct.List* %21)
  %23 = load %struct.List*, %struct.List** %5, align 8
  store %struct.List* %23, %struct.List** %4, align 8
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.List*, %struct.List** %3, align 8
  %26 = getelementptr inbounds %struct.List, %struct.List* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.List*, %struct.List** %3, align 8
  %28 = getelementptr inbounds %struct.List, %struct.List* %27, i32 0, i32 1
  store %struct.List* null, %struct.List** %28, align 8
  %29 = load %struct.List*, %struct.List** %3, align 8
  %30 = getelementptr inbounds %struct.List, %struct.List* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local %struct.List** @List_Next(%struct.List*, %struct.List*) #1

declare dso_local i32 @destruct(%struct.List*) #1

declare dso_local i32 @List_Free(%struct.List*, %struct.List*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
