; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_state_esp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_state_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.pf_state = type { i64, %struct.pf_state_key*, i32, i32, %struct.pf_state_peer, %struct.pf_state_peer, i32 }
%struct.pf_state_key = type { i64, i32, %struct.TYPE_32__, %struct.TYPE_18__, i32, %struct.TYPE_22__ }
%struct.TYPE_32__ = type { %struct.TYPE_24__, %struct.TYPE_31__ }
%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_24__, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.pf_state_peer = type { i64 }
%struct.pfi_kif = type { i32 }
%struct.pf_pdesc = type { i32, i32, i64, %struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.pf_esp_hdr* }
%struct.pf_esp_hdr = type { i64 }
%struct.pf_state_key_cmp = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_27__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_24__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_24__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }

@IPPROTO_ESP = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@pf_state_tree_ext_gwy = common dso_local global i32 0, align 4
@pf_statetbl_ext_gwy = common dso_local global i32 0, align 4
@PF_DT_SKIP_EXTGWY = common dso_local global i32 0, align 4
@pf_state_tree_lan_ext = common dso_local global i32 0, align 4
@pf_statetbl_lan_ext = common dso_local global i32 0, align 4
@PF_DT_SKIP_LANEXT = common dso_local global i32 0, align 4
@PFTM_UNLINKED = common dso_local global i32 0, align 4
@HOOK_REMOVE = common dso_local global i32 0, align 4
@HOOK_FREE = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@PKTF_FLOW_ID = common dso_local global i32 0, align 4
@PKTF_FLOW_ADV = common dso_local global i32 0, align 4
@PFESPS_INITIATING = common dso_local global i64 0, align 8
@PFTM_ESP_ESTABLISHED = common dso_local global i32 0, align 4
@PFESPS_ESTABLISHED = common dso_local global i8* null, align 8
@PFTM_ESP_INITIATING = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state**, i32, %struct.pfi_kif*, i32, %struct.pf_pdesc*)* @pf_test_state_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_state_esp(%struct.pf_state** %0, i32 %1, %struct.pfi_kif* %2, i32 %3, %struct.pf_pdesc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_state**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfi_kif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pf_pdesc*, align 8
  %12 = alloca %struct.pf_state_peer*, align 8
  %13 = alloca %struct.pf_state_peer*, align 8
  %14 = alloca %struct.pf_state_key_cmp, align 8
  %15 = alloca %struct.pf_esp_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.pf_state*, align 8
  %18 = alloca %struct.pf_state_key*, align 8
  %19 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state** %0, %struct.pf_state*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pf_pdesc* %4, %struct.pf_pdesc** %11, align 8
  %20 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %21 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.pf_esp_hdr*, %struct.pf_esp_hdr** %22, align 8
  store %struct.pf_esp_hdr* %23, %struct.pf_esp_hdr** %15, align 8
  %24 = call i32 @memset(%struct.pf_state_key_cmp* %14, i32 0, i32 56)
  %25 = load i32, i32* @IPPROTO_ESP, align 4
  %26 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 6
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PF_IN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %5
  %31 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %32 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %38 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %37, i32 0, i32 5
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PF_ACPY(%struct.TYPE_24__* %36, %struct.TYPE_24__* %39, i32 %41)
  %43 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  %45 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %46 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %45, i32 0, i32 3
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PF_ACPY(%struct.TYPE_24__* %44, %struct.TYPE_24__* %47, i32 %49)
  %51 = load %struct.pf_esp_hdr*, %struct.pf_esp_hdr** %15, align 8
  %52 = getelementptr inbounds %struct.pf_esp_hdr, %struct.pf_esp_hdr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %84

57:                                               ; preds = %5
  %58 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %59 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %65 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %64, i32 0, i32 5
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %65, align 8
  %67 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PF_ACPY(%struct.TYPE_24__* %63, %struct.TYPE_24__* %66, i32 %68)
  %70 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %73 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %72, i32 0, i32 3
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PF_ACPY(%struct.TYPE_24__* %71, %struct.TYPE_24__* %74, i32 %76)
  %78 = load %struct.pf_esp_hdr*, %struct.pf_esp_hdr** %15, align 8
  %79 = getelementptr inbounds %struct.pf_esp_hdr, %struct.pf_esp_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %57, %30
  %85 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.pf_state* @pf_find_state(%struct.pfi_kif* %85, %struct.pf_state_key_cmp* %14, i32 %86)
  %88 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  store %struct.pf_state* %87, %struct.pf_state** %88, align 8
  %89 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %90 = load %struct.pf_state*, %struct.pf_state** %89, align 8
  %91 = icmp eq %struct.pf_state* %90, null
  br i1 %91, label %92, label %196

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PF_IN, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call %struct.pf_state* @pf_find_state(%struct.pfi_kif* %100, %struct.pf_state_key_cmp* %14, i32 %101)
  store %struct.pf_state* %102, %struct.pf_state** %17, align 8
  %103 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %104 = icmp ne %struct.pf_state* %103, null
  br i1 %104, label %105, label %135

105:                                              ; preds = %96
  %106 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %107 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %106, i32 0, i32 1
  %108 = load %struct.pf_state_key*, %struct.pf_state_key** %107, align 8
  store %struct.pf_state_key* %108, %struct.pf_state_key** %18, align 8
  %109 = load i32, i32* @pf_state_tree_ext_gwy, align 4
  %110 = load %struct.pf_state_key*, %struct.pf_state_key** %18, align 8
  %111 = call i32 @RB_REMOVE(i32 %109, i32* @pf_statetbl_ext_gwy, %struct.pf_state_key* %110)
  %112 = load %struct.pf_esp_hdr*, %struct.pf_esp_hdr** %15, align 8
  %113 = getelementptr inbounds %struct.pf_esp_hdr, %struct.pf_esp_hdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.pf_state_key*, %struct.pf_state_key** %18, align 8
  %116 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  %119 = load %struct.pf_state_key*, %struct.pf_state_key** %18, align 8
  %120 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  store i64 %114, i64* %122, align 8
  %123 = load i32, i32* @pf_state_tree_ext_gwy, align 4
  %124 = load %struct.pf_state_key*, %struct.pf_state_key** %18, align 8
  %125 = call i64 @RB_INSERT(i32 %123, i32* @pf_statetbl_ext_gwy, %struct.pf_state_key* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %105
  %128 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %129 = load i32, i32* @PF_DT_SKIP_EXTGWY, align 4
  %130 = call i32 @pf_detach_state(%struct.pf_state* %128, i32 %129)
  br label %134

131:                                              ; preds = %105
  %132 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %133 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  store %struct.pf_state* %132, %struct.pf_state** %133, align 8
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %96
  br label %172

136:                                              ; preds = %92
  %137 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %14, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call %struct.pf_state* @pf_find_state(%struct.pfi_kif* %140, %struct.pf_state_key_cmp* %14, i32 %141)
  store %struct.pf_state* %142, %struct.pf_state** %17, align 8
  %143 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %144 = icmp ne %struct.pf_state* %143, null
  br i1 %144, label %145, label %171

145:                                              ; preds = %136
  %146 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %147 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %146, i32 0, i32 1
  %148 = load %struct.pf_state_key*, %struct.pf_state_key** %147, align 8
  store %struct.pf_state_key* %148, %struct.pf_state_key** %19, align 8
  %149 = load i32, i32* @pf_state_tree_lan_ext, align 4
  %150 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %151 = call i32 @RB_REMOVE(i32 %149, i32* @pf_statetbl_lan_ext, %struct.pf_state_key* %150)
  %152 = load %struct.pf_esp_hdr*, %struct.pf_esp_hdr** %15, align 8
  %153 = getelementptr inbounds %struct.pf_esp_hdr, %struct.pf_esp_hdr* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %156 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  store i64 %154, i64* %158, align 8
  %159 = load i32, i32* @pf_state_tree_lan_ext, align 4
  %160 = load %struct.pf_state_key*, %struct.pf_state_key** %19, align 8
  %161 = call i64 @RB_INSERT(i32 %159, i32* @pf_statetbl_lan_ext, %struct.pf_state_key* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %145
  %164 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %165 = load i32, i32* @PF_DT_SKIP_LANEXT, align 4
  %166 = call i32 @pf_detach_state(%struct.pf_state* %164, i32 %165)
  br label %170

167:                                              ; preds = %145
  %168 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %169 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  store %struct.pf_state* %168, %struct.pf_state** %169, align 8
  br label %170

170:                                              ; preds = %167, %163
  br label %171

171:                                              ; preds = %170, %136
  br label %172

172:                                              ; preds = %171, %135
  %173 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %174 = icmp ne %struct.pf_state* %173, null
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %177 = load %struct.pf_state*, %struct.pf_state** %176, align 8
  %178 = icmp eq %struct.pf_state* %177, null
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i32, i32* @PFTM_UNLINKED, align 4
  %181 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %182 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %184 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %183, i32 0, i32 6
  %185 = load i32, i32* @HOOK_REMOVE, align 4
  %186 = load i32, i32* @HOOK_FREE, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @hook_runloop(i32* %184, i32 %187)
  %189 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %190 = call i32 @pf_src_tree_remove_state(%struct.pf_state* %189)
  %191 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  %192 = call i32 @pf_free_state(%struct.pf_state* %191)
  %193 = load i32, i32* @PF_DROP, align 4
  store i32 %193, i32* %6, align 4
  br label %343

194:                                              ; preds = %175
  br label %195

195:                                              ; preds = %194, %172
  br label %196

196:                                              ; preds = %195, %84
  %197 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %198 = load %struct.pf_state*, %struct.pf_state** %197, align 8
  %199 = icmp ne %struct.pf_state* %198, null
  br i1 %199, label %200, label %244

200:                                              ; preds = %196
  %201 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %202 = icmp ne %struct.pf_pdesc* %201, null
  br i1 %202, label %203, label %244

203:                                              ; preds = %200
  %204 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %205 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PKTF_FLOW_ID, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %244, label %210

210:                                              ; preds = %203
  %211 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %212 = load %struct.pf_state*, %struct.pf_state** %211, align 8
  %213 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %212, i32 0, i32 1
  %214 = load %struct.pf_state_key*, %struct.pf_state_key** %213, align 8
  %215 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %218 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %217, i32 0, i32 6
  store i32 %216, i32* %218, align 8
  %219 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %220 = load %struct.pf_state*, %struct.pf_state** %219, align 8
  %221 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %220, i32 0, i32 1
  %222 = load %struct.pf_state_key*, %struct.pf_state_key** %221, align 8
  %223 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %226 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %225, i32 0, i32 2
  store i64 %224, i64* %226, align 8
  %227 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %228 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %210
  %232 = load i32, i32* @PKTF_FLOW_ID, align 4
  %233 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %234 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* @PKTF_FLOW_ADV, align 4
  %238 = xor i32 %237, -1
  %239 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %240 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %231, %210
  br label %244

244:                                              ; preds = %243, %203, %200, %196
  %245 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %246 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i64 @pf_state_lookup_aux(%struct.pf_state** %245, %struct.pfi_kif* %246, i32 %247, i32* %16)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %6, align 4
  br label %343

252:                                              ; preds = %244
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %255 = load %struct.pf_state*, %struct.pf_state** %254, align 8
  %256 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %255, i32 0, i32 1
  %257 = load %struct.pf_state_key*, %struct.pf_state_key** %256, align 8
  %258 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %253, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %252
  %262 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %263 = load %struct.pf_state*, %struct.pf_state** %262, align 8
  %264 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %263, i32 0, i32 4
  store %struct.pf_state_peer* %264, %struct.pf_state_peer** %12, align 8
  %265 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %266 = load %struct.pf_state*, %struct.pf_state** %265, align 8
  %267 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %266, i32 0, i32 5
  store %struct.pf_state_peer* %267, %struct.pf_state_peer** %13, align 8
  br label %275

268:                                              ; preds = %252
  %269 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %270 = load %struct.pf_state*, %struct.pf_state** %269, align 8
  %271 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %270, i32 0, i32 5
  store %struct.pf_state_peer* %271, %struct.pf_state_peer** %12, align 8
  %272 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %273 = load %struct.pf_state*, %struct.pf_state** %272, align 8
  %274 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %273, i32 0, i32 4
  store %struct.pf_state_peer* %274, %struct.pf_state_peer** %13, align 8
  br label %275

275:                                              ; preds = %268, %261
  %276 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %277 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @PFESPS_INITIATING, align 8
  %280 = icmp slt i64 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load i64, i64* @PFESPS_INITIATING, align 8
  %283 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %284 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  br label %285

285:                                              ; preds = %281, %275
  %286 = call i32 (...) @pf_time_second()
  %287 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %288 = load %struct.pf_state*, %struct.pf_state** %287, align 8
  %289 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %288, i32 0, i32 3
  store i32 %286, i32* %289, align 4
  %290 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %291 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @PFESPS_INITIATING, align 8
  %294 = icmp sge i64 %292, %293
  br i1 %294, label %295, label %314

295:                                              ; preds = %285
  %296 = load %struct.pf_state_peer*, %struct.pf_state_peer** %13, align 8
  %297 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @PFESPS_INITIATING, align 8
  %300 = icmp sge i64 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %295
  %302 = load i32, i32* @PFTM_ESP_ESTABLISHED, align 4
  %303 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %304 = load %struct.pf_state*, %struct.pf_state** %303, align 8
  %305 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %304, i32 0, i32 2
  store i32 %302, i32* %305, align 8
  %306 = load i8*, i8** @PFESPS_ESTABLISHED, align 8
  %307 = ptrtoint i8* %306 to i64
  %308 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %309 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  %310 = load i8*, i8** @PFESPS_ESTABLISHED, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = load %struct.pf_state_peer*, %struct.pf_state_peer** %13, align 8
  %313 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %312, i32 0, i32 0
  store i64 %311, i64* %313, align 8
  br label %319

314:                                              ; preds = %295, %285
  %315 = load i32, i32* @PFTM_ESP_INITIATING, align 4
  %316 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %317 = load %struct.pf_state*, %struct.pf_state** %316, align 8
  %318 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %317, i32 0, i32 2
  store i32 %315, i32* %318, align 8
  br label %319

319:                                              ; preds = %314, %301
  %320 = load %struct.pf_state**, %struct.pf_state*** %7, align 8
  %321 = load %struct.pf_state*, %struct.pf_state** %320, align 8
  %322 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %321, i32 0, i32 1
  %323 = load %struct.pf_state_key*, %struct.pf_state_key** %322, align 8
  %324 = call i64 @STATE_ADDR_TRANSLATE(%struct.pf_state_key* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %341

326:                                              ; preds = %319
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @PF_OUT, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %332 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  switch i32 %333, label %334 [
  ]

334:                                              ; preds = %330
  br label %340

335:                                              ; preds = %326
  %336 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %337 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  switch i32 %338, label %339 [
  ]

339:                                              ; preds = %335
  br label %340

340:                                              ; preds = %339, %334
  br label %341

341:                                              ; preds = %340, %319
  %342 = load i32, i32* @PF_PASS, align 4
  store i32 %342, i32* %6, align 4
  br label %343

343:                                              ; preds = %341, %250, %179
  %344 = load i32, i32* %6, align 4
  ret i32 %344
}

declare dso_local i32 @memset(%struct.pf_state_key_cmp*, i32, i32) #1

declare dso_local i32 @PF_ACPY(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.pf_state* @pf_find_state(%struct.pfi_kif*, %struct.pf_state_key_cmp*, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pf_state_key*) #1

declare dso_local i64 @RB_INSERT(i32, i32*, %struct.pf_state_key*) #1

declare dso_local i32 @pf_detach_state(%struct.pf_state*, i32) #1

declare dso_local i32 @hook_runloop(i32*, i32) #1

declare dso_local i32 @pf_src_tree_remove_state(%struct.pf_state*) #1

declare dso_local i32 @pf_free_state(%struct.pf_state*) #1

declare dso_local i64 @pf_state_lookup_aux(%struct.pf_state**, %struct.pfi_kif*, i32, i32*) #1

declare dso_local i32 @pf_time_second(...) #1

declare dso_local i64 @STATE_ADDR_TRANSLATE(%struct.pf_state_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
