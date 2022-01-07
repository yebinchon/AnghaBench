; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.componentname = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode_attr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"NULL cn_ndp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"reserved not NULL.\00", align 1
@NAMEI_UNFINISHED = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_authorize_create(i32 %0, %struct.componentname* %1, %struct.vnode_attr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.vnode_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.componentname* %1, %struct.componentname** %8, align 8
  store %struct.vnode_attr* %2, %struct.vnode_attr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.componentname*, %struct.componentname** %8, align 8
  %14 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.componentname*, %struct.componentname** %8, align 8
  %26 = getelementptr inbounds %struct.componentname, %struct.componentname* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NAMEI_UNFINISHED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.componentname*, %struct.componentname** %8, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @lookup_validate_creation_path(%struct.TYPE_2__* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %48

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @vnode_authorize(i32 %44, i32* null, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lookup_validate_creation_path(%struct.TYPE_2__*) #1

declare dso_local i32 @vnode_authorize(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
