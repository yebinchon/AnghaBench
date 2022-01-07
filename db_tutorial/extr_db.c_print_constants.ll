; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_print_constants.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_print_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"ROW_SIZE: %d\0A\00", align 1
@ROW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"COMMON_NODE_HEADER_SIZE: %d\0A\00", align 1
@COMMON_NODE_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"LEAF_NODE_HEADER_SIZE: %d\0A\00", align 1
@LEAF_NODE_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"LEAF_NODE_CELL_SIZE: %d\0A\00", align 1
@LEAF_NODE_CELL_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"LEAF_NODE_SPACE_FOR_CELLS: %d\0A\00", align 1
@LEAF_NODE_SPACE_FOR_CELLS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"LEAF_NODE_MAX_CELLS: %d\0A\00", align 1
@LEAF_NODE_MAX_CELLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_constants() #0 {
  %1 = load i32, i32* @ROW_SIZE, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @COMMON_NODE_HEADER_SIZE, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @LEAF_NODE_HEADER_SIZE, align 4
  %6 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @LEAF_NODE_CELL_SIZE, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @LEAF_NODE_SPACE_FOR_CELLS, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @LEAF_NODE_MAX_CELLS, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
