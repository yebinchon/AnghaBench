; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_dequeue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i64*, i64, i64, i32, %struct.ifclassq* }
%struct.ifclassq = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.qfq_group = type { i64, i64, i64, i64, i64, i32, %struct.qfq_class** }
%struct.qfq_class = type { i32, i32, i32, i32, i32, i32 }

@ER = common dso_local global i64 0, align 8
@QFQ_IWSUM = common dso_local global i64 0, align 8
@pktsched_verbose = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: %s qid=%d dequeue pkt=0x%llx F=0x%llx V=0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qfq_dequeue(%struct.qfq_if* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca %struct.qfq_group*, align 8
  %8 = alloca %struct.qfq_class*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %15 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @ER, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %21 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %20, i32 0, i32 4
  %22 = load %struct.ifclassq*, %struct.ifclassq** %21, align 8
  store %struct.ifclassq* %22, %struct.ifclassq** %6, align 8
  %23 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %24 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %40, %2
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %223

31:                                               ; preds = %27
  %32 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_if* %32, i64 %33)
  store %struct.qfq_group* %34, %struct.qfq_group** %7, align 8
  %35 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %36 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %42 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pktsched_bit_clr(i32 %43, i64* %5)
  br label %27

45:                                               ; preds = %39
  %46 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %47 = call i32 @IFCQ_IS_EMPTY(%struct.ifclassq* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @VERIFY(i32 %50)
  %52 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %53 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %52, i32 0, i32 6
  %54 = load %struct.qfq_class**, %struct.qfq_class*** %53, align 8
  %55 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %56 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %54, i64 %57
  %59 = load %struct.qfq_class*, %struct.qfq_class** %58, align 8
  store %struct.qfq_class* %59, %struct.qfq_class** %8, align 8
  %60 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %61 = icmp ne %struct.qfq_class* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %64 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %63, i32 0, i32 5
  %65 = call i64 @qempty(i32* %64)
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %45
  %69 = phi i1 [ false, %45 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  %72 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = call i32 @qfq_getq(%struct.qfq_class* %72, %struct.TYPE_5__* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @VERIFY(i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = call i64 @pktsched_get_pkt_len(%struct.TYPE_5__* %81)
  store i64 %82, i64* %10, align 8
  %83 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %84 = call i32 @IFCQ_DEC_LEN(%struct.ifclassq* %83)
  %85 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @IFCQ_DEC_BYTES(%struct.ifclassq* %85, i64 %86)
  %88 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %89 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %88, i32 0, i32 5
  %90 = call i64 @qempty(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %68
  %93 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %94 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %68
  %98 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %99 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %98, i32 0, i32 3
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @PKTCNTR_ADD(i32* %99, i32 1, i64 %100)
  %102 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @IFCQ_XMIT_ADD(%struct.ifclassq* %102, i32 1, i64 %103)
  %105 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %106 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @QFQ_IWSUM, align 8
  %110 = mul nsw i64 %108, %109
  %111 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %112 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* @pktsched_verbose, align 4
  %116 = icmp sgt i32 %115, 2
  br i1 %116, label %117, label %139

117:                                              ; preds = %97
  %118 = load i32, i32* @LOG_DEBUG, align 4
  %119 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %120 = call i32 @QFQIF_IFP(%struct.qfq_if* %119)
  %121 = call i32 @if_name(i32 %120)
  %122 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %123 = call i32 @qfq_style(%struct.qfq_if* %122)
  %124 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %125 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @VM_KERNEL_ADDRPERM(i32* %129)
  %131 = trunc i64 %130 to i32
  %132 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %133 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %136 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @log(i32 %118, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %123, i32 %126, i32 %131, i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %117, %97
  %140 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %141 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %142 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %143 = call i64 @qfq_update_class(%struct.qfq_if* %140, %struct.qfq_group* %141, %struct.qfq_class* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %218

145:                                              ; preds = %139
  %146 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %147 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %11, align 8
  %149 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %150 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %151 = call %struct.qfq_class* @qfq_slot_scan(%struct.qfq_if* %149, %struct.qfq_group* %150)
  store %struct.qfq_class* %151, %struct.qfq_class** %8, align 8
  %152 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %153 = icmp ne %struct.qfq_class* %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %145
  %155 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %156 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %159 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @ER, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = call i32 @pktsched_bit_clr(i32 %157, i64* %162)
  br label %211

164:                                              ; preds = %145
  %165 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %166 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %169 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @qfq_round_down(i32 %167, i64 %170)
  store i64 %171, i64* %13, align 8
  %172 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %173 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %13, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %164
  br label %219

178:                                              ; preds = %164
  %179 = load i64, i64* %13, align 8
  %180 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %181 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %180, i32 0, i32 4
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %184 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = shl i64 2, %185
  %187 = add i64 %182, %186
  %188 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %189 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %191 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %194 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* @ER, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = call i32 @pktsched_bit_clr(i32 %192, i64* %197)
  %199 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %200 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %201 = call i64 @qfq_calc_state(%struct.qfq_if* %199, %struct.qfq_group* %200)
  store i64 %201, i64* %12, align 8
  %202 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %203 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %206 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = call i32 @pktsched_bit_set(i32 %204, i64* %209)
  br label %211

211:                                              ; preds = %178, %154
  %212 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %213 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %214 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = load i64, i64* %11, align 8
  %217 = call i32 @qfq_unblock_groups(%struct.qfq_if* %212, i32 %215, i64 %216)
  br label %218

218:                                              ; preds = %211, %139
  br label %219

219:                                              ; preds = %218, %177
  %220 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %221 = load i64, i64* %9, align 8
  %222 = call i32 @qfq_update_eligible(%struct.qfq_if* %220, i64 %221)
  br label %223

223:                                              ; preds = %219, %30
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_if*, i64) #1

declare dso_local i32 @pktsched_bit_clr(i32, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_IS_EMPTY(%struct.ifclassq*) #1

declare dso_local i64 @qempty(i32*) #1

declare dso_local i32 @qfq_getq(%struct.qfq_class*, %struct.TYPE_5__*) #1

declare dso_local i64 @pktsched_get_pkt_len(%struct.TYPE_5__*) #1

declare dso_local i32 @IFCQ_DEC_LEN(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_DEC_BYTES(%struct.ifclassq*, i64) #1

declare dso_local i32 @PKTCNTR_ADD(i32*, i32, i64) #1

declare dso_local i32 @IFCQ_XMIT_ADD(%struct.ifclassq*, i32, i64) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @QFQIF_IFP(%struct.qfq_if*) #1

declare dso_local i32 @qfq_style(%struct.qfq_if*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i32*) #1

declare dso_local i64 @qfq_update_class(%struct.qfq_if*, %struct.qfq_group*, %struct.qfq_class*) #1

declare dso_local %struct.qfq_class* @qfq_slot_scan(%struct.qfq_if*, %struct.qfq_group*) #1

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i64 @qfq_calc_state(%struct.qfq_if*, %struct.qfq_group*) #1

declare dso_local i32 @pktsched_bit_set(i32, i64*) #1

declare dso_local i32 @qfq_unblock_groups(%struct.qfq_if*, i32, i64) #1

declare dso_local i32 @qfq_update_eligible(%struct.qfq_if*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
