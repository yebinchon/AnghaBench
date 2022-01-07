; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vndetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vndetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64 }
%struct.vnode = type { i32 }

@VNODE_MONITOR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_vndetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_vndetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = call i32 (...) @vfs_context_current()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.knote*, %struct.knote** %2, align 8
  %7 = getelementptr inbounds %struct.knote, %struct.knote* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.vnode*
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = load %struct.knote*, %struct.knote** %2, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @vnode_getwithvid(%struct.vnode* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call i32 @vnode_lock(%struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.knote*, %struct.knote** %2, align 8
  %23 = call i32 @KNOTE_DETACH(i32* %21, %struct.knote* %22)
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = call i32 @vnode_unlock(%struct.vnode* %24)
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = load i32, i32* @VNODE_MONITOR_END, align 4
  %28 = load %struct.knote*, %struct.knote** %2, align 8
  %29 = bitcast %struct.knote* %28 to i8*
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @VNOP_MONITOR(%struct.vnode* %26, i32 0, i32 %27, i8* %29, i32 %30)
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call i32 @vnode_put(%struct.vnode* %32)
  br label %34

34:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i64 @vnode_getwithvid(%struct.vnode*, i32) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @VNOP_MONITOR(%struct.vnode*, i32, i32, i8*, i32) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
