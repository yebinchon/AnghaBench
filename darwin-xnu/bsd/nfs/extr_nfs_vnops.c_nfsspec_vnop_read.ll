; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfsspec_vnop_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfsspec_vnop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_read_args = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@NACC = common dso_local global i32 0, align 4
@spec_vnodeop_p = common dso_local global i32 0, align 4
@vnop_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsspec_vnop_read(%struct.vnop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_read_args*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca i32, align 4
  store %struct.vnop_read_args* %0, %struct.vnop_read_args** %3, align 8
  %7 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %8 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_7__* @VTONFS(i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = call i32 @nfs_node_lock(%struct.TYPE_7__* %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @NACC, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = call i32 @nanotime(%struct.timespec* %5)
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i32 @nfs_node_unlock(%struct.TYPE_7__* %33)
  %35 = load i32, i32* @spec_vnodeop_p, align 4
  %36 = load i32, i32* @vnop_read, align 4
  %37 = call i32 @VOFFSET(i32 %36)
  %38 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %39 = call i32 @VOCALL(i32 %35, i32 %37, %struct.vnop_read_args* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %16, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_7__* @VTONFS(i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @VOCALL(i32, i32, %struct.vnop_read_args*) #1

declare dso_local i32 @VOFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
