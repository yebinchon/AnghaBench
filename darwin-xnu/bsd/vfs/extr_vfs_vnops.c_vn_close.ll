; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i64, i64, i32 }

@VT_HFS = common dso_local global i64 0, align 8
@FWRITE = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_CONTENT_MODIFIED = common dso_local global i32 0, align 4
@FWASWRITTEN = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@VISNAMEDSTREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_close(%struct.vnode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = call i64 @vnode_isspec(%struct.vnode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @vnode_rele_ext(%struct.vnode* %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VT_HFS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FWRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = load i32, i32* @MNT_NOWAIT, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @VNOP_FSYNC(%struct.vnode* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27, %22, %16
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @VNOP_CLOSE(%struct.vnode* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = call i64 @vnode_isspec(%struct.vnode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @vnode_rele_ext(%struct.vnode* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i64 @vnode_isspec(%struct.vnode*) #1

declare dso_local i32 @vnode_rele_ext(%struct.vnode*, i32, i32) #1

declare dso_local i32 @VNOP_FSYNC(%struct.vnode*, i32, i32) #1

declare dso_local i32 @VNOP_CLOSE(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
