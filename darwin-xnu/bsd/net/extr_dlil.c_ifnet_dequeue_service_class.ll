; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue_service_class.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue_service_class.c"
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
define dso_local i32 @ifnet_dequeue_service_class(%struct.ifnet* %0, i32 %1, %struct.mbuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = icmp eq %struct.ifnet* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %14 = icmp eq %struct.mbuf** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MBUF_VALID_SC(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %12, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %15
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFEF_TXSTART, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IFNET_SCHED_MODEL_MAX, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %21
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = call i32 @ifnet_is_attached(%struct.ifnet* %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %4, align 4
  br label %65

43:                                               ; preds = %37
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CLASSQ_DEQUEUE_MAX_BYTE_LIMIT, align 4
  %48 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %49 = bitcast %struct.mbuf** %48 to i8**
  %50 = call i32 @ifclassq_dequeue_sc(i32* %45, i32 %46, i32 1, i32 %47, i8** %49, i32* null, i32* null, i32* null, i64* %9)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %51, align 8
  %53 = icmp eq %struct.mbuf* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @QP_MBUF, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %43
  %59 = phi i1 [ true, %43 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @VERIFY(i32 %60)
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %41, %34, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @MBUF_VALID_SC(i32) #1

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @ifclassq_dequeue_sc(i32*, i32, i32, i32, i8**, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
