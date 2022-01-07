; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_internal_node_insert.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_internal_node_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INTERNAL_NODE_MAX_CELLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Need to implement splitting internal node\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@INTERNAL_NODE_CELL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @internal_node_insert(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @get_page(i32 %19, i64 %20)
  store i8* %21, i8** %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @get_page(i32 %24, i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @get_node_max_key(i8* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @internal_node_find_child(i8* %29, i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i64* @internal_node_num_keys(i8* %32)
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i8*, i8** %7, align 8
  %38 = call i64* @internal_node_num_keys(i8* %37)
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @INTERNAL_NODE_MAX_CELLS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @exit(i32 %44) #3
  unreachable

46:                                               ; preds = %3
  %47 = load i8*, i8** %7, align 8
  %48 = call i64* @internal_node_right_child(i8* %47)
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %12, align 8
  %54 = call i8* @get_page(i32 %52, i64 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i64 @get_node_max_key(i8* %56)
  %58 = icmp sgt i64 %55, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %46
  %60 = load i64, i64* %12, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64* @internal_node_child(i8* %61, i64 %62)
  store i64 %60, i64* %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 @get_node_max_key(i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64* @internal_node_key(i8* %66, i64 %67)
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i64* @internal_node_right_child(i8* %70)
  store i64 %69, i64* %71, align 8
  br label %102

72:                                               ; preds = %46
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %90, %72
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i8* @internal_node_cell(i8* %79, i64 %80)
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %14, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i8* @internal_node_cell(i8* %82, i64 %84)
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* @INTERNAL_NODE_CELL_SIZE, align 4
  %89 = call i32 @memcpy(i8* %86, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i64, i64* %14, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %14, align 8
  br label %74

93:                                               ; preds = %74
  %94 = load i64, i64* %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64* @internal_node_child(i8* %95, i64 %96)
  store i64 %94, i64* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i64* @internal_node_key(i8* %99, i64 %100)
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %59
  ret void
}

declare dso_local i8* @get_page(i32, i64) #1

declare dso_local i64 @get_node_max_key(i8*) #1

declare dso_local i64 @internal_node_find_child(i8*, i64) #1

declare dso_local i64* @internal_node_num_keys(i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64* @internal_node_right_child(i8*) #1

declare dso_local i64* @internal_node_child(i8*, i64) #1

declare dso_local i64* @internal_node_key(i8*, i64) #1

declare dso_local i8* @internal_node_cell(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
