; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue_multi_bytes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue_multi_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64, i32 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFEF_TXSTART = common dso_local global i32 0, align 4
@IFNET_SCHED_MODEL_MAX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@CLASSQ_DEQUEUE_MAX_PKT_LIMIT = common dso_local global i32 0, align 4
@QP_MBUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_dequeue_multi_bytes(%struct.ifnet* %0, i32 %1, %struct.mbuf** %2, %struct.mbuf** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %10, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %17 = icmp eq %struct.ifnet* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %20 = icmp eq %struct.mbuf** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %6
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %7, align 4
  br label %74

26:                                               ; preds = %21
  %27 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IFEF_TXSTART, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IFNET_SCHED_MODEL_MAX, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %26
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %7, align 4
  br label %74

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = call i32 @ifnet_is_attached(%struct.ifnet* %43, i32 1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %7, align 4
  br label %74

48:                                               ; preds = %42
  %49 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 2
  %51 = load i32, i32* @CLASSQ_DEQUEUE_MAX_PKT_LIMIT, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %54 = bitcast %struct.mbuf** %53 to i8**
  %55 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %56 = bitcast %struct.mbuf** %55 to i8**
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @ifclassq_dequeue(i32* %50, i32 %51, i32 %52, i8** %54, i8** %56, i32* %57, i32* %58, i64* %15)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %60, align 8
  %62 = icmp eq %struct.mbuf* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %48
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* @QP_MBUF, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %48
  %68 = phi i1 [ true, %48 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %72 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %46, %39, %24
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @ifclassq_dequeue(i32*, i32, i32, i8**, i8**, i32*, i32*, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
