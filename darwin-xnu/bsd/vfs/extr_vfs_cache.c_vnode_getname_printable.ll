; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_getname_printable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_getname_printable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%c(%u, %u)\00", align 1
@unknown_vnodename = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vnode_getname_printable(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i8* @vnode_getname(%struct.TYPE_4__* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %2, align 8
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %41 [
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %12, %12
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 128, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 99, i32 98
  %24 = trunc i32 %23 to i8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @major(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @minor(i32 %31)
  %33 = call i32 @snprintf(i8* %17, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext %24, i32 %28, i32 %32)
  %34 = call i32 (...) @NAME_CACHE_LOCK_SHARED()
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  %38 = call i8* @vfs_addname(i8* %35, i32 %37, i32 0, i32 0)
  store i8* %38, i8** %4, align 8
  %39 = call i32 (...) @NAME_CACHE_UNLOCK()
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %2, align 8
  br label %43

41:                                               ; preds = %12
  %42 = load i8*, i8** @unknown_vnodename, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %41, %16, %10
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i8* @vnode_getname(%struct.TYPE_4__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32, i32) #1

declare dso_local i32 @major(i32) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @NAME_CACHE_LOCK_SHARED(...) #1

declare dso_local i8* @vfs_addname(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
