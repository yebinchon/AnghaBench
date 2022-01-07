; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue_service_class_multi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_dequeue_service_class_multi.c"
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
define dso_local i32 @ifnet_dequeue_service_class_multi(%struct.ifnet* %0, i32 %1, i32 %2, %struct.mbuf** %3, %struct.mbuf** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca %struct.mbuf**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.mbuf** %3, %struct.mbuf*** %12, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %19 = icmp eq %struct.ifnet* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %7
  %21 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %22 = icmp eq %struct.mbuf** %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @MBUF_VALID_SC(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %23, %20, %7
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %8, align 4
  br label %81

32:                                               ; preds = %26
  %33 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IFEF_TXSTART, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IFNET_SCHED_MODEL_MAX, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %32
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %8, align 4
  br label %81

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %50 = call i32 @ifnet_is_attached(%struct.ifnet* %49, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %8, align 4
  br label %81

54:                                               ; preds = %48
  %55 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 2
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CLASSQ_DEQUEUE_MAX_BYTE_LIMIT, align 4
  %60 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %61 = bitcast %struct.mbuf** %60 to i8**
  %62 = load %struct.mbuf**, %struct.mbuf*** %13, align 8
  %63 = bitcast %struct.mbuf** %62 to i8**
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @ifclassq_dequeue_sc(i32* %56, i32 %57, i32 %58, i32 %59, i8** %61, i8** %63, i32* %64, i32* %65, i64* %17)
  store i32 %66, i32* %16, align 4
  %67 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %67, align 8
  %69 = icmp eq %struct.mbuf* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %54
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* @QP_MBUF, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %70, %54
  %75 = phi i1 [ true, %54 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @VERIFY(i32 %76)
  %78 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %79 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %78)
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %74, %52, %45, %30
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @MBUF_VALID_SC(i32) #1

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @ifclassq_dequeue_sc(i32*, i32, i32, i32, i8**, i8**, i32*, i32*, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
