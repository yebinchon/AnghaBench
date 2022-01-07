; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_enqueue_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_enqueue_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pf_mtag = type { i32 }
%struct.mbuf = type { i32 }

@QP_MBUF = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: packet does not have pkthdr\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IFCQ_SC_MAX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EQFULL = common dso_local global i32 0, align 4
@EQSUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifclassq*, i8*, i32, i32*)* @tcq_enqueue_ifclassq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcq_enqueue_ifclassq(%struct.ifclassq* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pf_mtag*, align 8
  %14 = alloca %struct.mbuf*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.pf_mtag* null, %struct.pf_mtag** %13, align 8
  %15 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %16 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @QP_MBUF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.mbuf*
  store %struct.mbuf* %22, %struct.mbuf** %14, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @M_PKTHDR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %32 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @if_name(i32 %33)
  %35 = call i32 @log(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %37 = call i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq* %36)
  %38 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %5, align 4
  br label %97

43:                                               ; preds = %20
  %44 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %45 = call %struct.pf_mtag* @m_pftag(%struct.mbuf* %44)
  store %struct.pf_mtag* %45, %struct.pf_mtag** %13, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %47 = call i32 @mbuf_get_service_class(%struct.mbuf* %46)
  %48 = call i64 @MBUF_SCIDX(i32 %47)
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %43, %4
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @IFCQ_SC_MAX, align 8
  %52 = icmp slt i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @VERIFY(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @pktsched_pkt_encap(i32* %12, i32 %55, i8* %56)
  %58 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %59 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %62 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pf_mtag*, %struct.pf_mtag** %13, align 8
  %69 = call i32 @tcq_enqueue(i32 %60, i32 %67, i32* %12, %struct.pf_mtag* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %49
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 128
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = call i32 @pktsched_free_pkt(i32* %12)
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %72, %49
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %93 [
    i32 132, label %84
    i32 131, label %86
    i32 130, label %88
    i32 128, label %90
    i32 129, label %92
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* @ENOBUFS, align 4
  store i32 %85, i32* %11, align 4
  br label %95

86:                                               ; preds = %82
  %87 = load i32, i32* @EQFULL, align 4
  store i32 %87, i32* %11, align 4
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @EQSUSPENDED, align 4
  store i32 %89, i32* %11, align 4
  br label %95

90:                                               ; preds = %82
  %91 = load i32, i32* @EQFULL, align 4
  store i32 %91, i32* %11, align 4
  br label %95

92:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %95

93:                                               ; preds = %82
  %94 = call i32 @VERIFY(i32 0)
  br label %95

95:                                               ; preds = %93, %92, %90, %88, %86, %84
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %29
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.pf_mtag* @m_pftag(%struct.mbuf*) #1

declare dso_local i64 @MBUF_SCIDX(i32) #1

declare dso_local i32 @mbuf_get_service_class(%struct.mbuf*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pktsched_pkt_encap(i32*, i32, i8*) #1

declare dso_local i32 @tcq_enqueue(i32, i32, i32*, %struct.pf_mtag*) #1

declare dso_local i32 @pktsched_free_pkt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
