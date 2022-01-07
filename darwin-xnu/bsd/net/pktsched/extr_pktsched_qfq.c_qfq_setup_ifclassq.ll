; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_setup_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_setup_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64, %struct.TYPE_2__*, i32*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64, %struct.qfq_class* }
%struct.qfq_class = type { i32 }
%struct.ifnet = type { i32 }
%struct.qfq_if = type { i32 }

@PKTSCHEDT_NONE = common dso_local global i64 0, align 8
@PKTSCHEDF_QALG_SFB = common dso_local global i32 0, align 4
@QFCF_SFB = common dso_local global i32 0, align 4
@PKTSCHEDF_QALG_ECN = common dso_local global i32 0, align 4
@QFCF_ECN = common dso_local global i32 0, align 4
@PKTSCHEDF_QALG_FLOWCTL = common dso_local global i32 0, align 4
@QFCF_FLOWCTL = common dso_local global i32 0, align 4
@PKTSCHEDF_QALG_DELAYBASED = common dso_local global i32 0, align 4
@QFCF_DELAYBASED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@if_sndq_maxlen = common dso_local global i32 0, align 4
@QFCF_LAZY = common dso_local global i32 0, align 4
@SCIDX_BK_SYS = common dso_local global i64 0, align 8
@SCIDX_BK = common dso_local global i64 0, align 8
@QFCF_DEFAULTCLASS = common dso_local global i32 0, align 4
@SCIDX_BE = common dso_local global i64 0, align 8
@SCIDX_RD = common dso_local global i64 0, align 8
@SCIDX_OAM = common dso_local global i64 0, align 8
@SCIDX_AV = common dso_local global i64 0, align 8
@SCIDX_RV = common dso_local global i64 0, align 8
@SCIDX_VI = common dso_local global i64 0, align 8
@SCIDX_VO = common dso_local global i64 0, align 8
@SCIDX_CTL = common dso_local global i64 0, align 8
@PKTSCHEDT_QFQ = common dso_local global i32 0, align 4
@qfq_enqueue_ifclassq = common dso_local global i32 0, align 4
@qfq_dequeue_ifclassq = common dso_local global i32 0, align 4
@qfq_request_ifclassq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfq_setup_ifclassq(%struct.ifclassq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.qfq_class*, align 8
  %10 = alloca %struct.qfq_class*, align 8
  %11 = alloca %struct.qfq_class*, align 8
  %12 = alloca %struct.qfq_class*, align 8
  %13 = alloca %struct.qfq_class*, align 8
  %14 = alloca %struct.qfq_class*, align 8
  %15 = alloca %struct.qfq_class*, align 8
  %16 = alloca %struct.qfq_class*, align 8
  %17 = alloca %struct.qfq_class*, align 8
  %18 = alloca %struct.qfq_class*, align 8
  %19 = alloca %struct.qfq_if*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %24 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %23, i32 0, i32 3
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %8, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %27 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %26)
  %28 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %29 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %35 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PKTSCHEDT_NONE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PKTSCHEDF_QALG_SFB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load i32, i32* @QFCF_SFB, align 4
  %47 = load i32, i32* %21, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %21, align 4
  br label %49

49:                                               ; preds = %45, %3
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PKTSCHEDF_QALG_ECN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @QFCF_ECN, align 4
  %56 = load i32, i32* %21, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %21, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PKTSCHEDF_QALG_FLOWCTL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @QFCF_FLOWCTL, align 4
  %65 = load i32, i32* %21, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PKTSCHEDF_QALG_DELAYBASED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @QFCF_DELAYBASED, align 4
  %74 = load i32, i32* %21, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %21, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %78 = load i32, i32* @M_WAITOK, align 4
  %79 = call %struct.qfq_if* @qfq_alloc(%struct.ifnet* %77, i32 %78)
  store %struct.qfq_if* %79, %struct.qfq_if** %19, align 8
  %80 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %81 = icmp eq %struct.qfq_if* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %4, align 4
  br label %358

84:                                               ; preds = %76
  %85 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %86 = call i32 @IFCQ_MAXLEN(%struct.ifclassq* %85)
  store i32 %86, i32* %20, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @if_sndq_maxlen, align 4
  store i32 %89, i32* %20, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* @QFCF_LAZY, align 4
  %95 = or i32 %93, %94
  %96 = load i64, i64* @SCIDX_BK_SYS, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @qfq_add_queue(%struct.qfq_if* %91, i32 %92, i32 300, i32 1200, i32 %95, i64 %96, %struct.qfq_class** %9, i32 %97)
  store i32 %98, i32* %22, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %350

101:                                              ; preds = %90
  %102 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* @QFCF_LAZY, align 4
  %106 = or i32 %104, %105
  %107 = load i64, i64* @SCIDX_BK, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @qfq_add_queue(%struct.qfq_if* %102, i32 %103, i32 600, i32 1400, i32 %106, i64 %107, %struct.qfq_class** %10, i32 %108)
  store i32 %109, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %350

112:                                              ; preds = %101
  %113 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* @QFCF_DEFAULTCLASS, align 4
  %117 = or i32 %115, %116
  %118 = load i64, i64* @SCIDX_BE, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @qfq_add_queue(%struct.qfq_if* %113, i32 %114, i32 2400, i32 600, i32 %117, i64 %118, %struct.qfq_class** %11, i32 %119)
  store i32 %120, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %350

123:                                              ; preds = %112
  %124 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @QFCF_LAZY, align 4
  %128 = or i32 %126, %127
  %129 = load i64, i64* @SCIDX_RD, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @qfq_add_queue(%struct.qfq_if* %124, i32 %125, i32 2700, i32 600, i32 %128, i64 %129, %struct.qfq_class** %12, i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %350

134:                                              ; preds = %123
  %135 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* @QFCF_LAZY, align 4
  %139 = or i32 %137, %138
  %140 = load i64, i64* @SCIDX_OAM, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @qfq_add_queue(%struct.qfq_if* %135, i32 %136, i32 3000, i32 400, i32 %139, i64 %140, %struct.qfq_class** %13, i32 %141)
  store i32 %142, i32* %22, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %350

145:                                              ; preds = %134
  %146 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* @QFCF_LAZY, align 4
  %150 = or i32 %148, %149
  %151 = load i64, i64* @SCIDX_AV, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @qfq_add_queue(%struct.qfq_if* %146, i32 %147, i32 8000, i32 1000, i32 %150, i64 %151, %struct.qfq_class** %14, i32 %152)
  store i32 %153, i32* %22, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %350

156:                                              ; preds = %145
  %157 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* @QFCF_LAZY, align 4
  %161 = or i32 %159, %160
  %162 = load i64, i64* @SCIDX_RV, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @qfq_add_queue(%struct.qfq_if* %157, i32 %158, i32 15000, i32 1200, i32 %161, i64 %162, %struct.qfq_class** %15, i32 %163)
  store i32 %164, i32* %22, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %350

167:                                              ; preds = %156
  %168 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* @QFCF_LAZY, align 4
  %172 = or i32 %170, %171
  %173 = load i64, i64* @SCIDX_VI, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @qfq_add_queue(%struct.qfq_if* %168, i32 %169, i32 20000, i32 1400, i32 %172, i64 %173, %struct.qfq_class** %16, i32 %174)
  store i32 %175, i32* %22, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %350

178:                                              ; preds = %167
  %179 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* @QFCF_LAZY, align 4
  %183 = or i32 %181, %182
  %184 = load i64, i64* @SCIDX_VO, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @qfq_add_queue(%struct.qfq_if* %179, i32 %180, i32 23000, i32 200, i32 %183, i64 %184, %struct.qfq_class** %17, i32 %185)
  store i32 %186, i32* %22, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %178
  br label %350

189:                                              ; preds = %178
  %190 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %21, align 4
  %193 = load i64, i64* @SCIDX_CTL, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @qfq_add_queue(%struct.qfq_if* %190, i32 %191, i32 25000, i32 200, i32 %192, i64 %193, %struct.qfq_class** %18, i32 %194)
  store i32 %195, i32* %22, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %350

198:                                              ; preds = %189
  %199 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %200 = load i32, i32* @PKTSCHEDT_QFQ, align 4
  %201 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %202 = load i32, i32* @qfq_enqueue_ifclassq, align 4
  %203 = load i32, i32* @qfq_dequeue_ifclassq, align 4
  %204 = load i32, i32* @qfq_request_ifclassq, align 4
  %205 = call i32 @ifclassq_attach(%struct.ifclassq* %199, i32 %200, %struct.qfq_if* %201, i32 %202, i32 %203, i32* null, i32* null, i32* null, i32 %204)
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %22, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %349

208:                                              ; preds = %198
  %209 = load i64, i64* @SCIDX_BK_SYS, align 8
  %210 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %211 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i64, i64* @SCIDX_BK_SYS, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  store i64 %209, i64* %215, align 8
  %216 = load %struct.qfq_class*, %struct.qfq_class** %9, align 8
  %217 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %218 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %217, i32 0, i32 1
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = load i64, i64* @SCIDX_BK_SYS, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  store %struct.qfq_class* %216, %struct.qfq_class** %222, align 8
  %223 = load i64, i64* @SCIDX_BK, align 8
  %224 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %225 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %224, i32 0, i32 1
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load i64, i64* @SCIDX_BK, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  store i64 %223, i64* %229, align 8
  %230 = load %struct.qfq_class*, %struct.qfq_class** %10, align 8
  %231 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %232 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %231, i32 0, i32 1
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = load i64, i64* @SCIDX_BK, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  store %struct.qfq_class* %230, %struct.qfq_class** %236, align 8
  %237 = load i64, i64* @SCIDX_BE, align 8
  %238 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %239 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %238, i32 0, i32 1
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = load i64, i64* @SCIDX_BE, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  store i64 %237, i64* %243, align 8
  %244 = load %struct.qfq_class*, %struct.qfq_class** %11, align 8
  %245 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %246 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %245, i32 0, i32 1
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = load i64, i64* @SCIDX_BE, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 1
  store %struct.qfq_class* %244, %struct.qfq_class** %250, align 8
  %251 = load i64, i64* @SCIDX_RD, align 8
  %252 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %253 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %252, i32 0, i32 1
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = load i64, i64* @SCIDX_RD, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  store i64 %251, i64* %257, align 8
  %258 = load %struct.qfq_class*, %struct.qfq_class** %12, align 8
  %259 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %260 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %259, i32 0, i32 1
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = load i64, i64* @SCIDX_RD, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  store %struct.qfq_class* %258, %struct.qfq_class** %264, align 8
  %265 = load i64, i64* @SCIDX_OAM, align 8
  %266 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %267 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %266, i32 0, i32 1
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = load i64, i64* @SCIDX_OAM, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  store i64 %265, i64* %271, align 8
  %272 = load %struct.qfq_class*, %struct.qfq_class** %13, align 8
  %273 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %274 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %273, i32 0, i32 1
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = load i64, i64* @SCIDX_OAM, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 1
  store %struct.qfq_class* %272, %struct.qfq_class** %278, align 8
  %279 = load i64, i64* @SCIDX_AV, align 8
  %280 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %281 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %280, i32 0, i32 1
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = load i64, i64* @SCIDX_AV, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  store i64 %279, i64* %285, align 8
  %286 = load %struct.qfq_class*, %struct.qfq_class** %14, align 8
  %287 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %288 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %287, i32 0, i32 1
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = load i64, i64* @SCIDX_AV, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 1
  store %struct.qfq_class* %286, %struct.qfq_class** %292, align 8
  %293 = load i64, i64* @SCIDX_RV, align 8
  %294 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %295 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %294, i32 0, i32 1
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = load i64, i64* @SCIDX_RV, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  store i64 %293, i64* %299, align 8
  %300 = load %struct.qfq_class*, %struct.qfq_class** %15, align 8
  %301 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %302 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %301, i32 0, i32 1
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = load i64, i64* @SCIDX_RV, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 1
  store %struct.qfq_class* %300, %struct.qfq_class** %306, align 8
  %307 = load i64, i64* @SCIDX_VI, align 8
  %308 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %309 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %308, i32 0, i32 1
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %309, align 8
  %311 = load i64, i64* @SCIDX_VI, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  store i64 %307, i64* %313, align 8
  %314 = load %struct.qfq_class*, %struct.qfq_class** %16, align 8
  %315 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %316 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %315, i32 0, i32 1
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = load i64, i64* @SCIDX_VI, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  store %struct.qfq_class* %314, %struct.qfq_class** %320, align 8
  %321 = load i64, i64* @SCIDX_VO, align 8
  %322 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %323 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %322, i32 0, i32 1
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = load i64, i64* @SCIDX_VO, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  store i64 %321, i64* %327, align 8
  %328 = load %struct.qfq_class*, %struct.qfq_class** %17, align 8
  %329 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %330 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %329, i32 0, i32 1
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** %330, align 8
  %332 = load i64, i64* @SCIDX_VO, align 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 1
  store %struct.qfq_class* %328, %struct.qfq_class** %334, align 8
  %335 = load i64, i64* @SCIDX_CTL, align 8
  %336 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %337 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %336, i32 0, i32 1
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** %337, align 8
  %339 = load i64, i64* @SCIDX_CTL, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  store i64 %335, i64* %341, align 8
  %342 = load %struct.qfq_class*, %struct.qfq_class** %18, align 8
  %343 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %344 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %343, i32 0, i32 1
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** %344, align 8
  %346 = load i64, i64* @SCIDX_CTL, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 1
  store %struct.qfq_class* %342, %struct.qfq_class** %348, align 8
  br label %349

349:                                              ; preds = %208, %198
  br label %350

350:                                              ; preds = %349, %197, %188, %177, %166, %155, %144, %133, %122, %111, %100
  %351 = load i32, i32* %22, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load %struct.qfq_if*, %struct.qfq_if** %19, align 8
  %355 = call i32 @qfq_destroy_locked(%struct.qfq_if* %354)
  br label %356

356:                                              ; preds = %353, %350
  %357 = load i32, i32* %22, align 4
  store i32 %357, i32* %4, align 4
  br label %358

358:                                              ; preds = %356, %82
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.qfq_if* @qfq_alloc(%struct.ifnet*, i32) #1

declare dso_local i32 @IFCQ_MAXLEN(%struct.ifclassq*) #1

declare dso_local i32 @qfq_add_queue(%struct.qfq_if*, i32, i32, i32, i32, i64, %struct.qfq_class**, i32) #1

declare dso_local i32 @ifclassq_attach(%struct.ifclassq*, i32, %struct.qfq_if*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @qfq_destroy_locked(%struct.qfq_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
