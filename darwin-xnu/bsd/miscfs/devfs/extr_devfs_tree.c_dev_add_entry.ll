; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_add_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.devfsmount* }
%struct.devfsmount = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"devfs: %s: base node allocation failed (Errno=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"devfs: %s: name slot allocation failed (Errno=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_add_entry(i8* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3, %struct.TYPE_9__* %4, %struct.devfsmount* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.devfsmount*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %13, align 8
  store %struct.devfsmount* %5, %struct.devfsmount** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32*, i32** %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.devfsmount*, %struct.devfsmount** %25, align 8
  br label %29

27:                                               ; preds = %7
  %28 = load %struct.devfsmount*, %struct.devfsmount** %14, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi %struct.devfsmount* [ %26, %23 ], [ %28, %27 ]
  %31 = call i32 @dev_add_node(i32 %18, i32* %19, %struct.TYPE_9__* %20, %struct.TYPE_9__** %16, %struct.devfsmount* %30)
  store i32 %31, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %8, align 4
  br label %53

38:                                               ; preds = %29
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %42 = load i32**, i32*** %15, align 8
  %43 = call i32 @dev_add_name(i8* %39, %struct.TYPE_9__* %40, i32* null, %struct.TYPE_9__* %41, i32** %42)
  store i32 %43, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %47 = call i32 @devfs_dn_free(%struct.TYPE_9__* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %33
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @dev_add_node(i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__**, %struct.devfsmount*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @dev_add_name(i8*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*, i32**) #1

declare dso_local i32 @devfs_dn_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
