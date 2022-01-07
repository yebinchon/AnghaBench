; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_read_args = type { i32, %struct.TYPE_6__*, %struct.uio* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.uio = type { i64 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@IO_NDELAY = common dso_local global i32 0, align 4
@MSG_NBIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_read(%struct.vnop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_read_args*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnop_read_args* %0, %struct.vnop_read_args** %3, align 8
  %9 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %9, i32 0, i32 2
  %11 = load %struct.uio*, %struct.uio** %10, align 8
  store %struct.uio* %11, %struct.uio** %4, align 8
  %12 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %13 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.socket*, %struct.socket** %17, align 8
  store %struct.socket* %18, %struct.socket** %5, align 8
  %19 = load %struct.uio*, %struct.uio** %4, align 8
  %20 = call i64 @uio_resid(%struct.uio* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

23:                                               ; preds = %1
  %24 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %25 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IO_NDELAY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @MSG_NBIO, align 4
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  store i32 %34, i32* %8, align 4
  %35 = load %struct.uio*, %struct.uio** %4, align 8
  %36 = call i64 @uio_resid(%struct.uio* %35)
  store i64 %36, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %37 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %38 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = call i32 @socket_lock(%struct.socket* %46, i32 1)
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @EWOULDBLOCK, align 4
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  store i32 %57, i32* %7, align 4
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = call i32 @socket_unlock(%struct.socket* %58, i32 1)
  br label %60

60:                                               ; preds = %56, %33
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @EWOULDBLOCK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = load %struct.uio*, %struct.uio** %4, align 8
  %67 = call i32 @soreceive(%struct.socket* %65, %struct.sockaddr** null, %struct.uio* %66, %struct.mbuf** null, %struct.mbuf** null, i32* %8)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %72 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @lock_vnode_and_post(%struct.TYPE_6__* %73, i32 0)
  br label %75

75:                                               ; preds = %70, %64
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.uio*, %struct.uio** %4, align 8
  %79 = call i64 @uio_resid(%struct.uio* %78)
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.socket*, %struct.socket** %5, align 8
  %84 = call i32 @socket_lock(%struct.socket* %83, i32 1)
  %85 = load i32, i32* @SS_CANTRCVMORE, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.socket*, %struct.socket** %5, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.socket*, %struct.socket** %5, align 8
  %92 = call i32 @socket_unlock(%struct.socket* %91, i32 1)
  br label %93

93:                                               ; preds = %82, %77
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @soreceive(%struct.socket*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, %struct.mbuf**, i32*) #1

declare dso_local i32 @lock_vnode_and_post(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
