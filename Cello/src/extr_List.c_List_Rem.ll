; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_List.c_List_Rem.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_List.c_List_Rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { i32, %struct.List* }

@ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Object %$ not in List!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.List*, %struct.List*)* @List_Rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @List_Rem(%struct.List* %0, %struct.List* %1) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = alloca %struct.List*, align 8
  %6 = alloca %struct.List*, align 8
  store %struct.List* %0, %struct.List** %3, align 8
  store %struct.List* %1, %struct.List** %4, align 8
  %7 = load %struct.List*, %struct.List** %3, align 8
  store %struct.List* %7, %struct.List** %5, align 8
  %8 = load %struct.List*, %struct.List** %5, align 8
  %9 = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 1
  %10 = load %struct.List*, %struct.List** %9, align 8
  store %struct.List* %10, %struct.List** %6, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.List*, %struct.List** %6, align 8
  %13 = icmp ne %struct.List* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct.List*, %struct.List** %6, align 8
  %16 = load %struct.List*, %struct.List** %4, align 8
  %17 = call i64 @eq(%struct.List* %15, %struct.List* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.List*, %struct.List** %5, align 8
  %21 = load %struct.List*, %struct.List** %6, align 8
  %22 = call i32 @List_Unlink(%struct.List* %20, %struct.List* %21)
  %23 = load %struct.List*, %struct.List** %6, align 8
  %24 = call i32 @destruct(%struct.List* %23)
  %25 = load %struct.List*, %struct.List** %5, align 8
  %26 = load %struct.List*, %struct.List** %6, align 8
  %27 = call i32 @List_Free(%struct.List* %25, %struct.List* %26)
  %28 = load %struct.List*, %struct.List** %5, align 8
  %29 = getelementptr inbounds %struct.List, %struct.List* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  br label %41

32:                                               ; preds = %14
  %33 = load %struct.List*, %struct.List** %5, align 8
  %34 = load %struct.List*, %struct.List** %6, align 8
  %35 = call %struct.List** @List_Next(%struct.List* %33, %struct.List* %34)
  %36 = load %struct.List*, %struct.List** %35, align 8
  store %struct.List* %36, %struct.List** %6, align 8
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* @ValueError, align 4
  %39 = load %struct.List*, %struct.List** %4, align 8
  %40 = call i32 @throw(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.List* %39)
  br label %41

41:                                               ; preds = %37, %19
  ret void
}

declare dso_local i64 @eq(%struct.List*, %struct.List*) #1

declare dso_local i32 @List_Unlink(%struct.List*, %struct.List*) #1

declare dso_local i32 @destruct(%struct.List*) #1

declare dso_local i32 @List_Free(%struct.List*, %struct.List*) #1

declare dso_local %struct.List** @List_Next(%struct.List*, %struct.List*) #1

declare dso_local i32 @throw(i32, i8*, %struct.List*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
