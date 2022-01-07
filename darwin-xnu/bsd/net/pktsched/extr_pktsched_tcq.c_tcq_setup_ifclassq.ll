; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_setup_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_setup_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64, %struct.TYPE_2__*, i32*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64, %struct.tcq_class* }
%struct.tcq_class = type { i32 }
%struct.ifnet = type { i32 }
%struct.tcq_if = type { i32 }

@PKTSCHEDT_NONE = common dso_local global i64 0, align 8
@PKTSCHEDF_QALG_SFB = common dso_local global i32 0, align 4
@TQCF_SFB = common dso_local global i32 0, align 4
@PKTSCHEDF_QALG_ECN = common dso_local global i32 0, align 4
@TQCF_ECN = common dso_local global i32 0, align 4
@PKTSCHEDF_QALG_FLOWCTL = common dso_local global i32 0, align 4
@TQCF_FLOWCTL = common dso_local global i32 0, align 4
@PKTSCHEDF_QALG_DELAYBASED = common dso_local global i32 0, align 4
@TQCF_DELAYBASED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@if_sndq_maxlen = common dso_local global i32 0, align 4
@TQCF_LAZY = common dso_local global i32 0, align 4
@SCIDX_BK = common dso_local global i64 0, align 8
@TQCF_DEFAULTCLASS = common dso_local global i32 0, align 4
@SCIDX_BE = common dso_local global i64 0, align 8
@SCIDX_VI = common dso_local global i64 0, align 8
@SCIDX_VO = common dso_local global i64 0, align 8
@PKTSCHEDT_TCQ = common dso_local global i32 0, align 4
@tcq_enqueue_ifclassq = common dso_local global i32 0, align 4
@tcq_dequeue_tc_ifclassq = common dso_local global i32 0, align 4
@tcq_request_ifclassq = common dso_local global i32 0, align 4
@SCIDX_BK_SYS = common dso_local global i64 0, align 8
@SCIDX_RD = common dso_local global i64 0, align 8
@SCIDX_OAM = common dso_local global i64 0, align 8
@SCIDX_AV = common dso_local global i64 0, align 8
@SCIDX_RV = common dso_local global i64 0, align 8
@SCIDX_CTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcq_setup_ifclassq(%struct.ifclassq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.tcq_class*, align 8
  %10 = alloca %struct.tcq_class*, align 8
  %11 = alloca %struct.tcq_class*, align 8
  %12 = alloca %struct.tcq_class*, align 8
  %13 = alloca %struct.tcq_if*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %18 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %17, i32 0, i32 3
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %21 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %20)
  %22 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %23 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %29 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PKTSCHEDT_NONE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PKTSCHEDF_QALG_SFB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i32, i32* @TQCF_SFB, align 4
  %41 = load i32, i32* %15, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %39, %3
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PKTSCHEDF_QALG_ECN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @TQCF_ECN, align 4
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PKTSCHEDF_QALG_FLOWCTL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @TQCF_FLOWCTL, align 4
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @PKTSCHEDF_QALG_DELAYBASED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @TQCF_DELAYBASED, align 4
  %68 = load i32, i32* %15, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = call %struct.tcq_if* @tcq_alloc(%struct.ifnet* %71, i32 %72)
  store %struct.tcq_if* %73, %struct.tcq_if** %13, align 8
  %74 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %75 = icmp eq %struct.tcq_if* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %4, align 4
  br label %286

78:                                               ; preds = %70
  %79 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %80 = call i32 @IFCQ_MAXLEN(%struct.ifclassq* %79)
  store i32 %80, i32* %14, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @if_sndq_maxlen, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @TQCF_LAZY, align 4
  %89 = or i32 %87, %88
  %90 = load i64, i64* @SCIDX_BK, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @tcq_add_queue(%struct.tcq_if* %85, i32 0, i32 %86, i32 %89, i64 %90, %struct.tcq_class** %9, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %278

95:                                               ; preds = %84
  %96 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @TQCF_DEFAULTCLASS, align 4
  %100 = or i32 %98, %99
  %101 = load i64, i64* @SCIDX_BE, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @tcq_add_queue(%struct.tcq_if* %96, i32 1, i32 %97, i32 %100, i64 %101, %struct.tcq_class** %10, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %278

106:                                              ; preds = %95
  %107 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @TQCF_LAZY, align 4
  %111 = or i32 %109, %110
  %112 = load i64, i64* @SCIDX_VI, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @tcq_add_queue(%struct.tcq_if* %107, i32 2, i32 %108, i32 %111, i64 %112, %struct.tcq_class** %11, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %278

117:                                              ; preds = %106
  %118 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i64, i64* @SCIDX_VO, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @tcq_add_queue(%struct.tcq_if* %118, i32 3, i32 %119, i32 %120, i64 %121, %struct.tcq_class** %12, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %278

126:                                              ; preds = %117
  %127 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %128 = load i32, i32* @PKTSCHEDT_TCQ, align 4
  %129 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %130 = load i32, i32* @tcq_enqueue_ifclassq, align 4
  %131 = load i32, i32* @tcq_dequeue_tc_ifclassq, align 4
  %132 = load i32, i32* @tcq_request_ifclassq, align 4
  %133 = call i32 @ifclassq_attach(%struct.ifclassq* %127, i32 %128, %struct.tcq_if* %129, i32 %130, i32* null, i32 %131, i32* null, i32* null, i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %277

136:                                              ; preds = %126
  %137 = load i64, i64* @SCIDX_BK, align 8
  %138 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %139 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i64, i64* @SCIDX_BK_SYS, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 %137, i64* %143, align 8
  %144 = load %struct.tcq_class*, %struct.tcq_class** %9, align 8
  %145 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %146 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i64, i64* @SCIDX_BK_SYS, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store %struct.tcq_class* %144, %struct.tcq_class** %150, align 8
  %151 = load i64, i64* @SCIDX_BK, align 8
  %152 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %153 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i64, i64* @SCIDX_BK, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i64 %151, i64* %157, align 8
  %158 = load %struct.tcq_class*, %struct.tcq_class** %9, align 8
  %159 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %160 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i64, i64* @SCIDX_BK, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store %struct.tcq_class* %158, %struct.tcq_class** %164, align 8
  %165 = load i64, i64* @SCIDX_BE, align 8
  %166 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %167 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i64, i64* @SCIDX_BE, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i64 %165, i64* %171, align 8
  %172 = load %struct.tcq_class*, %struct.tcq_class** %10, align 8
  %173 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %174 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i64, i64* @SCIDX_BE, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  store %struct.tcq_class* %172, %struct.tcq_class** %178, align 8
  %179 = load i64, i64* @SCIDX_BE, align 8
  %180 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %181 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i64, i64* @SCIDX_RD, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i64 %179, i64* %185, align 8
  %186 = load %struct.tcq_class*, %struct.tcq_class** %10, align 8
  %187 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %188 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %187, i32 0, i32 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i64, i64* @SCIDX_RD, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  store %struct.tcq_class* %186, %struct.tcq_class** %192, align 8
  %193 = load i64, i64* @SCIDX_BE, align 8
  %194 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %195 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i64, i64* @SCIDX_OAM, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i64 %193, i64* %199, align 8
  %200 = load %struct.tcq_class*, %struct.tcq_class** %10, align 8
  %201 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %202 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %201, i32 0, i32 1
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = load i64, i64* @SCIDX_OAM, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  store %struct.tcq_class* %200, %struct.tcq_class** %206, align 8
  %207 = load i64, i64* @SCIDX_VI, align 8
  %208 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %209 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %208, i32 0, i32 1
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = load i64, i64* @SCIDX_AV, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  store i64 %207, i64* %213, align 8
  %214 = load %struct.tcq_class*, %struct.tcq_class** %11, align 8
  %215 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %216 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %215, i32 0, i32 1
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = load i64, i64* @SCIDX_AV, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  store %struct.tcq_class* %214, %struct.tcq_class** %220, align 8
  %221 = load i64, i64* @SCIDX_VI, align 8
  %222 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %223 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %222, i32 0, i32 1
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = load i64, i64* @SCIDX_RV, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  store i64 %221, i64* %227, align 8
  %228 = load %struct.tcq_class*, %struct.tcq_class** %11, align 8
  %229 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %230 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %229, i32 0, i32 1
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = load i64, i64* @SCIDX_RV, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  store %struct.tcq_class* %228, %struct.tcq_class** %234, align 8
  %235 = load i64, i64* @SCIDX_VI, align 8
  %236 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %237 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %236, i32 0, i32 1
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i64, i64* @SCIDX_VI, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i64 %235, i64* %241, align 8
  %242 = load %struct.tcq_class*, %struct.tcq_class** %11, align 8
  %243 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %244 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %243, i32 0, i32 1
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = load i64, i64* @SCIDX_VI, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  store %struct.tcq_class* %242, %struct.tcq_class** %248, align 8
  %249 = load i64, i64* @SCIDX_VO, align 8
  %250 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %251 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %250, i32 0, i32 1
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i64, i64* @SCIDX_VO, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  store i64 %249, i64* %255, align 8
  %256 = load %struct.tcq_class*, %struct.tcq_class** %12, align 8
  %257 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %258 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %257, i32 0, i32 1
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i64, i64* @SCIDX_VO, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  store %struct.tcq_class* %256, %struct.tcq_class** %262, align 8
  %263 = load i64, i64* @SCIDX_VO, align 8
  %264 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %265 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %264, i32 0, i32 1
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = load i64, i64* @SCIDX_CTL, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  store i64 %263, i64* %269, align 8
  %270 = load %struct.tcq_class*, %struct.tcq_class** %12, align 8
  %271 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %272 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %271, i32 0, i32 1
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = load i64, i64* @SCIDX_CTL, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  store %struct.tcq_class* %270, %struct.tcq_class** %276, align 8
  br label %277

277:                                              ; preds = %136, %126
  br label %278

278:                                              ; preds = %277, %125, %116, %105, %94
  %279 = load i32, i32* %16, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.tcq_if*, %struct.tcq_if** %13, align 8
  %283 = call i32 @tcq_destroy_locked(%struct.tcq_if* %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i32, i32* %16, align 4
  store i32 %285, i32* %4, align 4
  br label %286

286:                                              ; preds = %284, %76
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.tcq_if* @tcq_alloc(%struct.ifnet*, i32) #1

declare dso_local i32 @IFCQ_MAXLEN(%struct.ifclassq*) #1

declare dso_local i32 @tcq_add_queue(%struct.tcq_if*, i32, i32, i32, i64, %struct.tcq_class**, i32) #1

declare dso_local i32 @ifclassq_attach(%struct.ifclassq*, i32, %struct.tcq_if*, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @tcq_destroy_locked(%struct.tcq_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
