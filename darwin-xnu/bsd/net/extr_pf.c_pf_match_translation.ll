; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_match_translation.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_match_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.pf_rule = type { i64, i64, i32, i64, i64, i32, i32, i32*, i64, %struct.TYPE_14__*, i32, %struct.pf_rule_addr, i64, i32, i32, %struct.pf_rule_addr, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.pf_rule* }
%struct.pf_rule_addr = type { %union.pf_rule_xport, i32, %struct.pf_addr_wrap }
%union.pf_rule_xport = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.pf_addr_wrap = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { %struct.pf_addr_wrap }
%struct.pf_pdesc = type { i64, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.pf_addr = type { i32 }
%union.pf_state_xport = type { i32 }
%struct.pf_ruleset = type { i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PF_BINAT = common dso_local global i64 0, align 8
@PF_IN = common dso_local global i32 0, align 4
@PF_RDR = common dso_local global i64 0, align 8
@PF_OUT = common dso_local global i32 0, align 4
@PF_OP_EQ = common dso_local global i32 0, align 4
@PF_SKIP_IFP = common dso_local global i64 0, align 8
@PF_SKIP_DIR = common dso_local global i64 0, align 8
@PF_SKIP_AF = common dso_local global i64 0, align 8
@PF_SKIP_PROTO = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@PF_SKIP_SRC_PORT = common dso_local global i64 0, align 8
@PF_SKIP_DST_PORT = common dso_local global i64 0, align 8
@PF_SKIP_DST_ADDR = common dso_local global i64 0, align 8
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@PF_NONAT = common dso_local global i64 0, align 8
@PF_NORDR = common dso_local global i64 0, align 8
@PF_NOBINAT = common dso_local global i64 0, align 8
@PF_NONAT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_rule* (%struct.pf_pdesc*, i32*, i32, i32, %struct.pfi_kif*, %struct.pf_addr*, %union.pf_state_xport*, %struct.pf_addr*, %union.pf_state_xport*, i32)* @pf_match_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_rule* @pf_match_translation(%struct.pf_pdesc* %0, i32* %1, i32 %2, i32 %3, %struct.pfi_kif* %4, %struct.pf_addr* %5, %union.pf_state_xport* %6, %struct.pf_addr* %7, %union.pf_state_xport* %8, i32 %9) #0 {
  %11 = alloca %struct.pf_rule*, align 8
  %12 = alloca %struct.pf_pdesc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pfi_kif*, align 8
  %17 = alloca %struct.pf_addr*, align 8
  %18 = alloca %union.pf_state_xport*, align 8
  %19 = alloca %struct.pf_addr*, align 8
  %20 = alloca %union.pf_state_xport*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.pf_rule*, align 8
  %23 = alloca %struct.pf_rule*, align 8
  %24 = alloca %struct.pf_ruleset*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.pf_rule_addr*, align 8
  %29 = alloca %struct.pf_rule_addr*, align 8
  %30 = alloca %struct.pf_addr_wrap*, align 8
  %31 = alloca %struct.pf_addr_wrap*, align 8
  %32 = alloca %union.pf_rule_xport, align 8
  store %struct.pf_pdesc* %0, %struct.pf_pdesc** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store %struct.pfi_kif* %4, %struct.pfi_kif** %16, align 8
  store %struct.pf_addr* %5, %struct.pf_addr** %17, align 8
  store %union.pf_state_xport* %6, %union.pf_state_xport** %18, align 8
  store %struct.pf_addr* %7, %struct.pf_addr** %19, align 8
  store %union.pf_state_xport* %8, %union.pf_state_xport** %20, align 8
  store i32 %9, i32* %21, align 4
  store %struct.pf_rule* null, %struct.pf_rule** %23, align 8
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %24, align 8
  store i32 -1, i32* %25, align 4
  %33 = load i32, i32* @IFSCOPE_NONE, align 4
  store i32 %33, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @pf_main_ruleset, i32 0, i32 0), align 8
  %35 = load i32, i32* %21, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.pf_rule* @TAILQ_FIRST(i32 %40)
  store %struct.pf_rule* %41, %struct.pf_rule** %22, align 8
  br label %42

42:                                               ; preds = %451, %10
  %43 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %44 = icmp ne %struct.pf_rule* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  %47 = icmp eq %struct.pf_rule* %46, null
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %452

50:                                               ; preds = %48
  store %struct.pf_rule_addr* null, %struct.pf_rule_addr** %28, align 8
  store %struct.pf_rule_addr* null, %struct.pf_rule_addr** %29, align 8
  store %struct.pf_addr_wrap* null, %struct.pf_addr_wrap** %30, align 8
  store %struct.pf_addr_wrap* null, %struct.pf_addr_wrap** %31, align 8
  %51 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %52 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PF_BINAT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @PF_IN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %62 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %61, i32 0, i32 15
  store %struct.pf_rule_addr* %62, %struct.pf_rule_addr** %28, align 8
  %63 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %64 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %63, i32 0, i32 16
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %70 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %69, i32 0, i32 16
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store %struct.pf_addr_wrap* %73, %struct.pf_addr_wrap** %30, align 8
  br label %74

74:                                               ; preds = %68, %60
  br label %122

75:                                               ; preds = %56, %50
  %76 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %77 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PF_RDR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %75
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @PF_OUT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %87 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %86, i32 0, i32 11
  store %struct.pf_rule_addr* %87, %struct.pf_rule_addr** %29, align 8
  %88 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %89 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %88, i32 0, i32 15
  store %struct.pf_rule_addr* %89, %struct.pf_rule_addr** %28, align 8
  %90 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %91 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %90, i32 0, i32 16
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %85
  %96 = load i32, i32* @PF_OP_EQ, align 4
  %97 = bitcast %union.pf_rule_xport* %32 to %struct.TYPE_15__*
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %100 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %99, i32 0, i32 16
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @htons(i32 %104)
  %106 = bitcast %union.pf_rule_xport* %32 to %struct.TYPE_15__*
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %111 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %110, i32 0, i32 16
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store %struct.pf_addr_wrap* %114, %struct.pf_addr_wrap** %31, align 8
  br label %115

115:                                              ; preds = %95, %85
  br label %121

116:                                              ; preds = %81, %75
  %117 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %118 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %117, i32 0, i32 11
  store %struct.pf_rule_addr* %118, %struct.pf_rule_addr** %28, align 8
  %119 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %120 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %119, i32 0, i32 15
  store %struct.pf_rule_addr* %120, %struct.pf_rule_addr** %29, align 8
  br label %121

121:                                              ; preds = %116, %115
  br label %122

122:                                              ; preds = %121, %74
  %123 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %124 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %128 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %127, i32 0, i32 13
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.pfi_kif*, %struct.pfi_kif** %16, align 8
  %131 = call i64 @pfi_kif_match(i32 %129, %struct.pfi_kif* %130)
  %132 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %133 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %122
  %137 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %138 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %137, i32 0, i32 9
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i64, i64* @PF_SKIP_IFP, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.pf_rule*, %struct.pf_rule** %142, align 8
  store %struct.pf_rule* %143, %struct.pf_rule** %22, align 8
  br label %445

144:                                              ; preds = %122
  %145 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %146 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %151 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %157 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %156, i32 0, i32 9
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load i64, i64* @PF_SKIP_DIR, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load %struct.pf_rule*, %struct.pf_rule** %161, align 8
  store %struct.pf_rule* %162, %struct.pf_rule** %22, align 8
  br label %444

163:                                              ; preds = %149, %144
  %164 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %165 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %164, i32 0, i32 12
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %163
  %169 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %170 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %169, i32 0, i32 12
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %173 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %171, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %168
  %177 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %178 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %177, i32 0, i32 9
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = load i64, i64* @PF_SKIP_AF, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load %struct.pf_rule*, %struct.pf_rule** %182, align 8
  store %struct.pf_rule* %183, %struct.pf_rule** %22, align 8
  br label %443

184:                                              ; preds = %168, %163
  %185 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %186 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %191 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %194 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %192, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %189
  %198 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %199 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %198, i32 0, i32 9
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = load i64, i64* @PF_SKIP_PROTO, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load %struct.pf_rule*, %struct.pf_rule** %203, align 8
  store %struct.pf_rule* %204, %struct.pf_rule** %22, align 8
  br label %442

205:                                              ; preds = %189, %184
  %206 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %31, align 8
  %207 = icmp ne %struct.pf_addr_wrap* %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %31, align 8
  %210 = load %struct.pf_addr*, %struct.pf_addr** %17, align 8
  %211 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %212 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %209, %struct.pf_addr* %210, i64 %213, i32 0, %struct.pfi_kif* null)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %208
  %217 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %218 = load i32, i32* @entries, align 4
  %219 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %217, i32 %218)
  store %struct.pf_rule* %219, %struct.pf_rule** %22, align 8
  br label %441

220:                                              ; preds = %208, %205
  %221 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %31, align 8
  %222 = icmp ne %struct.pf_addr_wrap* %221, null
  br i1 %222, label %240, label %223

223:                                              ; preds = %220
  %224 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %28, align 8
  %225 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %224, i32 0, i32 2
  %226 = load %struct.pf_addr*, %struct.pf_addr** %17, align 8
  %227 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %228 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %28, align 8
  %231 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.pfi_kif*, %struct.pfi_kif** %16, align 8
  %234 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %225, %struct.pf_addr* %226, i64 %229, i32 %232, %struct.pfi_kif* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %223
  %237 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %238 = load i32, i32* @entries, align 4
  %239 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %237, i32 %238)
  store %struct.pf_rule* %239, %struct.pf_rule** %22, align 8
  br label %440

240:                                              ; preds = %223, %220
  %241 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %31, align 8
  %242 = icmp ne %struct.pf_addr_wrap* %241, null
  br i1 %242, label %243, label %264

243:                                              ; preds = %240
  %244 = bitcast %union.pf_rule_xport* %32 to %struct.TYPE_15__*
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %243
  %251 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %252 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %255 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %254, i32 0, i32 10
  %256 = load i32, i32* %255, align 8
  %257 = load %union.pf_state_xport*, %union.pf_state_xport** %18, align 8
  %258 = call i32 @pf_match_xport(i64 %253, i32 %256, %union.pf_rule_xport* %32, %union.pf_state_xport* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %250, %243
  %261 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %262 = load i32, i32* @entries, align 4
  %263 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %261, i32 %262)
  store %struct.pf_rule* %263, %struct.pf_rule** %22, align 8
  br label %439

264:                                              ; preds = %250, %240
  %265 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %31, align 8
  %266 = icmp ne %struct.pf_addr_wrap* %265, null
  br i1 %266, label %296, label %267

267:                                              ; preds = %264
  %268 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %269 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %272 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %28, align 8
  %275 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %274, i32 0, i32 0
  %276 = load %union.pf_state_xport*, %union.pf_state_xport** %18, align 8
  %277 = call i32 @pf_match_xport(i64 %270, i32 %273, %union.pf_rule_xport* %275, %union.pf_state_xport* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %296, label %279

279:                                              ; preds = %267
  %280 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %281 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %280, i32 0, i32 9
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %281, align 8
  %283 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %28, align 8
  %284 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %285 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %284, i32 0, i32 11
  %286 = icmp eq %struct.pf_rule_addr* %283, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %279
  %288 = load i64, i64* @PF_SKIP_SRC_PORT, align 8
  br label %291

289:                                              ; preds = %279
  %290 = load i64, i64* @PF_SKIP_DST_PORT, align 8
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i64 [ %288, %287 ], [ %290, %289 ]
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load %struct.pf_rule*, %struct.pf_rule** %294, align 8
  store %struct.pf_rule* %295, %struct.pf_rule** %22, align 8
  br label %438

296:                                              ; preds = %267, %264
  %297 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %29, align 8
  %298 = icmp ne %struct.pf_rule_addr* %297, null
  br i1 %298, label %299, label %319

299:                                              ; preds = %296
  %300 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %29, align 8
  %301 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %300, i32 0, i32 2
  %302 = load %struct.pf_addr*, %struct.pf_addr** %19, align 8
  %303 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %304 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %29, align 8
  %307 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %301, %struct.pf_addr* %302, i64 %305, i32 %308, %struct.pfi_kif* null)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %299
  %312 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %313 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %312, i32 0, i32 9
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %313, align 8
  %315 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load %struct.pf_rule*, %struct.pf_rule** %317, align 8
  store %struct.pf_rule* %318, %struct.pf_rule** %22, align 8
  br label %437

319:                                              ; preds = %299, %296
  %320 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %30, align 8
  %321 = icmp ne %struct.pf_addr_wrap* %320, null
  br i1 %321, label %322, label %334

322:                                              ; preds = %319
  %323 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %30, align 8
  %324 = load %struct.pf_addr*, %struct.pf_addr** %19, align 8
  %325 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %326 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = call i64 @PF_MISMATCHAW(%struct.pf_addr_wrap* %323, %struct.pf_addr* %324, i64 %327, i32 0, %struct.pfi_kif* null)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %322
  %331 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %332 = load i32, i32* @entries, align 4
  %333 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %331, i32 %332)
  store %struct.pf_rule* %333, %struct.pf_rule** %22, align 8
  br label %436

334:                                              ; preds = %322, %319
  %335 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %29, align 8
  %336 = icmp ne %struct.pf_rule_addr* %335, null
  br i1 %336, label %337, label %357

337:                                              ; preds = %334
  %338 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %339 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %342 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %341, i32 0, i32 10
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %29, align 8
  %345 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %344, i32 0, i32 0
  %346 = load %union.pf_state_xport*, %union.pf_state_xport** %20, align 8
  %347 = call i32 @pf_match_xport(i64 %340, i32 %343, %union.pf_rule_xport* %345, %union.pf_state_xport* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %337
  %350 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %351 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %350, i32 0, i32 9
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %351, align 8
  %353 = load i64, i64* @PF_SKIP_DST_PORT, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  %356 = load %struct.pf_rule*, %struct.pf_rule** %355, align 8
  store %struct.pf_rule* %356, %struct.pf_rule** %22, align 8
  br label %435

357:                                              ; preds = %337, %334
  %358 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %359 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %358, i32 0, i32 8
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %373

362:                                              ; preds = %357
  %363 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %364 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %365 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @pf_match_tag(%struct.pf_rule* %363, i32 %366, i32* %25)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %362
  %370 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %371 = load i32, i32* @entries, align 4
  %372 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %370, i32 %371)
  store %struct.pf_rule* %372, %struct.pf_rule** %22, align 8
  br label %434

373:                                              ; preds = %362, %357
  %374 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %375 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %374, i32 0, i32 4
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @PF_OSFP_ANY, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %403

379:                                              ; preds = %373
  %380 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %381 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @IPPROTO_TCP, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %399, label %385

385:                                              ; preds = %379
  %386 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %387 = load i32*, i32** %13, align 8
  %388 = load i32, i32* %14, align 4
  %389 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %390 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @pf_osfp_fingerprint(%struct.pf_pdesc* %386, i32* %387, i32 %388, i32 %392)
  %394 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %395 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = call i32 @pf_osfp_match(i32 %393, i64 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %385, %379
  %400 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %401 = load i32, i32* @entries, align 4
  %402 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %400, i32 %401)
  store %struct.pf_rule* %402, %struct.pf_rule** %22, align 8
  br label %433

403:                                              ; preds = %385, %373
  %404 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %405 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %403
  %409 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %410 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 8
  store i32 %411, i32* %25, align 4
  br label %412

412:                                              ; preds = %408, %403
  %413 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %414 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %413, i32 0, i32 6
  %415 = load i32, i32* %414, align 4
  %416 = call i64 @PF_RTABLEID_IS_VALID(i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %412
  %419 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %420 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %26, align 4
  br label %422

422:                                              ; preds = %418, %412
  %423 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %424 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %423, i32 0, i32 7
  %425 = load i32*, i32** %424, align 8
  %426 = icmp eq i32* %425, null
  br i1 %426, label %427, label %429

427:                                              ; preds = %422
  %428 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  store %struct.pf_rule* %428, %struct.pf_rule** %23, align 8
  br label %432

429:                                              ; preds = %422
  %430 = load i32, i32* %21, align 4
  %431 = call i32 @pf_step_into_anchor(i32* %27, %struct.pf_ruleset** %24, i32 %430, %struct.pf_rule** %22, i32* null, i32* null)
  br label %432

432:                                              ; preds = %429, %427
  br label %433

433:                                              ; preds = %432, %399
  br label %434

434:                                              ; preds = %433, %369
  br label %435

435:                                              ; preds = %434, %349
  br label %436

436:                                              ; preds = %435, %330
  br label %437

437:                                              ; preds = %436, %311
  br label %438

438:                                              ; preds = %437, %291
  br label %439

439:                                              ; preds = %438, %260
  br label %440

440:                                              ; preds = %439, %236
  br label %441

441:                                              ; preds = %440, %216
  br label %442

442:                                              ; preds = %441, %197
  br label %443

443:                                              ; preds = %442, %176
  br label %444

444:                                              ; preds = %443, %155
  br label %445

445:                                              ; preds = %444, %136
  %446 = load %struct.pf_rule*, %struct.pf_rule** %22, align 8
  %447 = icmp eq %struct.pf_rule* %446, null
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load i32, i32* %21, align 4
  %450 = call i32 @pf_step_out_of_anchor(i32* %27, %struct.pf_ruleset** %24, i32 %449, %struct.pf_rule** %22, i32* null, i32* null)
  br label %451

451:                                              ; preds = %448, %445
  br label %42

452:                                              ; preds = %48
  %453 = load i32*, i32** %13, align 8
  %454 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %455 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %25, align 4
  %458 = load i32, i32* %26, align 4
  %459 = call i64 @pf_tag_packet(i32* %453, i32 %456, i32 %457, i32 %458, i32* null)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %452
  store %struct.pf_rule* null, %struct.pf_rule** %11, align 8
  br label %492

462:                                              ; preds = %452
  %463 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  %464 = icmp ne %struct.pf_rule* %463, null
  br i1 %464, label %465, label %490

465:                                              ; preds = %462
  %466 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  %467 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @PF_NONAT, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %489, label %471

471:                                              ; preds = %465
  %472 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  %473 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @PF_NORDR, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %489, label %477

477:                                              ; preds = %471
  %478 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  %479 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @PF_NOBINAT, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %489, label %483

483:                                              ; preds = %477
  %484 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  %485 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @PF_NONAT64, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %483, %477, %471, %465
  store %struct.pf_rule* null, %struct.pf_rule** %11, align 8
  br label %492

490:                                              ; preds = %483, %462
  %491 = load %struct.pf_rule*, %struct.pf_rule** %23, align 8
  store %struct.pf_rule* %491, %struct.pf_rule** %11, align 8
  br label %492

492:                                              ; preds = %490, %489, %461
  %493 = load %struct.pf_rule*, %struct.pf_rule** %11, align 8
  ret %struct.pf_rule* %493
}

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @pfi_kif_match(i32, %struct.pfi_kif*) #1

declare dso_local i64 @PF_MISMATCHAW(%struct.pf_addr_wrap*, %struct.pf_addr*, i64, i32, %struct.pfi_kif*) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i32 @pf_match_xport(i64, i32, %union.pf_rule_xport*, %union.pf_state_xport*) #1

declare dso_local i32 @pf_match_tag(%struct.pf_rule*, i32, i32*) #1

declare dso_local i32 @pf_osfp_match(i32, i64) #1

declare dso_local i32 @pf_osfp_fingerprint(%struct.pf_pdesc*, i32*, i32, i32) #1

declare dso_local i64 @PF_RTABLEID_IS_VALID(i32) #1

declare dso_local i32 @pf_step_into_anchor(i32*, %struct.pf_ruleset**, i32, %struct.pf_rule**, i32*, i32*) #1

declare dso_local i32 @pf_step_out_of_anchor(i32*, %struct.pf_ruleset**, i32, %struct.pf_rule**, i32*, i32*) #1

declare dso_local i64 @pf_tag_packet(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
