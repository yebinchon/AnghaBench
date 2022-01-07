; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_leaf_node_insert.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_leaf_node_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@LEAF_NODE_MAX_CELLS = common dso_local global i64 0, align 8
@LEAF_NODE_CELL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leaf_node_insert(%struct.TYPE_6__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @get_page(i32 %14, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @leaf_node_num_cells(i8* %19)
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @LEAF_NODE_MAX_CELLS, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @leaf_node_split_and_insert(%struct.TYPE_6__* %27, i64 %28, i32* %29)
  br label %77

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %55, %37
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @leaf_node_cell(i8* %46, i64 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @leaf_node_cell(i8* %49, i64 %51)
  %53 = load i32, i32* @LEAF_NODE_CELL_SIZE, align 4
  %54 = call i32 @memcpy(i32 %48, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %9, align 8
  br label %39

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i8*, i8** %7, align 8
  %61 = call i32* @leaf_node_num_cells(i8* %60)
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* %5, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64* @leaf_node_key(i8* %65, i64 %68)
  store i64 %64, i64* %69, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @leaf_node_value(i8* %71, i64 %74)
  %76 = call i32 @serialize_row(i32* %70, i32 %75)
  br label %77

77:                                               ; preds = %59, %26
  ret void
}

declare dso_local i8* @get_page(i32, i32) #1

declare dso_local i32* @leaf_node_num_cells(i8*) #1

declare dso_local i32 @leaf_node_split_and_insert(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @leaf_node_cell(i8*, i64) #1

declare dso_local i64* @leaf_node_key(i8*, i64) #1

declare dso_local i32 @serialize_row(i32*, i32) #1

declare dso_local i32 @leaf_node_value(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
