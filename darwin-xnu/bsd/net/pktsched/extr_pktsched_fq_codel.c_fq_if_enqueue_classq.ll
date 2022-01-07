; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_enqueue_classq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_enqueue_classq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@QP_MBUF = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@FQ_IF_MAX_CLASSES = common dso_local global i64 0, align 8
@MBUF_SC_BK_SYS = common dso_local global i64 0, align 8
@EQSUSPENDED = common dso_local global i32 0, align 4
@FQS_DRIVER_MANAGED = common dso_local global i32 0, align 4
@FQ_IF_ER = common dso_local global i64 0, align 8
@FQ_IF_EB = common dso_local global i64 0, align 8
@FQ_IF_IB = common dso_local global i64 0, align 8
@CLASSQEQ_SUCCESS_FC = common dso_local global i32 0, align 4
@EQFULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fq_if_enqueue_classq(%struct.ifclassq* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %18 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @QP_MBUF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_11__*
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @M_PKTHDR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %22
  %31 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %32 = call i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  %35 = call i32 @m_freem(%struct.TYPE_11__* %34)
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @ENOBUFS, align 4
  store i32 %38, i32* %5, align 4
  br label %175

39:                                               ; preds = %22, %4
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @pktsched_pkt_encap(i32* %16, i32 %40, i8* %41)
  %43 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %44 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %11, align 8
  %47 = call i64 @pktsched_get_pkt_svc(i32* %16)
  store i64 %47, i64* %15, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i64 @fq_if_service_to_priority(%struct.TYPE_12__* %48, i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp uge i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @FQ_IF_MAX_CLASSES, align 8
  %56 = icmp ult i64 %54, %55
  br label %57

57:                                               ; preds = %53, %39
  %58 = phi i1 [ false, %39 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @VERIFY(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %64
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %12, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @MBUF_SC_BK_SYS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %57
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %81 = call i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq* %80)
  %82 = call i32 @pktsched_free_pkt(i32* %16)
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @EQSUSPENDED, align 4
  store i32 %85, i32* %5, align 4
  br label %175

86:                                               ; preds = %69, %57
  %87 = call i32 @pktsched_get_pkt_len(i32* %16)
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %90 = call i32 @fq_addq(%struct.TYPE_12__* %88, i32* %16, %struct.TYPE_13__* %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FQS_DRIVER_MANAGED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %129, label %97

97:                                               ; preds = %86
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %99 = call i32 @FQ_IF_CLASSQ_IDLE(%struct.TYPE_13__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %129, label %101

101:                                              ; preds = %97
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @FQ_IF_ER, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @FQ_IF_EB, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %107, %113
  %115 = load i64, i64* %10, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 1, %116
  %118 = and i32 %114, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %101
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @FQ_IF_IB, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = call i32 @pktsched_bit_set(i64 %121, i32* %126)
  br label %128

128:                                              ; preds = %120, %101
  br label %129

129:                                              ; preds = %128, %97, %86
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @CLASSQEQ_SUCCESS_FC, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* @EQFULL, align 4
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* @FALSE, align 4
  %139 = load i32*, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  br label %164

140:                                              ; preds = %132
  %141 = load i32, i32* @TRUE, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 130
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 129
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 128
  br label %151

151:                                              ; preds = %148, %145, %140
  %152 = phi i1 [ true, %145 ], [ true, %140 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @VERIFY(i32 %153)
  %155 = call i32 @pktsched_free_pkt(i32* %16)
  %156 = load i32, i32* %13, align 4
  switch i32 %156, label %163 [
    i32 130, label %157
    i32 129, label %159
    i32 128, label %161
  ]

157:                                              ; preds = %151
  %158 = load i32, i32* @ENOBUFS, align 4
  store i32 %158, i32* %5, align 4
  br label %175

159:                                              ; preds = %151
  %160 = load i32, i32* @EQFULL, align 4
  store i32 %160, i32* %5, align 4
  br label %175

161:                                              ; preds = %151
  %162 = load i32, i32* @EQSUSPENDED, align 4
  store i32 %162, i32* %5, align 4
  br label %175

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %136
  br label %168

165:                                              ; preds = %129
  %166 = load i32, i32* @FALSE, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %164
  %169 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %170 = call i32 @IFCQ_INC_LEN(%struct.ifclassq* %169)
  %171 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @IFCQ_INC_BYTES(%struct.ifclassq* %171, i32 %172)
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %168, %161, %159, %157, %74, %30
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @m_freem(%struct.TYPE_11__*) #1

declare dso_local i32 @pktsched_pkt_encap(i32*, i32, i8*) #1

declare dso_local i64 @pktsched_get_pkt_svc(i32*) #1

declare dso_local i64 @fq_if_service_to_priority(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pktsched_free_pkt(i32*) #1

declare dso_local i32 @pktsched_get_pkt_len(i32*) #1

declare dso_local i32 @fq_addq(%struct.TYPE_12__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @FQ_IF_CLASSQ_IDLE(%struct.TYPE_13__*) #1

declare dso_local i32 @pktsched_bit_set(i64, i32*) #1

declare dso_local i32 @IFCQ_INC_LEN(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_INC_BYTES(%struct.ifclassq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
