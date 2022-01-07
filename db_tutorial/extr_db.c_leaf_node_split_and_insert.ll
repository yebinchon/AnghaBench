; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_leaf_node_split_and_insert.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_leaf_node_split_and_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@LEAF_NODE_MAX_CELLS = common dso_local global i32 0, align 4
@LEAF_NODE_LEFT_SPLIT_COUNT = common dso_local global i32 0, align 4
@LEAF_NODE_CELL_SIZE = common dso_local global i32 0, align 4
@LEAF_NODE_RIGHT_SPLIT_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leaf_node_split_and_insert(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @get_page(i32 %22, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @get_node_max_key(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_unused_page_num(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @get_page(i32 %39, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @initialize_leaf_node(i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32* @node_parent(i8* %44)
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32* @node_parent(i8* %47)
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32* @leaf_node_next_leaf(i8* %49)
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i32* @leaf_node_next_leaf(i8* %52)
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32* @leaf_node_next_leaf(i8* %55)
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @LEAF_NODE_MAX_CELLS, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %114, %3
  %59 = load i32, i32* %11, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %117

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @LEAF_NODE_LEFT_SPLIT_COUNT, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  store i8* %66, i8** %12, align 8
  br label %69

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @LEAF_NODE_LEFT_SPLIT_COUNT, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i8* @leaf_node_cell(i8* %73, i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %69
  %82 = load i32*, i32** %6, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @leaf_node_value(i8* %83, i32 %84)
  %86 = call i32 @serialize_row(i32* %82, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32* @leaf_node_key(i8* %88, i32 %89)
  store i32 %87, i32* %90, align 4
  br label %113

91:                                               ; preds = %69
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i8* @leaf_node_cell(i8* %99, i32 %101)
  %103 = load i32, i32* @LEAF_NODE_CELL_SIZE, align 4
  %104 = call i32 @memcpy(i8* %98, i8* %102, i32 %103)
  br label %112

105:                                              ; preds = %91
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i8* @leaf_node_cell(i8* %107, i32 %108)
  %110 = load i32, i32* @LEAF_NODE_CELL_SIZE, align 4
  %111 = call i32 @memcpy(i8* %106, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %97
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %11, align 4
  br label %58

117:                                              ; preds = %58
  %118 = load i32, i32* @LEAF_NODE_LEFT_SPLIT_COUNT, align 4
  %119 = load i8*, i8** %7, align 8
  %120 = call i32* @leaf_node_num_cells(i8* %119)
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @LEAF_NODE_RIGHT_SPLIT_COUNT, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = call i32* @leaf_node_num_cells(i8* %122)
  store i32 %121, i32* %123, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = call i64 @is_node_root(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %9, align 4
  call void @create_new_root(%struct.TYPE_6__* %130, i32 %131)
  br label %155

132:                                              ; preds = %117
  %133 = load i8*, i8** %7, align 8
  %134 = call i32* @node_parent(i8* %133)
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @get_node_max_key(i8* %136)
  store i32 %137, i32* %16, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i8* @get_page(i32 %142, i32 %143)
  store i8* %144, i8** %17, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @update_internal_node_key(i8* %145, i32 %146, i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @internal_node_insert(%struct.TYPE_6__* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %132, %127
  ret void
}

declare dso_local i8* @get_page(i32, i32) #1

declare dso_local i32 @get_node_max_key(i8*) #1

declare dso_local i32 @get_unused_page_num(i32) #1

declare dso_local i32 @initialize_leaf_node(i8*) #1

declare dso_local i32* @node_parent(i8*) #1

declare dso_local i32* @leaf_node_next_leaf(i8*) #1

declare dso_local i8* @leaf_node_cell(i8*, i32) #1

declare dso_local i32 @serialize_row(i32*, i32) #1

declare dso_local i32 @leaf_node_value(i8*, i32) #1

declare dso_local i32* @leaf_node_key(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @leaf_node_num_cells(i8*) #1

declare dso_local i64 @is_node_root(i8*) #1

declare dso_local void @create_new_root(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @update_internal_node_key(i8*, i32, i32) #1

declare dso_local i32 @internal_node_insert(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
