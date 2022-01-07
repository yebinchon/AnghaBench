; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_get_relations_str.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_get_relations_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.list_head = type { i32 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"No matches found.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_relations_str(%struct.symbol** %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.gstr, align 4
  %4 = alloca %struct.symbol**, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  store %struct.symbol** %0, %struct.symbol*** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %8 = call i32 (...) @str_new()
  %9 = getelementptr inbounds %struct.gstr, %struct.gstr* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %12 = icmp ne %struct.symbol** %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.symbol*, %struct.symbol** %14, i64 %16
  %18 = load %struct.symbol*, %struct.symbol** %17, align 8
  store %struct.symbol* %18, %struct.symbol** %6, align 8
  %19 = icmp ne %struct.symbol* %18, null
  br label %20

20:                                               ; preds = %13, %10
  %21 = phi i1 [ false, %10 ], [ %19, %13 ]
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = load %struct.symbol*, %struct.symbol** %6, align 8
  %24 = load %struct.list_head*, %struct.list_head** %5, align 8
  %25 = call i32 @get_symbol_str(%struct.gstr* %3, %struct.symbol* %23, %struct.list_head* %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @str_append(%struct.gstr* %3, i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds %struct.gstr, %struct.gstr* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @str_new(...) #1

declare dso_local i32 @get_symbol_str(%struct.gstr*, %struct.symbol*, %struct.list_head*) #1

declare dso_local i32 @str_append(%struct.gstr*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
