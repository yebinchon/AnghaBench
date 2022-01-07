; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vn_rmdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vn_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }
%struct.vnode_attr = type { i32 }

@NULLVP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"NULL vp, but not a compound VNOP?\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Non-NULL vap, but not a compound VNOP?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rmdir(i64 %0, i64* %1, %struct.nameidata* %2, %struct.vnode_attr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.vnode_attr*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.nameidata* %2, %struct.nameidata** %9, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @vnode_compound_rmdir_available(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i64, i64* %7, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %19 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @VNOP_COMPOUND_RMDIR(i64 %16, i64* %17, %struct.nameidata* %18, %struct.vnode_attr* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %42

22:                                               ; preds = %5
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NULLVP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %31 = icmp ne %struct.vnode_attr* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @VNOP_RMDIR(i64 %35, i64 %37, i32* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34, %15
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @vnode_compound_rmdir_available(i64) #1

declare dso_local i32 @VNOP_COMPOUND_RMDIR(i64, i64*, %struct.nameidata*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VNOP_RMDIR(i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
