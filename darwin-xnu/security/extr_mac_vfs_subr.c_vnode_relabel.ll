; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_vnode_relabel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_vnode_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i32, i32 }

@VL_LABEL = common dso_local global i32 0, align 4
@VL_LABELWAIT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vnode_relabel\00", align 1
@VL_LABELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_relabel(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  br label %3

3:                                                ; preds = %10, %1
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = getelementptr inbounds %struct.vnode, %struct.vnode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VL_LABEL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i32, i32* @VL_LABELWAIT, align 4
  %12 = load %struct.vnode*, %struct.vnode** %2, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.vnode*, %struct.vnode** %2, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 2
  %18 = load %struct.vnode*, %struct.vnode** %2, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 1
  %20 = load i32, i32* @PVFS, align 4
  %21 = call i32 @msleep(i32* %17, i32* %19, i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %3

22:                                               ; preds = %3
  %23 = load i32, i32* @VL_LABELED, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.vnode*, %struct.vnode** %2, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
