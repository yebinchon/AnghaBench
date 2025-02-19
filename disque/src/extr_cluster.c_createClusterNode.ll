; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_createClusterNode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_createClusterNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32*, i64, i64, i64, i32, i32 }

@CLUSTER_NAMELEN = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @createClusterNode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.TYPE_4__* @zmalloc(i32 64)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %15 = call i32 @memcpy(i32 %12, i8* %13, i32 %14)
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %21 = call i32 @getRandomHexChars(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %9
  %23 = call i32 (...) @mstime()
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memset(i32 %39, i32 0, i32 4)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = call i32 (...) @listCreate()
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @zfree, align 4
  %50 = call i32 @listSetFreeMethod(i32 %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %51
}

declare dso_local %struct.TYPE_4__* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @getRandomHexChars(i32, i32) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @listCreate(...) #1

declare dso_local i32 @listSetFreeMethod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
