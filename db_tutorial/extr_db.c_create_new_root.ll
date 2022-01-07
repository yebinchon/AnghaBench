; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_create_new_root.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_create_new_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_new_root(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @get_page(i32 %12, i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @get_page(i32 %19, i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @get_unused_page_num(i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @get_page(i32 %28, i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i32 @memcpy(i8* %31, i8* %32, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @set_node_root(i8* %35, i32 0)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @initialize_internal_node(i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @set_node_root(i8* %39, i32 1)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32* @internal_node_num_keys(i8* %41)
  store i32 1, i32* %42, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i8** @internal_node_child(i8* %44, i32 0)
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @get_node_max_key(i8* %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i8** @internal_node_key(i8* %49, i32 0)
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i8** @internal_node_right_child(i8* %52)
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i8** @node_parent(i8* %57)
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i8** @node_parent(i8* %62)
  store i8* %61, i8** %63, align 8
  ret void
}

declare dso_local i8* @get_page(i32, i8*) #1

declare dso_local i8* @get_unused_page_num(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_node_root(i8*, i32) #1

declare dso_local i32 @initialize_internal_node(i8*) #1

declare dso_local i32* @internal_node_num_keys(i8*) #1

declare dso_local i8** @internal_node_child(i8*, i32) #1

declare dso_local i8* @get_node_max_key(i8*) #1

declare dso_local i8** @internal_node_key(i8*, i32) #1

declare dso_local i8** @internal_node_right_child(i8*) #1

declare dso_local i8** @node_parent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
