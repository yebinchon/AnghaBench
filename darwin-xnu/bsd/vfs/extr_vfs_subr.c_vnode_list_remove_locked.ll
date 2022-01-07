; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_list_remove_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_list_remove_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@VLIST_RAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vnode_list_remove\00", align 1
@VLIST_DEAD = common dso_local global i32 0, align 4
@VLIST_ASYNC_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @vnode_list_remove_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnode_list_remove_locked(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i64 @VONLIST(%struct.TYPE_8__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VLIST_RAGE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i32 @VREMRAGE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %14)
  br label %41

16:                                               ; preds = %6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VLIST_DEAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call i32 @VREMDEAD(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %24)
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VLIST_ASYNC_WORK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i32 @VREMASYNC_WORK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %34)
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = call i32 @VREMFREE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %13
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i64 @VONLIST(%struct.TYPE_8__*) #1

declare dso_local i32 @VREMRAGE(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @VREMDEAD(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @VREMASYNC_WORK(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @VREMFREE(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
