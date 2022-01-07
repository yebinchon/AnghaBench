; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_check_vnode_issubdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_check_vnode_issubdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@FALSE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.TYPE_8__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@rootvnode = common dso_local global %struct.TYPE_8__* null, align 8
@VROOT = common dso_local global i32 0, align 4
@VISHARDLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__**)* @cache_check_vnode_issubdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_check_vnode_issubdir(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %17, align 8
  br label %18

18:                                               ; preds = %4, %99
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = icmp eq %struct.TYPE_8__* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %103

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rootvnode, align 8
  %28 = icmp eq %struct.TYPE_8__* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %103

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %11, align 8
  br label %35

35:                                               ; preds = %60, %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VROOT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = icmp ne %struct.TYPE_8__* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rootvnode, align 8
  %57 = icmp ne %struct.TYPE_8__* %55, %56
  br label %58

58:                                               ; preds = %54, %50, %45, %42, %35
  %59 = phi i1 [ false, %50 ], [ false, %45 ], [ false, %42 ], [ false, %35 ], [ %57, %54 ]
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %9, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %11, align 8
  br label %35

67:                                               ; preds = %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = icmp eq %struct.TYPE_8__* %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rootvnode, align 8
  %74 = icmp eq %struct.TYPE_8__* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  br label %103

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %82, align 8
  br label %103

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VISHARDLINK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %90, %83
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %10, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %98, align 8
  br label %103

99:                                               ; preds = %90
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %9, align 8
  br label %18

103:                                              ; preds = %95, %79, %75, %29, %22
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
