; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_write_args = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@IO_NDELAY = common dso_local global i32 0, align 4
@MSG_NBIO = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_write(%struct.vnop_write_args* %0) #0 {
  %2 = alloca %struct.vnop_write_args*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  store %struct.vnop_write_args* %0, %struct.vnop_write_args** %2, align 8
  %5 = load %struct.vnop_write_args*, %struct.vnop_write_args** %2, align 8
  %6 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %3, align 8
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = load %struct.vnop_write_args*, %struct.vnop_write_args** %2, align 8
  %14 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.vnop_write_args*, %struct.vnop_write_args** %2, align 8
  %17 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IO_NDELAY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @MSG_NBIO, align 4
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = call i32 @sosend(%struct.socket* %12, %struct.sockaddr* null, %struct.TYPE_5__* %15, i32* null, %struct.mbuf* null, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.vnop_write_args*, %struct.vnop_write_args** %2, align 8
  %32 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @lock_vnode_and_post(%struct.TYPE_6__* %33, i32 0)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @sosend(%struct.socket*, %struct.sockaddr*, %struct.TYPE_5__*, i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @lock_vnode_and_post(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
