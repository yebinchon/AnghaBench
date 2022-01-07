; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_rtree.c_rtree_node_init.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_rtree.c_rtree_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* (i32)* }
%struct.TYPE_4__ = type { i32 }

@RTREE_NODE_INITIALIZING = common dso_local global i32* null, align 8
@CPU_SPINWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32, i32**)* @rtree_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtree_node_init(%struct.TYPE_5__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load i32**, i32*** %7, align 8
  %10 = bitcast i32** %9 to i8**
  %11 = load i32*, i32** @RTREE_NODE_INITIALIZING, align 8
  %12 = call i64 @atomic_cas_p(i8** %10, i32* null, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %20, %14
  %16 = load i32, i32* @CPU_SPINWAIT, align 4
  %17 = load i32**, i32*** %7, align 8
  %18 = bitcast i32** %17 to i8**
  %19 = call i32* @atomic_read_p(i8** %18)
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** @RTREE_NODE_INITIALIZING, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %20
  br label %48

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32* (i32)*, i32* (i32)** %27, align 8
  %29 = call i32 @ZU(i32 1)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %29, %37
  %39 = call i32* %28(i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %50

43:                                               ; preds = %25
  %44 = load i32**, i32*** %7, align 8
  %45 = bitcast i32** %44 to i8**
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @atomic_write_p(i8** %45, i32* %46)
  br label %48

48:                                               ; preds = %43, %24
  %49 = load i32*, i32** %8, align 8
  store i32* %49, i32** %4, align 8
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

declare dso_local i64 @atomic_cas_p(i8**, i32*, i32*) #1

declare dso_local i32* @atomic_read_p(i8**) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @atomic_write_p(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
