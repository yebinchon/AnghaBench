; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_fsnode.c_mockfs_fsnode_orphan.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_fsnode.c_mockfs_fsnode_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"mockfs_fsnode_orphan called on node with live vnode; fsnp = %p (in case gdb is screwing with you)\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"mockfs_fsnode_orphan insanity, fsnp->parent != parent->child; fsnp = %p (in case gdb is screwing with you)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mockfs_fsnode_orphan(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = call i32 @panic(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = icmp eq %struct.TYPE_4__* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %35, align 8
  br label %51

36:                                               ; preds = %22
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = icmp eq %struct.TYPE_4__* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = call i32 @panic(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @panic(i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
