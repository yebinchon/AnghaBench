; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_execute_select.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_execute_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EXECUTE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_select(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.TYPE_6__* @table_start(i32* %7)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  br label %9

9:                                                ; preds = %15, %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i32 @cursor_value(%struct.TYPE_6__* %16)
  %18 = call i32 @deserialize_row(i32 %17, i32* %6)
  %19 = call i32 @print_row(i32* %6)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @cursor_advance(%struct.TYPE_6__* %20)
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = call i32 @free(%struct.TYPE_6__* %23)
  %25 = load i32, i32* @EXECUTE_SUCCESS, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_6__* @table_start(i32*) #1

declare dso_local i32 @deserialize_row(i32, i32*) #1

declare dso_local i32 @cursor_value(%struct.TYPE_6__*) #1

declare dso_local i32 @print_row(i32*) #1

declare dso_local i32 @cursor_advance(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
