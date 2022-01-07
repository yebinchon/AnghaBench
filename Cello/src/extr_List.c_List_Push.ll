; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_Push.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.List*, %struct.List*)* @List_Push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @List_Push(%struct.List* %0, %struct.List* %1) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = alloca %struct.List*, align 8
  %6 = alloca %struct.List*, align 8
  store %struct.List* %0, %struct.List** %3, align 8
  store %struct.List* %1, %struct.List** %4, align 8
  %7 = load %struct.List*, %struct.List** %3, align 8
  store %struct.List* %7, %struct.List** %5, align 8
  %8 = load %struct.List*, %struct.List** %5, align 8
  %9 = call %struct.List* @List_Alloc(%struct.List* %8)
  store %struct.List* %9, %struct.List** %6, align 8
  %10 = load %struct.List*, %struct.List** %6, align 8
  %11 = load %struct.List*, %struct.List** %4, align 8
  %12 = call i32 @assign(%struct.List* %10, %struct.List* %11)
  %13 = load %struct.List*, %struct.List** %5, align 8
  %14 = load %struct.List*, %struct.List** %6, align 8
  %15 = load %struct.List*, %struct.List** %5, align 8
  %16 = getelementptr inbounds %struct.List, %struct.List* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @List_Link(%struct.List* %13, %struct.List* %14, i32 %17, i32* null)
  %19 = load %struct.List*, %struct.List** %5, align 8
  %20 = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local %struct.List* @List_Alloc(%struct.List*) #1

declare dso_local i32 @assign(%struct.List*, %struct.List*) #1

declare dso_local i32 @List_Link(%struct.List*, %struct.List*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
