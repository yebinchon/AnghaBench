; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_Show.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { %struct.List* }

@.str = private unnamed_addr constant [18 x i8] c"<'List' At 0x%p [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%$\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.List*, %struct.List*, i32)* @List_Show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @List_Show(%struct.List* %0, %struct.List* %1, i32 %2) #0 {
  %4 = alloca %struct.List*, align 8
  %5 = alloca %struct.List*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.List*, align 8
  %8 = alloca %struct.List*, align 8
  store %struct.List* %0, %struct.List** %4, align 8
  store %struct.List* %1, %struct.List** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.List*, %struct.List** %4, align 8
  store %struct.List* %9, %struct.List** %7, align 8
  %10 = load %struct.List*, %struct.List** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.List*, %struct.List** %4, align 8
  %13 = call i32 (%struct.List*, i32, i8*, ...) @print_to(%struct.List* %10, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.List* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.List*, %struct.List** %7, align 8
  %15 = getelementptr inbounds %struct.List, %struct.List* %14, i32 0, i32 0
  %16 = load %struct.List*, %struct.List** %15, align 8
  store %struct.List* %16, %struct.List** %8, align 8
  br label %17

17:                                               ; preds = %35, %3
  %18 = load %struct.List*, %struct.List** %8, align 8
  %19 = icmp ne %struct.List* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.List*, %struct.List** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.List*, %struct.List** %8, align 8
  %24 = call i32 (%struct.List*, i32, i8*, ...) @print_to(%struct.List* %21, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.List* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.List*, %struct.List** %7, align 8
  %26 = load %struct.List*, %struct.List** %8, align 8
  %27 = call %struct.List** @List_Next(%struct.List* %25, %struct.List* %26)
  %28 = load %struct.List*, %struct.List** %27, align 8
  store %struct.List* %28, %struct.List** %8, align 8
  %29 = load %struct.List*, %struct.List** %8, align 8
  %30 = icmp ne %struct.List* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.List*, %struct.List** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (%struct.List*, i32, i8*, ...) @print_to(%struct.List* %32, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %20
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.List*, %struct.List** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.List*, i32, i8*, ...) @print_to(%struct.List* %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret i32 %39
}

declare dso_local i32 @print_to(%struct.List*, i32, i8*, ...) #1

declare dso_local %struct.List** @List_Next(%struct.List*, %struct.List*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
