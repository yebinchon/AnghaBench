; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vn_mkdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vn_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vnode_attr = type { i32 }

@CREATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Non-CREATE nameiop in vn_mkdir()?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_mkdir(%struct.vnode* %0, %struct.vnode** %1, %struct.nameidata* %2, %struct.vnode_attr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.vnode_attr*, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.vnode** %1, %struct.vnode*** %8, align 8
  store %struct.nameidata* %2, %struct.nameidata** %9, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CREATE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %5
  %21 = load %struct.vnode*, %struct.vnode** %7, align 8
  %22 = call i64 @vnode_compound_mkdir_available(%struct.vnode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.vnode*, %struct.vnode** %7, align 8
  %26 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %27 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @VNOP_COMPOUND_MKDIR(%struct.vnode* %25, %struct.vnode** %26, %struct.nameidata* %27, %struct.vnode_attr* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %34 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 0
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @VNOP_MKDIR(%struct.vnode* %32, %struct.vnode** %33, %struct.TYPE_2__* %35, %struct.vnode_attr* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %24
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vnode_compound_mkdir_available(%struct.vnode*) #1

declare dso_local i32 @VNOP_COMPOUND_MKDIR(%struct.vnode*, %struct.vnode**, %struct.nameidata*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VNOP_MKDIR(%struct.vnode*, %struct.vnode**, %struct.TYPE_2__*, %struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
