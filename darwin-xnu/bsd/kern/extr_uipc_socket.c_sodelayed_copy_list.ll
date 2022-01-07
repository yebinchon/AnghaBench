; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sodelayed_copy_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sodelayed_copy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.recv_msg_elem = type { %struct.uio* }
%struct.uio = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.mbuf* }

@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.recv_msg_elem*, i32, %struct.mbuf**, i64*)* @sodelayed_copy_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sodelayed_copy_list(%struct.socket* %0, %struct.recv_msg_elem* %1, i32 %2, %struct.mbuf** %3, i64* %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.recv_msg_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.uio*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.recv_msg_elem* %1, %struct.recv_msg_elem** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mbuf** %3, %struct.mbuf*** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %17, %struct.mbuf** %12, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %56, %5
  %19 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %62

27:                                               ; preds = %25
  %28 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %7, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %28, i64 %30
  %32 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %31, i32 0, i32 0
  %33 = load %struct.uio*, %struct.uio** %32, align 8
  store %struct.uio* %33, %struct.uio** %15, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %34, %struct.mbuf** %13, align 8
  br label %35

35:                                               ; preds = %51, %27
  %36 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %37 = icmp ne %struct.mbuf* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %40 = load i32, i32* @caddr_t, align 4
  %41 = call i32 @mtod(%struct.mbuf* %39, i32 %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.uio*, %struct.uio** %15, align 8
  %46 = call i32 @uiomove(i32 %41, i32 %44, %struct.uio* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %63

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 1
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  store %struct.mbuf* %54, %struct.mbuf** %13, align 8
  br label %35

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 2
  %59 = load %struct.mbuf*, %struct.mbuf** %58, align 8
  store %struct.mbuf* %59, %struct.mbuf** %12, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %18

62:                                               ; preds = %25
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  %66 = call i32 @m_freem_list(%struct.mbuf* %65)
  %67 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %67, align 8
  %68 = load i64*, i64** %10, align 8
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem_list(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
