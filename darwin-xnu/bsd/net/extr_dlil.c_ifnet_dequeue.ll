; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64, i32 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFEF_TXSTART = common dso_local global i32 0, align 4
@IFNET_SCHED_MODEL_MAX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@CLASSQ_DEQUEUE_MAX_BYTE_LIMIT = common dso_local global i32 0, align 4
@QP_MBUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_dequeue(%struct.ifnet* %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = icmp eq %struct.ifnet* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %12 = icmp eq %struct.mbuf** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %10
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFEF_TXSTART, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IFNET_SCHED_MODEL_MAX, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %15
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %58

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = call i32 @ifnet_is_attached(%struct.ifnet* %32, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %31
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 2
  %40 = load i32, i32* @CLASSQ_DEQUEUE_MAX_BYTE_LIMIT, align 4
  %41 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %42 = bitcast %struct.mbuf** %41 to i8**
  %43 = call i32 @ifclassq_dequeue(i32* %39, i32 1, i32 %40, i8** %42, i32* null, i32* null, i32* null, i64* %7)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @QP_MBUF, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i1 [ true, %37 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @VERIFY(i32 %53)
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %35, %28, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @ifclassq_dequeue(i32*, i32, i32, i8**, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
