; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_free_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_free_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_9__*, %struct.TYPE_13__*, %struct.TYPE_13__**, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__** }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_12__*, i64 }

@DEV_DIR = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i32 0, align 4
@M_DEVFSNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_free_name(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %65

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DEV_DIR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %6, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = call i32 @devfs_dn_free(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = call i32 @devfs_dn_free(%struct.TYPE_12__* %38)
  br label %40

40:                                               ; preds = %30, %15
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = icmp eq %struct.TYPE_13__* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %48, align 8
  br label %62

49:                                               ; preds = %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = icmp eq %struct.TYPE_13__* %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = call i32 @devfs_dn_free(%struct.TYPE_12__* %63)
  br label %65

65:                                               ; preds = %62, %1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  store %struct.TYPE_13__** %68, %struct.TYPE_13__*** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %77, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %123

81:                                               ; preds = %65
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %86, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %87, align 8
  %88 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store %struct.TYPE_9__** %92, %struct.TYPE_9__*** %96, align 8
  br label %105

97:                                               ; preds = %81
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store %struct.TYPE_9__** %100, %struct.TYPE_9__*** %104, align 8
  br label %105

105:                                              ; preds = %97, %89
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @strlen(i32 %114)
  %116 = add nsw i64 %115, 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 8
  br label %123

123:                                              ; preds = %105, %65
  %124 = call i32 (...) @DEVFS_DECR_ENTRIES()
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = load i32, i32* @M_DEVFSNAME, align 4
  %127 = call i32 @FREE(%struct.TYPE_13__* %125, i32 %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %28
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @devfs_dn_free(%struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @DEVFS_DECR_ENTRIES(...) #1

declare dso_local i32 @FREE(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
