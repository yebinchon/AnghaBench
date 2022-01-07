; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_getq_flow_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_getq_flow_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.ifclassq* }
%struct.ifclassq = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@QP_MBUF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_20__*, i64, i64, i8**, i8**, i64*, i64*, i64*, i64)* @fq_getq_flow_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fq_getq_flow_mbuf(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2, i64 %3, i64 %4, i8** %5, i8** %6, i64* %7, i64* %8, i64* %9, i64 %10) #0 {
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.mbuf*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_18__, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.ifclassq*, align 8
  %28 = alloca %struct.ifnet*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i8** %5, i8*** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  store i64 %10, i64* %22, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %26, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.ifclassq*, %struct.ifclassq** %31, align 8
  store %struct.ifclassq* %32, %struct.ifclassq** %27, align 8
  %33 = load %struct.ifclassq*, %struct.ifclassq** %27, align 8
  %34 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %33, i32 0, i32 0
  %35 = load %struct.ifnet*, %struct.ifnet** %34, align 8
  store %struct.ifnet* %35, %struct.ifnet** %28, align 8
  br label %36

36:                                               ; preds = %146, %11
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i64, i64* %26, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = call i64 @MBUFQ_EMPTY(i32* %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %41, %36
  %52 = phi i1 [ false, %41 ], [ false, %36 ], [ %50, %45 ]
  br i1 %52, label %53, label %147

53:                                               ; preds = %51
  %54 = call i32 @_PKTSCHED_PKT_INIT(%struct.TYPE_18__* %25)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %57 = call %struct.mbuf* @fq_getq_flow(%struct.TYPE_21__* %55, %struct.TYPE_20__* %56, %struct.TYPE_18__* %25)
  store %struct.mbuf* %57, %struct.mbuf** %23, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QP_MBUF, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = call i64 @pktsched_get_pkt_len(%struct.TYPE_18__* %25)
  store i64 %64, i64* %24, align 8
  %65 = load i64, i64* %24, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %22, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %70
  store i64 %75, i64* %73, align 8
  %76 = load i8**, i8*** %17, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %53
  %80 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %81 = bitcast %struct.mbuf* %80 to i8*
  %82 = load i8**, i8*** %17, align 8
  store i8* %81, i8** %82, align 8
  br label %102

83:                                               ; preds = %53
  %84 = load i8**, i8*** %18, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load i8**, i8*** %18, align 8
  %90 = bitcast i8** %89 to %struct.mbuf**
  %91 = load %struct.mbuf*, %struct.mbuf** %90, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  %93 = load %struct.mbuf*, %struct.mbuf** %92, align 8
  %94 = icmp eq %struct.mbuf* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %98 = load i8**, i8*** %18, align 8
  %99 = bitcast i8** %98 to %struct.mbuf**
  %100 = load %struct.mbuf*, %struct.mbuf** %99, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  store %struct.mbuf* %97, %struct.mbuf** %101, align 8
  br label %102

102:                                              ; preds = %83, %79
  %103 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %104 = bitcast %struct.mbuf* %103 to i8*
  %105 = load i8**, i8*** %18, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i8**, i8*** %18, align 8
  %107 = bitcast i8** %106 to %struct.TYPE_19__**
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i64, i64* %24, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %115
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load i64*, i64** %20, align 8
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %24, align 8
  %127 = load i64*, i64** %19, align 8
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = load %struct.ifclassq*, %struct.ifclassq** %27, align 8
  %131 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  %132 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %133 = load i64, i64* @QP_MBUF, align 8
  %134 = call i32 @ifclassq_set_packet_metadata(%struct.ifclassq* %130, %struct.ifnet* %131, %struct.mbuf* %132, i64 %133)
  %135 = load i64*, i64** %20, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %16, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %102
  %140 = load i64*, i64** %19, align 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %15, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139, %102
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %26, align 8
  br label %146

146:                                              ; preds = %144, %139
  br label %36

147:                                              ; preds = %51
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = call i64 @MBUFQ_EMPTY(i32* %149)
  %151 = load i64*, i64** %21, align 8
  store i64 %150, i64* %151, align 8
  %152 = load i64, i64* %26, align 8
  ret i64 %152
}

declare dso_local i64 @MBUFQ_EMPTY(i32*) #1

declare dso_local i32 @_PKTSCHED_PKT_INIT(%struct.TYPE_18__*) #1

declare dso_local %struct.mbuf* @fq_getq_flow(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @pktsched_get_pkt_len(%struct.TYPE_18__*) #1

declare dso_local i32 @ifclassq_set_packet_metadata(%struct.ifclassq*, %struct.ifnet*, %struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
