; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_dalloc.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_dalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ql_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huge_dalloc(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @huge_node_get(i8* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.TYPE_4__* @extent_node_arena_get(i32* %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @huge_node_unset(i8* %13, i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @malloc_mutex_lock(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @ql_link, align 4
  %23 = call i32 @ql_remove(i32* %20, i32* %21, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @malloc_mutex_unlock(i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @extent_node_addr_get(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @extent_node_size_get(i32* %29)
  %31 = call i32 @huge_dalloc_junk(i32 %28, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call %struct.TYPE_4__* @extent_node_arena_get(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @extent_node_addr_get(i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @extent_node_size_get(i32* %36)
  %38 = call i32 @arena_chunk_dalloc_huge(%struct.TYPE_4__* %33, i32 %35, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @idalloctm(i32* %39, i32* %40, i32* %41, i32 1)
  ret void
}

declare dso_local i32* @huge_node_get(i8*) #1

declare dso_local %struct.TYPE_4__* @extent_node_arena_get(i32*) #1

declare dso_local i32 @huge_node_unset(i8*, i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @ql_remove(i32*, i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @huge_dalloc_junk(i32, i32) #1

declare dso_local i32 @extent_node_addr_get(i32*) #1

declare dso_local i32 @extent_node_size_get(i32*) #1

declare dso_local i32 @arena_chunk_dalloc_huge(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @idalloctm(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
