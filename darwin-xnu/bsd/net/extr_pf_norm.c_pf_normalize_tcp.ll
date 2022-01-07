; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_tcp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.pf_pdesc = type { i64, i64, i32*, i32, i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.tcphdr* }
%struct.tcphdr = type { i32, i32, i64, i64, i8*, i32, i32, i32 }
%struct.pf_rule = type { i64, i32, i64, i64, i64, i64, i32, i64, i64, i32*, i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_15__, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_16__ = type { %struct.pf_rule* }
%struct.TYPE_15__ = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_17__, i32, i32 }
%struct.pf_ruleset = type { i32 }
%union.pf_state_xport = type { i32 }

@pf_main_ruleset = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@PF_RULESET_SCRUB = common dso_local global i64 0, align 8
@PF_SKIP_IFP = common dso_local global i64 0, align 8
@PF_SKIP_DIR = common dso_local global i64 0, align 8
@PF_SKIP_AF = common dso_local global i64 0, align 8
@PF_SKIP_PROTO = common dso_local global i64 0, align 8
@PF_SKIP_SRC_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_SRC_PORT = common dso_local global i64 0, align 8
@PF_SKIP_DST_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_DST_PORT = common dso_local global i64 0, align 8
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@PF_NOSCRUB = common dso_local global i64 0, align 8
@PF_PASS = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@PFRULE_REASSEMBLE_TCP = common dso_local global i32 0, align 4
@PFDESC_TCP_NORM = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TH_PUSH = common dso_local global i32 0, align 4
@TH_URG = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PFRES_NORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_normalize_tcp(i32 %0, %struct.pfi_kif* %1, i32* %2, i32 %3, i32 %4, i8* %5, %struct.pf_pdesc* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfi_kif*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pf_pdesc*, align 8
  %16 = alloca %struct.pf_rule*, align 8
  %17 = alloca %struct.pf_rule*, align 8
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.pf_ruleset*, align 8
  %25 = alloca %union.pf_state_xport, align 4
  %26 = alloca %union.pf_state_xport, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.pfi_kif* %1, %struct.pfi_kif** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.pf_pdesc* %6, %struct.pf_pdesc** %15, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %17, align 8
  %30 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %31 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.tcphdr*, %struct.tcphdr** %32, align 8
  store %struct.tcphdr* %33, %struct.tcphdr** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %35 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %23, align 8
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %24, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %union.pf_state_xport* %25 to i32*
  store i32 %39, i32* %40, align 4
  %41 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.pf_state_xport* %26 to i32*
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @pf_main_ruleset, i32 0, i32 0), align 8
  %46 = load i64, i64* @PF_RULESET_SCRUB, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.pf_rule* @TAILQ_FIRST(i32 %50)
  store %struct.pf_rule* %51, %struct.pf_rule** %16, align 8
  br label %52

52:                                               ; preds = %291, %7
  %53 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %54 = icmp ne %struct.pf_rule* %53, null
  br i1 %54, label %55, label %292

55:                                               ; preds = %52
  %56 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %57 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %56, i32 0, i32 17
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %61 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %60, i32 0, i32 16
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %64 = call i64 @pfi_kif_match(i32 %62, %struct.pfi_kif* %63)
  %65 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %66 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %55
  %70 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %71 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %70, i32 0, i32 12
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = load i64, i64* @PF_SKIP_IFP, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.pf_rule*, %struct.pf_rule** %75, align 8
  store %struct.pf_rule* %76, %struct.pf_rule** %16, align 8
  br label %283

77:                                               ; preds = %55
  %78 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %79 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %84 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %90 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %89, i32 0, i32 12
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i64, i64* @PF_SKIP_DIR, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.pf_rule*, %struct.pf_rule** %94, align 8
  store %struct.pf_rule* %95, %struct.pf_rule** %16, align 8
  br label %282

96:                                               ; preds = %82, %77
  %97 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %98 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %103 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %23, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %109 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %108, i32 0, i32 12
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = load i64, i64* @PF_SKIP_AF, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load %struct.pf_rule*, %struct.pf_rule** %113, align 8
  store %struct.pf_rule* %114, %struct.pf_rule** %16, align 8
  br label %281

115:                                              ; preds = %101, %96
  %116 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %117 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %115
  %121 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %122 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %125 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %120
  %129 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %130 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %129, i32 0, i32 12
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load i64, i64* @PF_SKIP_PROTO, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.pf_rule*, %struct.pf_rule** %134, align 8
  store %struct.pf_rule* %135, %struct.pf_rule** %16, align 8
  br label %280

136:                                              ; preds = %120, %115
  %137 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %138 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %141 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %23, align 8
  %144 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %145 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %149 = call i64 @PF_MISMATCHAW(i32* %139, i32 %142, i64 %143, i32 %147, %struct.pfi_kif* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %136
  %152 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %153 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %152, i32 0, i32 12
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = load i64, i64* @PF_SKIP_SRC_ADDR, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load %struct.pf_rule*, %struct.pf_rule** %157, align 8
  store %struct.pf_rule* %158, %struct.pf_rule** %16, align 8
  br label %279

159:                                              ; preds = %136
  %160 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %161 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %159
  %168 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %169 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %175 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %174, i32 0, i32 14
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %178 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = call i32 @pf_match_xport(i64 %173, i32 %176, %struct.TYPE_17__* %179, %union.pf_state_xport* %25)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %167
  %183 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %184 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %183, i32 0, i32 12
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = load i64, i64* @PF_SKIP_SRC_PORT, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load %struct.pf_rule*, %struct.pf_rule** %188, align 8
  store %struct.pf_rule* %189, %struct.pf_rule** %16, align 8
  br label %278

190:                                              ; preds = %167, %159
  %191 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %192 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %191, i32 0, i32 13
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %195 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load i64, i64* %23, align 8
  %198 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %199 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %198, i32 0, i32 13
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @PF_MISMATCHAW(i32* %193, i32 %196, i64 %197, i32 %201, %struct.pfi_kif* null)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %190
  %205 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %206 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %205, i32 0, i32 12
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load %struct.pf_rule*, %struct.pf_rule** %210, align 8
  store %struct.pf_rule* %211, %struct.pf_rule** %16, align 8
  br label %277

212:                                              ; preds = %190
  %213 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %214 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %213, i32 0, i32 13
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %212
  %221 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %222 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %221, i32 0, i32 13
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %228 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %227, i32 0, i32 14
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %231 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %230, i32 0, i32 13
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = call i32 @pf_match_xport(i64 %226, i32 %229, %struct.TYPE_17__* %232, %union.pf_state_xport* %26)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %220
  %236 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %237 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %236, i32 0, i32 12
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = load i64, i64* @PF_SKIP_DST_PORT, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load %struct.pf_rule*, %struct.pf_rule** %241, align 8
  store %struct.pf_rule* %242, %struct.pf_rule** %16, align 8
  br label %276

243:                                              ; preds = %220, %212
  %244 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %245 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PF_OSFP_ANY, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %264

249:                                              ; preds = %243
  %250 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %254 = call i32 @pf_osfp_fingerprint(%struct.pf_pdesc* %250, i32* %251, i32 %252, %struct.tcphdr* %253)
  %255 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %256 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @pf_osfp_match(i32 %254, i64 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %249
  %261 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %262 = load i32, i32* @entries, align 4
  %263 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %261, i32 %262)
  store %struct.pf_rule* %263, %struct.pf_rule** %16, align 8
  br label %275

264:                                              ; preds = %249, %243
  %265 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %266 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %265, i32 0, i32 11
  %267 = load i32*, i32** %266, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  store %struct.pf_rule* %270, %struct.pf_rule** %17, align 8
  br label %292

271:                                              ; preds = %264
  %272 = load i64, i64* @PF_RULESET_SCRUB, align 8
  %273 = call i32 @pf_step_into_anchor(i32* %20, %struct.pf_ruleset** %24, i64 %272, %struct.pf_rule** %16, i32* null, i32* null)
  br label %274

274:                                              ; preds = %271
  br label %275

275:                                              ; preds = %274, %260
  br label %276

276:                                              ; preds = %275, %235
  br label %277

277:                                              ; preds = %276, %204
  br label %278

278:                                              ; preds = %277, %182
  br label %279

279:                                              ; preds = %278, %151
  br label %280

280:                                              ; preds = %279, %128
  br label %281

281:                                              ; preds = %280, %107
  br label %282

282:                                              ; preds = %281, %88
  br label %283

283:                                              ; preds = %282, %69
  %284 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %285 = icmp eq %struct.pf_rule* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load i64, i64* @PF_RULESET_SCRUB, align 8
  %288 = call i64 @pf_step_out_of_anchor(i32* %20, %struct.pf_ruleset** %24, i64 %287, %struct.pf_rule** %16, i32* null, i32* null)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %292

291:                                              ; preds = %286, %283
  br label %52

292:                                              ; preds = %290, %269, %52
  %293 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %294 = icmp eq %struct.pf_rule* %293, null
  br i1 %294, label %301, label %295

295:                                              ; preds = %292
  %296 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %297 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @PF_NOSCRUB, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %295, %292
  %302 = load i32, i32* @PF_PASS, align 4
  store i32 %302, i32* %8, align 4
  br label %547

303:                                              ; preds = %295
  %304 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %305 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %304, i32 0, i32 10
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* @PF_OUT, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  %315 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %316 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %319 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %318, i32 0, i32 9
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @PF_OUT, align 4
  %323 = icmp eq i32 %321, %322
  %324 = zext i1 %323 to i32
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %320, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %328, %317
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %326, align 4
  br label %331

331:                                              ; preds = %303
  %332 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %333 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @PFRULE_REASSEMBLE_TCP, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %331
  %339 = load i32, i32* @PFDESC_TCP_NORM, align 4
  %340 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %341 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %338, %331
  %345 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %346 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  store i32 %347, i32* %22, align 4
  %348 = load i32, i32* %22, align 4
  %349 = load i32, i32* @TH_SYN, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %369

352:                                              ; preds = %344
  %353 = load i32, i32* %22, align 4
  %354 = load i32, i32* @TH_RST, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  br label %525

358:                                              ; preds = %352
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* @TH_FIN, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load i32, i32* @TH_FIN, align 4
  %365 = xor i32 %364, -1
  %366 = load i32, i32* %22, align 4
  %367 = and i32 %366, %365
  store i32 %367, i32* %22, align 4
  br label %368

368:                                              ; preds = %363, %358
  br label %378

369:                                              ; preds = %344
  %370 = load i32, i32* %22, align 4
  %371 = load i32, i32* @TH_ACK, align 4
  %372 = load i32, i32* @TH_RST, align 4
  %373 = or i32 %371, %372
  %374 = and i32 %370, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %369
  br label %525

377:                                              ; preds = %369
  br label %378

378:                                              ; preds = %377, %368
  %379 = load i32, i32* %22, align 4
  %380 = load i32, i32* @TH_ACK, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %400, label %383

383:                                              ; preds = %378
  %384 = load i32, i32* %22, align 4
  %385 = load i32, i32* @TH_FIN, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %383
  %389 = load i32, i32* %22, align 4
  %390 = load i32, i32* @TH_PUSH, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %398, label %393

393:                                              ; preds = %388
  %394 = load i32, i32* %22, align 4
  %395 = load i32, i32* @TH_URG, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %393, %388, %383
  br label %525

399:                                              ; preds = %393
  br label %400

400:                                              ; preds = %399, %378
  %401 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %402 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = icmp ult i64 %404, 12
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  br label %525

407:                                              ; preds = %400
  %408 = load i32, i32* %22, align 4
  %409 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %410 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %408, %411
  br i1 %412, label %418, label %413

413:                                              ; preds = %407
  %414 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %415 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %442

418:                                              ; preds = %413, %407
  %419 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %420 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %419, i32 0, i32 5
  %421 = getelementptr inbounds i32, i32* %420, i64 1
  %422 = bitcast i32* %421 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %27, align 8
  %424 = load i32, i32* %22, align 4
  %425 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %426 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  %427 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %428 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %427, i32 0, i32 2
  store i64 0, i64* %428, align 8
  %429 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %430 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %429, i32 0, i32 5
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  %432 = bitcast i32* %431 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %28, align 8
  %434 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %435 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %434, i32 0, i32 4
  %436 = load i8*, i8** %435, align 8
  %437 = load i64, i64* %27, align 8
  %438 = load i64, i64* %28, align 8
  %439 = call i8* @pf_cksum_fixup(i8* %436, i64 %437, i64 %438, i32 0)
  %440 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %441 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %440, i32 0, i32 4
  store i8* %439, i8** %441, align 8
  store i32 1, i32* %19, align 4
  br label %442

442:                                              ; preds = %418, %413
  %443 = load i32, i32* %22, align 4
  %444 = load i32, i32* @TH_URG, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %464, label %447

447:                                              ; preds = %442
  %448 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %449 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %448, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %464

452:                                              ; preds = %447
  %453 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %454 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %453, i32 0, i32 4
  %455 = load i8*, i8** %454, align 8
  %456 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %457 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %456, i32 0, i32 3
  %458 = load i64, i64* %457, align 8
  %459 = call i8* @pf_cksum_fixup(i8* %455, i64 %458, i64 0, i32 0)
  %460 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %461 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %460, i32 0, i32 4
  store i8* %459, i8** %461, align 8
  %462 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %463 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %462, i32 0, i32 3
  store i64 0, i64* %463, align 8
  store i32 1, i32* %19, align 4
  br label %464

464:                                              ; preds = %452, %447, %442
  %465 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %466 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %465, i32 0, i32 8
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %487

469:                                              ; preds = %464
  %470 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %471 = load i32, i32* %9, align 4
  %472 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %473 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %474 = load i32*, i32** %11, align 8
  %475 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %476 = load i32, i32* %13, align 4
  %477 = call i32 @pf_normalize_tcpopt(%struct.pf_rule* %470, i32 %471, %struct.pfi_kif* %472, %struct.pf_pdesc* %473, i32* %474, %struct.tcphdr* %475, i32 %476, i32* %19)
  store i32 %477, i32* %29, align 4
  %478 = load i32, i32* %29, align 4
  %479 = load i32, i32* @PF_DROP, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %483

481:                                              ; preds = %469
  %482 = load i32, i32* %29, align 4
  store i32 %482, i32* %8, align 4
  br label %547

483:                                              ; preds = %469
  %484 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %485 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %484, i32 0, i32 2
  %486 = load i32*, i32** %485, align 8
  store i32* %486, i32** %11, align 8
  br label %487

487:                                              ; preds = %483, %464
  %488 = load i32, i32* %19, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %523

490:                                              ; preds = %487
  %491 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %492 = load i32*, i32** %11, align 8
  %493 = load i32, i32* %13, align 4
  %494 = sext i32 %493 to i64
  %495 = add i64 %494, 48
  %496 = trunc i64 %495 to i32
  %497 = call i32* @pf_lazy_makewritable(%struct.pf_pdesc* %491, i32* %492, i32 %496)
  %498 = icmp eq i32* %497, null
  br i1 %498, label %499, label %518

499:                                              ; preds = %490
  %500 = load i32, i32* @PFRES_MEMORY, align 4
  %501 = call i32 @REASON_SET(i32* %21, i32 %500)
  %502 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %503 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %502, i32 0, i32 7
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %516

506:                                              ; preds = %499
  %507 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %508 = load i8*, i8** %14, align 8
  %509 = load i32*, i32** %11, align 8
  %510 = load i32, i32* @AF_INET, align 4
  %511 = load i32, i32* %9, align 4
  %512 = load i32, i32* %21, align 4
  %513 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %514 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %515 = call i32 @PFLOG_PACKET(%struct.pfi_kif* %507, i8* %508, i32* %509, i32 %510, i32 %511, i32 %512, %struct.pf_rule* %513, i32* null, i32* null, %struct.pf_pdesc* %514)
  br label %516

516:                                              ; preds = %506, %499
  %517 = load i32, i32* @PF_DROP, align 4
  store i32 %517, i32* %8, align 4
  br label %547

518:                                              ; preds = %490
  %519 = load i32*, i32** %11, align 8
  %520 = load i32, i32* %13, align 4
  %521 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %522 = call i32 @pbuf_copy_back(i32* %519, i32 %520, i32 48, %struct.tcphdr* %521)
  br label %523

523:                                              ; preds = %518, %487
  %524 = load i32, i32* @PF_PASS, align 4
  store i32 %524, i32* %8, align 4
  br label %547

525:                                              ; preds = %406, %398, %376, %357
  %526 = load i32, i32* @PFRES_NORM, align 4
  %527 = call i32 @REASON_SET(i32* %21, i32 %526)
  %528 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %529 = icmp ne %struct.pf_rule* %528, null
  br i1 %529, label %530, label %545

530:                                              ; preds = %525
  %531 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %532 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %531, i32 0, i32 7
  %533 = load i64, i64* %532, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %545

535:                                              ; preds = %530
  %536 = load %struct.pfi_kif*, %struct.pfi_kif** %10, align 8
  %537 = load i8*, i8** %14, align 8
  %538 = load i32*, i32** %11, align 8
  %539 = load i32, i32* @AF_INET, align 4
  %540 = load i32, i32* %9, align 4
  %541 = load i32, i32* %21, align 4
  %542 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %543 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %544 = call i32 @PFLOG_PACKET(%struct.pfi_kif* %536, i8* %537, i32* %538, i32 %539, i32 %540, i32 %541, %struct.pf_rule* %542, i32* null, i32* null, %struct.pf_pdesc* %543)
  br label %545

545:                                              ; preds = %535, %530, %525
  %546 = load i32, i32* @PF_DROP, align 4
  store i32 %546, i32* %8, align 4
  br label %547

547:                                              ; preds = %545, %523, %516, %481, %301
  %548 = load i32, i32* %8, align 4
  ret i32 %548
}

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i64 @pfi_kif_match(i32, %struct.pfi_kif*) #1

declare dso_local i64 @PF_MISMATCHAW(i32*, i32, i64, i32, %struct.pfi_kif*) #1

declare dso_local i32 @pf_match_xport(i64, i32, %struct.TYPE_17__*, %union.pf_state_xport*) #1

declare dso_local i32 @pf_osfp_match(i32, i64) #1

declare dso_local i32 @pf_osfp_fingerprint(%struct.pf_pdesc*, i32*, i32, %struct.tcphdr*) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i32 @pf_step_into_anchor(i32*, %struct.pf_ruleset**, i64, %struct.pf_rule**, i32*, i32*) #1

declare dso_local i64 @pf_step_out_of_anchor(i32*, %struct.pf_ruleset**, i64, %struct.pf_rule**, i32*, i32*) #1

declare dso_local i8* @pf_cksum_fixup(i8*, i64, i64, i32) #1

declare dso_local i32 @pf_normalize_tcpopt(%struct.pf_rule*, i32, %struct.pfi_kif*, %struct.pf_pdesc*, i32*, %struct.tcphdr*, i32, i32*) #1

declare dso_local i32* @pf_lazy_makewritable(%struct.pf_pdesc*, i32*, i32) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

declare dso_local i32 @PFLOG_PACKET(%struct.pfi_kif*, i8*, i32*, i32, i32, i32, %struct.pf_rule*, i32*, i32*, %struct.pf_pdesc*) #1

declare dso_local i32 @pbuf_copy_back(i32*, i32, i32, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
