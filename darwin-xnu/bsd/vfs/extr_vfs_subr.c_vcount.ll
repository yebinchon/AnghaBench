; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vcount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcount(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @vnode_isspec(%struct.TYPE_13__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %2, align 4
  br label %124

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %87, %54, %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @vnode_isaliased(%struct.TYPE_13__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %124

30:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %31 = call i32 (...) @SPECHASH_LOCK()
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %4, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  store i32 %44, i32* %7, align 4
  %45 = call i32 (...) @SPECHASH_UNLOCK()
  br label %46

46:                                               ; preds = %116, %43
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %122

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @vnode_getwithvid(%struct.TYPE_13__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %20

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @vnode_lock(%struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %102

65:                                               ; preds = %55
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %65
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = icmp ne %struct.TYPE_13__* %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = call i32 @vnode_reclaim_internal(%struct.TYPE_13__* %88, i32 1, i32 1, i32 0)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = call i32 @vnode_put_locked(%struct.TYPE_13__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = call i32 @vnode_unlock(%struct.TYPE_13__* %92)
  br label %20

94:                                               ; preds = %83, %78, %73
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %94, %65, %55
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = call i32 @vnode_unlock(%struct.TYPE_13__* %103)
  %105 = call i32 (...) @SPECHASH_LOCK()
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %5, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = icmp ne %struct.TYPE_13__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  br label %116

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %111
  %117 = phi i32 [ %114, %111 ], [ 0, %115 ]
  store i32 %117, i32* %7, align 4
  %118 = call i32 (...) @SPECHASH_UNLOCK()
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = call i32 @vnode_put(%struct.TYPE_13__* %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %4, align 8
  br label %46

122:                                              ; preds = %46
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %24, %11
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @vnode_isspec(%struct.TYPE_13__*) #1

declare dso_local i32 @vnode_isaliased(%struct.TYPE_13__*) #1

declare dso_local i32 @SPECHASH_LOCK(...) #1

declare dso_local i32 @SPECHASH_UNLOCK(...) #1

declare dso_local i64 @vnode_getwithvid(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vnode_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @vnode_reclaim_internal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @vnode_put_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
