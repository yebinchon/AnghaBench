; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_current_rootdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_current_rootdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnode* @current_rootdir() #0 {
  %1 = alloca %struct.vnode*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = call %struct.TYPE_5__* (...) @current_proc()
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = icmp ne %struct.vnode* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load %struct.vnode*, %struct.vnode** %3, align 8
  %13 = call i64 @vnode_getwithref(%struct.vnode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.vnode* null, %struct.vnode** %1, align 8
  br label %19

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %0
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  store %struct.vnode* %18, %struct.vnode** %1, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.vnode*, %struct.vnode** %1, align 8
  ret %struct.vnode* %20
}

declare dso_local %struct.TYPE_5__* @current_proc(...) #1

declare dso_local i64 @vnode_getwithref(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
