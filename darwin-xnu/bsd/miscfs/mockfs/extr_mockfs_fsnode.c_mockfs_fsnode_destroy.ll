; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_fsnode.c_mockfs_fsnode_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_fsnode.c_mockfs_fsnode_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"mockfs_fsnode_destroy called on node with live vnode; fsnp = %p (in case gdb is screwing with you)\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"mockfs_fsnode_destroy failed on child_a; fsnp = %p (in case gdb is screwing with you), rvalue = %d\00", align 1
@.str.2 = private unnamed_addr constant [99 x i8] c"mockfs_fsnode_destroy failed on child_b; fsnp = %p (in case gdb is screwing with you), rvalue = %d\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"mockfs_fsnode_orphan failed during destroy; fsnp = %p (in case gdb is screwing with you), rvalue = %d\00", align 1
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mockfs_fsnode_destroy(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = icmp ne %struct.TYPE_10__* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = icmp eq %struct.TYPE_10__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6, %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %6
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call i32 (i8*, %struct.TYPE_10__*, ...) @panic(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call i32 @mockfs_fsnode_destroy(%struct.TYPE_10__* %35)
  store i32 %36, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i8*, %struct.TYPE_10__*, ...) @panic(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @mockfs_fsnode_destroy(%struct.TYPE_10__* %51)
  store i32 %52, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, %struct.TYPE_10__*, ...) @panic(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = call i32 @mockfs_fsnode_orphan(%struct.TYPE_10__* %65)
  store i32 %66, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i8*, %struct.TYPE_10__*, ...) @panic(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = call i32 @FREE(%struct.TYPE_10__* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @panic(i8*, %struct.TYPE_10__*, ...) #1

declare dso_local i32 @mockfs_fsnode_orphan(%struct.TYPE_10__*) #1

declare dso_local i32 @FREE(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
