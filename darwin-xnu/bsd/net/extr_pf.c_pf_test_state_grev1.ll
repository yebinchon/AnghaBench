; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_state_grev1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_state_grev1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i64, %struct.TYPE_25__*, i8*, %struct.pf_state_peer, %struct.pf_state_peer }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { %struct.TYPE_26__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_26__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i8* }
%struct.pf_state_peer = type { i64 }
%struct.pfi_kif = type { i32 }
%struct.pf_pdesc = type { i32, i32, %struct.TYPE_26__*, i32, %struct.TYPE_26__*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.pf_grev1_hdr* }
%struct.pf_grev1_hdr = type { i32 }
%struct.pf_state_key_cmp = type { i32, i32, %struct.TYPE_33__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_28__, i32, i32, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_26__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_26__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }

@IPPROTO_GRE = common dso_local global i32 0, align 4
@PF_GRE_PPTP_VARIANT = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@PFGRE1S_INITIATING = common dso_local global i64 0, align 8
@PFTM_TCP_ESTABLISHED = common dso_local global i64 0, align 8
@PFTM_GREv1_ESTABLISHED = common dso_local global i64 0, align 8
@PFGRE1S_ESTABLISHED = common dso_local global i8* null, align 8
@PFTM_GREv1_INITIATING = common dso_local global i64 0, align 8
@PF_OUT = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state**, i32, %struct.pfi_kif*, i32, %struct.pf_pdesc*)* @pf_test_state_grev1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_state_grev1(%struct.pf_state** %0, i32 %1, %struct.pfi_kif* %2, i32 %3, %struct.pf_pdesc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_state**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfi_kif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pf_pdesc*, align 8
  %12 = alloca %struct.pf_state_peer*, align 8
  %13 = alloca %struct.pf_state_peer*, align 8
  %14 = alloca %struct.pf_state_key_cmp, align 8
  %15 = alloca %struct.pf_grev1_hdr*, align 8
  store %struct.pf_state** %0, %struct.pf_state*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pf_pdesc* %4, %struct.pf_pdesc** %11, align 8
  %16 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %17 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load %struct.pf_grev1_hdr*, %struct.pf_grev1_hdr** %18, align 8
  store %struct.pf_grev1_hdr* %19, %struct.pf_grev1_hdr** %15, align 8
  %20 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @IPPROTO_GRE, align 4
  %22 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 7
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @PF_GRE_PPTP_VARIANT, align 4
  %24 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 6
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PF_IN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %5
  %29 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %30 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %36 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %35, i32 0, i32 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %36, align 8
  %38 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PF_ACPY(%struct.TYPE_26__* %34, %struct.TYPE_26__* %37, i32 %39)
  %41 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 1
  %43 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %44 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %46 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PF_ACPY(%struct.TYPE_26__* %42, %struct.TYPE_26__* %45, i32 %47)
  %49 = load %struct.pf_grev1_hdr*, %struct.pf_grev1_hdr** %15, align 8
  %50 = getelementptr inbounds %struct.pf_grev1_hdr, %struct.pf_grev1_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %82

55:                                               ; preds = %5
  %56 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %57 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 0
  %62 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %63 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %62, i32 0, i32 4
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  %65 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PF_ACPY(%struct.TYPE_26__* %61, %struct.TYPE_26__* %64, i32 %66)
  %68 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 1
  %70 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %71 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PF_ACPY(%struct.TYPE_26__* %69, %struct.TYPE_26__* %72, i32 %74)
  %76 = load %struct.pf_grev1_hdr*, %struct.pf_grev1_hdr** %15, align 8
  %77 = getelementptr inbounds %struct.pf_grev1_hdr, %struct.pf_grev1_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %55, %28
  %83 = call i32 (...) @STATE_LOOKUP()
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %86 = load %struct.pf_state*, %struct.pf_state** %85, align 8
  %87 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %84, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %94 = load %struct.pf_state*, %struct.pf_state** %93, align 8
  %95 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %94, i32 0, i32 3
  store %struct.pf_state_peer* %95, %struct.pf_state_peer** %12, align 8
  %96 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %97 = load %struct.pf_state*, %struct.pf_state** %96, align 8
  %98 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %97, i32 0, i32 4
  store %struct.pf_state_peer* %98, %struct.pf_state_peer** %13, align 8
  br label %106

99:                                               ; preds = %82
  %100 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %101 = load %struct.pf_state*, %struct.pf_state** %100, align 8
  %102 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %101, i32 0, i32 4
  store %struct.pf_state_peer* %102, %struct.pf_state_peer** %12, align 8
  %103 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %104 = load %struct.pf_state*, %struct.pf_state** %103, align 8
  %105 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %104, i32 0, i32 3
  store %struct.pf_state_peer* %105, %struct.pf_state_peer** %13, align 8
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %108 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PFGRE1S_INITIATING, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i64, i64* @PFGRE1S_INITIATING, align 8
  %114 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %115 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = call i8* (...) @pf_time_second()
  %118 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %119 = load %struct.pf_state*, %struct.pf_state** %118, align 8
  %120 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  %121 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %122 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PFGRE1S_INITIATING, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %153

126:                                              ; preds = %116
  %127 = load %struct.pf_state_peer*, %struct.pf_state_peer** %13, align 8
  %128 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PFGRE1S_INITIATING, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %126
  %133 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %134 = load %struct.pf_state*, %struct.pf_state** %133, align 8
  %135 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PFTM_TCP_ESTABLISHED, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i64, i64* @PFTM_GREv1_ESTABLISHED, align 8
  %141 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %142 = load %struct.pf_state*, %struct.pf_state** %141, align 8
  %143 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  br label %144

144:                                              ; preds = %139, %132
  %145 = load i8*, i8** @PFGRE1S_ESTABLISHED, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %148 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load i8*, i8** @PFGRE1S_ESTABLISHED, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.pf_state_peer*, %struct.pf_state_peer** %13, align 8
  %152 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %158

153:                                              ; preds = %126, %116
  %154 = load i64, i64* @PFTM_GREv1_INITIATING, align 8
  %155 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %156 = load %struct.pf_state*, %struct.pf_state** %155, align 8
  %157 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  br label %158

158:                                              ; preds = %153, %144
  %159 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %160 = load %struct.pf_state*, %struct.pf_state** %159, align 8
  %161 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %160, i32 0, i32 1
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = icmp ne %struct.TYPE_20__* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %158
  %167 = call i8* (...) @pf_time_second()
  %168 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %169 = load %struct.pf_state*, %struct.pf_state** %168, align 8
  %170 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %169, i32 0, i32 1
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  store i8* %167, i8** %178, align 8
  br label %179

179:                                              ; preds = %166, %158
  %180 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %181 = load %struct.pf_state*, %struct.pf_state** %180, align 8
  %182 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %181, i32 0, i32 1
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  %184 = call i64 @STATE_GRE_TRANSLATE(%struct.TYPE_25__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %230

186:                                              ; preds = %179
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @PF_OUT, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %192 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %194 [
  ]

194:                                              ; preds = %190
  br label %210

195:                                              ; preds = %186
  %196 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %197 = load %struct.pf_state*, %struct.pf_state** %196, align 8
  %198 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %197, i32 0, i32 1
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.pf_grev1_hdr*, %struct.pf_grev1_hdr** %15, align 8
  %205 = getelementptr inbounds %struct.pf_grev1_hdr, %struct.pf_grev1_hdr* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  %206 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %207 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %209 [
  ]

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209, %194
  %211 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %212 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %213 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = add i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = call i32* @pf_lazy_makewritable(%struct.pf_pdesc* %211, i32 %214, i32 %218)
  %220 = icmp eq i32* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = load i32, i32* @PF_DROP, align 4
  store i32 %222, i32* %6, align 4
  br label %232

223:                                              ; preds = %210
  %224 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %225 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.pf_grev1_hdr*, %struct.pf_grev1_hdr** %15, align 8
  %229 = call i32 @pbuf_copy_back(i32 %226, i32 %227, i32 4, %struct.pf_grev1_hdr* %228)
  br label %230

230:                                              ; preds = %223, %179
  %231 = load i32, i32* @PF_PASS, align 4
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %230, %221
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i32 @PF_ACPY(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @STATE_LOOKUP(...) #1

declare dso_local i8* @pf_time_second(...) #1

declare dso_local i64 @STATE_GRE_TRANSLATE(%struct.TYPE_25__*) #1

declare dso_local i32* @pf_lazy_makewritable(%struct.pf_pdesc*, i32, i32) #1

declare dso_local i32 @pbuf_copy_back(i32, i32, i32, %struct.pf_grev1_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
