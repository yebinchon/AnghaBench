; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sodelayed_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sodelayed_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.uio = type { i32 }
%struct.mbuf = type { %struct.mbuf*, i64 }

@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.uio*, %struct.mbuf**, i64*)* @sodelayed_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sodelayed_copy(%struct.socket* %0, %struct.uio* %1, %struct.mbuf** %2, i64* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %10, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call i32 @socket_unlock(%struct.socket* %13, i32 0)
  br label %15

15:                                               ; preds = %23, %4
  %16 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %25 = load i32, i32* @caddr_t, align 4
  %26 = call i32 @mtod(%struct.mbuf* %24, i32 %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.uio*, %struct.uio** %6, align 8
  %32 = call i32 @uiomove(i32 %26, i32 %30, %struct.uio* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load %struct.mbuf*, %struct.mbuf** %34, align 8
  store %struct.mbuf* %35, %struct.mbuf** %10, align 8
  br label %15

36:                                               ; preds = %21
  %37 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = call i32 @m_freem_list(%struct.mbuf* %38)
  %40 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %40, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = call i32 @socket_lock(%struct.socket* %42, i32 0)
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem_list(%struct.mbuf*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
