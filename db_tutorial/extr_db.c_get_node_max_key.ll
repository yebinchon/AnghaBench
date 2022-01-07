; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_get_node_max_key.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_get_node_max_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_node_max_key(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @get_node_type(i8* %4)
  switch i32 %5, label %22 [
    i32 129, label %6
    i32 128, label %14
  ]

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @internal_node_num_keys(i8* %8)
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i32* @internal_node_key(i8* %7, i32 %11)
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @leaf_node_num_cells(i8* %16)
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32* @leaf_node_key(i8* %15, i32 %19)
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %6, %14, %1
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @get_node_type(i8*) #1

declare dso_local i32* @internal_node_key(i8*, i32) #1

declare dso_local i32* @internal_node_num_keys(i8*) #1

declare dso_local i32* @leaf_node_key(i8*, i32) #1

declare dso_local i32* @leaf_node_num_cells(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
