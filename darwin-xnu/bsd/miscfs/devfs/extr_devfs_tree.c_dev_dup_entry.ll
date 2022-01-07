; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_dup_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_dup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.devfsmount* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.devfsmount = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"duplicating %s failed\0A\00", align 1
@DEV_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__**, %struct.devfsmount*)* @dev_dup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_dup_entry(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__** %2, %struct.devfsmount* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.devfsmount*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  store %struct.devfsmount* %3, %struct.devfsmount** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %13, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.devfsmount*, %struct.devfsmount** %31, align 8
  br label %35

33:                                               ; preds = %4
  %34 = load %struct.devfsmount*, %struct.devfsmount** %8, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi %struct.devfsmount* [ %32, %29 ], [ %34, %33 ]
  %37 = call i32 @dev_add_entry(i8* %23, %struct.TYPE_13__* %24, i32 %25, i32* null, %struct.TYPE_13__* %26, %struct.devfsmount* %36, %struct.TYPE_14__** %9)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = icmp eq %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %40, %35
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %92

53:                                               ; preds = %45
  %54 = load %struct.devfsmount*, %struct.devfsmount** %8, align 8
  %55 = icmp ne %struct.devfsmount* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.devfsmount*, %struct.devfsmount** %8, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store %struct.devfsmount* %57, %struct.devfsmount** %61, align 8
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @DEV_DIR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %10, align 8
  br label %74

74:                                               ; preds = %86, %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = icmp ne %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = call i32 @dev_dup_entry(%struct.TYPE_13__* %80, %struct.TYPE_14__* %81, %struct.TYPE_14__** %11, %struct.devfsmount* null)
  store i32 %82, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %90

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %10, align 8
  br label %74

90:                                               ; preds = %84, %74
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %48
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %94, align 8
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @dev_add_entry(i8*, %struct.TYPE_13__*, i32, i32*, %struct.TYPE_13__*, %struct.devfsmount*, %struct.TYPE_14__**) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
