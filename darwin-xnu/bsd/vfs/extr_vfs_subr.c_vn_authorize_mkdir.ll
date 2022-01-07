; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_mkdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.componentname = type { i32* }
%struct.vnode_attr = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"reserved not NULL in vn_authorize_mkdir()\00", align 1
@KAUTH_VNODE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_authorize_mkdir(i32 %0, %struct.componentname* %1, %struct.vnode_attr* %2, i32 %3, i8* %4) #0 {
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
  %13 = load i8*, i8** %11, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %5
  %18 = load %struct.componentname*, %struct.componentname** %8, align 8
  %19 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %46

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @vnode_compound_mkdir_available(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.componentname*, %struct.componentname** %8, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @lookup_validate_creation_path(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %44

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @vnode_authorize(i32 %37, i32* null, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %42, %34
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %22
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vnode_compound_mkdir_available(i32) #1

declare dso_local i32 @lookup_validate_creation_path(i32*) #1

declare dso_local i32 @vnode_authorize(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
