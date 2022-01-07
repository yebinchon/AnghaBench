; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_fragment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.pf_pdesc = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.pf_rule = type { i64, i32, i64, i64, i32, i32, i64, i32, i64, i64, i64, i32*, i64, i64, i64, i64, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.pf_rule* }
%struct.pf_ruleset = type { i32 }

@pf_main_ruleset = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PF_RULESET_FILTER = common dso_local global i64 0, align 8
@PF_SKIP_IFP = common dso_local global i64 0, align 8
@PF_SKIP_DIR = common dso_local global i64 0, align 8
@PF_SKIP_AF = common dso_local global i64 0, align 8
@PF_SKIP_PROTO = common dso_local global i64 0, align 8
@PF_SKIP_SRC_ADDR = common dso_local global i64 0, align 8
@PF_SKIP_DST_ADDR = common dso_local global i64 0, align 8
@PFRULE_TOS = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@PFRULE_DSCP = common dso_local global i32 0, align 4
@DSCP_MASK = common dso_local global i32 0, align 4
@PFRULE_SC = common dso_local global i32 0, align 4
@SCIDX_MASK = common dso_local global i32 0, align 4
@PF_OSFP_ANY = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@PFRES_MATCH = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i64 0, align 8
@PF_DROP = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_rule**, i32, %struct.pfi_kif*, i32*, i8*, %struct.pf_pdesc*, %struct.pf_rule**, %struct.pf_ruleset**)* @pf_test_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_fragment(%struct.pf_rule** %0, i32 %1, %struct.pfi_kif* %2, i32* %3, i8* %4, %struct.pf_pdesc* %5, %struct.pf_rule** %6, %struct.pf_ruleset** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_rule**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfi_kif*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pf_pdesc*, align 8
  %16 = alloca %struct.pf_rule**, align 8
  %17 = alloca %struct.pf_ruleset**, align 8
  %18 = alloca %struct.pf_rule*, align 8
  %19 = alloca %struct.pf_rule*, align 8
  %20 = alloca %struct.pf_ruleset*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.pf_rule** %0, %struct.pf_rule*** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.pf_pdesc* %5, %struct.pf_pdesc** %15, align 8
  store %struct.pf_rule** %6, %struct.pf_rule*** %16, align 8
  store %struct.pf_ruleset** %7, %struct.pf_ruleset*** %17, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %19, align 8
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %20, align 8
  %26 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %27 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %21, align 8
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pf_main_ruleset, i32 0, i32 0), align 8
  %30 = load i64, i64* @PF_RULESET_FILTER, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.pf_rule* @TAILQ_FIRST(i32 %34)
  store %struct.pf_rule* %35, %struct.pf_rule** %18, align 8
  br label %36

36:                                               ; preds = %419, %8
  %37 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %38 = icmp ne %struct.pf_rule* %37, null
  br i1 %38, label %39, label %420

39:                                               ; preds = %36
  %40 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %41 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %40, i32 0, i32 20
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %45 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %44, i32 0, i32 19
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %48 = call i64 @pfi_kif_match(i32 %46, %struct.pfi_kif* %47)
  %49 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %50 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %39
  %54 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %55 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %54, i32 0, i32 18
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i64, i64* @PF_SKIP_IFP, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.pf_rule*, %struct.pf_rule** %59, align 8
  store %struct.pf_rule* %60, %struct.pf_rule** %18, align 8
  br label %411

61:                                               ; preds = %39
  %62 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %63 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %68 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %74 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %73, i32 0, i32 18
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i64, i64* @PF_SKIP_DIR, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.pf_rule*, %struct.pf_rule** %78, align 8
  store %struct.pf_rule* %79, %struct.pf_rule** %18, align 8
  br label %410

80:                                               ; preds = %66, %61
  %81 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %82 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %87 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %21, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %93 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %92, i32 0, i32 18
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load i64, i64* @PF_SKIP_AF, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.pf_rule*, %struct.pf_rule** %97, align 8
  store %struct.pf_rule* %98, %struct.pf_rule** %18, align 8
  br label %409

99:                                               ; preds = %85, %80
  %100 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %101 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %106 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %109 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %114 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %113, i32 0, i32 18
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load i64, i64* @PF_SKIP_PROTO, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load %struct.pf_rule*, %struct.pf_rule** %118, align 8
  store %struct.pf_rule* %119, %struct.pf_rule** %18, align 8
  br label %408

120:                                              ; preds = %104, %99
  %121 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %122 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %121, i32 0, i32 17
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %125 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %21, align 8
  %128 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %129 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %128, i32 0, i32 17
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %133 = call i64 @PF_MISMATCHAW(i32* %123, i32 %126, i64 %127, i32 %131, %struct.pfi_kif* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %120
  %136 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %137 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %136, i32 0, i32 18
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i64, i64* @PF_SKIP_SRC_ADDR, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.pf_rule*, %struct.pf_rule** %141, align 8
  store %struct.pf_rule* %142, %struct.pf_rule** %18, align 8
  br label %407

143:                                              ; preds = %120
  %144 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %145 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %144, i32 0, i32 16
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %148 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %152 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %151, i32 0, i32 16
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @PF_MISMATCHAW(i32* %146, i32 %149, i64 %150, i32 %154, %struct.pfi_kif* null)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %143
  %158 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %159 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %158, i32 0, i32 18
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i64, i64* @PF_SKIP_DST_ADDR, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.pf_rule*, %struct.pf_rule** %163, align 8
  store %struct.pf_rule* %164, %struct.pf_rule** %18, align 8
  br label %406

165:                                              ; preds = %143
  %166 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %167 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @PFRULE_TOS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %165
  %173 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %174 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %182 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %180, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %177
  %187 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %188 = load i32, i32* @entries, align 4
  %189 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %187, i32 %188)
  store %struct.pf_rule* %189, %struct.pf_rule** %18, align 8
  br label %405

190:                                              ; preds = %177, %172, %165
  %191 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %192 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PFRULE_DSCP, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %190
  %198 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %199 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %197
  %203 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %204 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %207 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @DSCP_MASK, align 4
  %210 = and i32 %208, %209
  %211 = and i32 %205, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %202
  %214 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %215 = load i32, i32* @entries, align 4
  %216 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %214, i32 %215)
  store %struct.pf_rule* %216, %struct.pf_rule** %18, align 8
  br label %404

217:                                              ; preds = %202, %197, %190
  %218 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %219 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @PFRULE_SC, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %217
  %225 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %226 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %224
  %230 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %231 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @SCIDX_MASK, align 4
  %234 = and i32 %232, %233
  %235 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %236 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %229
  %240 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %241 = load i32, i32* @entries, align 4
  %242 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %240, i32 %241)
  store %struct.pf_rule* %242, %struct.pf_rule** %18, align 8
  br label %403

243:                                              ; preds = %229, %224, %217
  %244 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %245 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PF_OSFP_ANY, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %243
  %250 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %251 = load i32, i32* @entries, align 4
  %252 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %250, i32 %251)
  store %struct.pf_rule* %252, %struct.pf_rule** %18, align 8
  br label %402

253:                                              ; preds = %243
  %254 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %255 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @IPPROTO_UDP, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %279

259:                                              ; preds = %253
  %260 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %261 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %260, i32 0, i32 17
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %275, label %267

267:                                              ; preds = %259
  %268 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %269 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %268, i32 0, i32 16
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %267, %259
  %276 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %277 = load i32, i32* @entries, align 4
  %278 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %276, i32 %277)
  store %struct.pf_rule* %278, %struct.pf_rule** %18, align 8
  br label %401

279:                                              ; preds = %267, %253
  %280 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %281 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @IPPROTO_TCP, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %310

285:                                              ; preds = %279
  %286 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %287 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %286, i32 0, i32 17
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %306, label %293

293:                                              ; preds = %285
  %294 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %295 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %294, i32 0, i32 16
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %293
  %302 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %303 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %302, i32 0, i32 15
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %301, %293, %285
  %307 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %308 = load i32, i32* @entries, align 4
  %309 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %307, i32 %308)
  store %struct.pf_rule* %309, %struct.pf_rule** %18, align 8
  br label %400

310:                                              ; preds = %301, %279
  %311 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %312 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @IPPROTO_ICMP, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %322, label %316

316:                                              ; preds = %310
  %317 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %318 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %336

322:                                              ; preds = %316, %310
  %323 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %324 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %323, i32 0, i32 14
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %322
  %328 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %329 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %328, i32 0, i32 13
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %327, %322
  %333 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %334 = load i32, i32* @entries, align 4
  %335 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %333, i32 %334)
  store %struct.pf_rule* %335, %struct.pf_rule** %18, align 8
  br label %399

336:                                              ; preds = %327, %316
  %337 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %338 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %336
  %342 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %343 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 8
  %345 = call i32 (...) @RandomULong()
  %346 = load i32, i32* @UINT_MAX, align 4
  %347 = sub nsw i32 %346, 1
  %348 = srem i32 %345, %347
  %349 = add nsw i32 %348, 1
  %350 = icmp sle i32 %344, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %341
  %352 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %353 = load i32, i32* @entries, align 4
  %354 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %352, i32 %353)
  store %struct.pf_rule* %354, %struct.pf_rule** %18, align 8
  br label %398

355:                                              ; preds = %341, %336
  %356 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %357 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %356, i32 0, i32 12
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %355
  %361 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %362 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %363 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @pf_match_tag(%struct.pf_rule* %361, i32 %364, i32* %23)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %371, label %367

367:                                              ; preds = %360
  %368 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %369 = load i32, i32* @entries, align 4
  %370 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %368, i32 %369)
  store %struct.pf_rule* %370, %struct.pf_rule** %18, align 8
  br label %397

371:                                              ; preds = %360, %355
  %372 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %373 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %372, i32 0, i32 11
  %374 = load i32*, i32** %373, align 8
  %375 = icmp eq i32* %374, null
  br i1 %375, label %376, label %393

376:                                              ; preds = %371
  store i32 1, i32* %25, align 4
  %377 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %378 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  store %struct.pf_rule* %377, %struct.pf_rule** %378, align 8
  %379 = load %struct.pf_rule*, %struct.pf_rule** %19, align 8
  %380 = load %struct.pf_rule**, %struct.pf_rule*** %16, align 8
  store %struct.pf_rule* %379, %struct.pf_rule** %380, align 8
  %381 = load %struct.pf_ruleset*, %struct.pf_ruleset** %20, align 8
  %382 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %17, align 8
  store %struct.pf_ruleset* %381, %struct.pf_ruleset** %382, align 8
  %383 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %384 = load %struct.pf_rule*, %struct.pf_rule** %383, align 8
  %385 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %384, i32 0, i32 10
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %376
  br label %420

389:                                              ; preds = %376
  %390 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %391 = load i32, i32* @entries, align 4
  %392 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %390, i32 %391)
  store %struct.pf_rule* %392, %struct.pf_rule** %18, align 8
  br label %396

393:                                              ; preds = %371
  %394 = load i64, i64* @PF_RULESET_FILTER, align 8
  %395 = call i32 @pf_step_into_anchor(i32* %24, %struct.pf_ruleset** %20, i64 %394, %struct.pf_rule** %18, %struct.pf_rule** %19, i32* %25)
  br label %396

396:                                              ; preds = %393, %389
  br label %397

397:                                              ; preds = %396, %367
  br label %398

398:                                              ; preds = %397, %351
  br label %399

399:                                              ; preds = %398, %332
  br label %400

400:                                              ; preds = %399, %306
  br label %401

401:                                              ; preds = %400, %275
  br label %402

402:                                              ; preds = %401, %249
  br label %403

403:                                              ; preds = %402, %239
  br label %404

404:                                              ; preds = %403, %213
  br label %405

405:                                              ; preds = %404, %186
  br label %406

406:                                              ; preds = %405, %157
  br label %407

407:                                              ; preds = %406, %135
  br label %408

408:                                              ; preds = %407, %112
  br label %409

409:                                              ; preds = %408, %91
  br label %410

410:                                              ; preds = %409, %72
  br label %411

411:                                              ; preds = %410, %53
  %412 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %413 = icmp eq %struct.pf_rule* %412, null
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  %415 = load i64, i64* @PF_RULESET_FILTER, align 8
  %416 = call i64 @pf_step_out_of_anchor(i32* %24, %struct.pf_ruleset** %20, i64 %415, %struct.pf_rule** %18, %struct.pf_rule** %19, i32* %25)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  br label %420

419:                                              ; preds = %414, %411
  br label %36

420:                                              ; preds = %418, %388, %36
  %421 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %422 = load %struct.pf_rule*, %struct.pf_rule** %421, align 8
  store %struct.pf_rule* %422, %struct.pf_rule** %18, align 8
  %423 = load %struct.pf_rule**, %struct.pf_rule*** %16, align 8
  %424 = load %struct.pf_rule*, %struct.pf_rule** %423, align 8
  store %struct.pf_rule* %424, %struct.pf_rule** %19, align 8
  %425 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %17, align 8
  %426 = load %struct.pf_ruleset*, %struct.pf_ruleset** %425, align 8
  store %struct.pf_ruleset* %426, %struct.pf_ruleset** %20, align 8
  %427 = load i32, i32* @PFRES_MATCH, align 4
  %428 = call i32 @REASON_SET(i32* %22, i32 %427)
  %429 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %430 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %429, i32 0, i32 9
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %445

433:                                              ; preds = %420
  %434 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %435 = load i8*, i8** %14, align 8
  %436 = load i32*, i32** %13, align 8
  %437 = load i64, i64* %21, align 8
  %438 = load i32, i32* %11, align 4
  %439 = load i32, i32* %22, align 4
  %440 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %441 = load %struct.pf_rule*, %struct.pf_rule** %19, align 8
  %442 = load %struct.pf_ruleset*, %struct.pf_ruleset** %20, align 8
  %443 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %444 = call i32 @PFLOG_PACKET(%struct.pfi_kif* %434, i8* %435, i32* %436, i64 %437, i32 %438, i32 %439, %struct.pf_rule* %440, %struct.pf_rule* %441, %struct.pf_ruleset* %442, %struct.pf_pdesc* %443)
  br label %445

445:                                              ; preds = %433, %420
  %446 = load %struct.pf_rule*, %struct.pf_rule** %18, align 8
  %447 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %446, i32 0, i32 8
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @PF_PASS, align 8
  %450 = icmp ne i64 %448, %449
  br i1 %450, label %451, label %453

451:                                              ; preds = %445
  %452 = load i32, i32* @PF_DROP, align 4
  store i32 %452, i32* %9, align 4
  br label %468

453:                                              ; preds = %445
  %454 = load i32*, i32** %13, align 8
  %455 = load %struct.pf_pdesc*, %struct.pf_pdesc** %15, align 8
  %456 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* %23, align 4
  %459 = call i64 @pf_tag_packet(i32* %454, i32 %457, i32 %458, i32 -1, i32* null)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %453
  %462 = load i32, i32* @PFRES_MEMORY, align 4
  %463 = call i32 @REASON_SET(i32* %22, i32 %462)
  %464 = load i32, i32* @PF_DROP, align 4
  store i32 %464, i32* %9, align 4
  br label %468

465:                                              ; preds = %453
  %466 = load i64, i64* @PF_PASS, align 8
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %9, align 4
  br label %468

468:                                              ; preds = %465, %461, %451
  %469 = load i32, i32* %9, align 4
  ret i32 %469
}

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i64 @pfi_kif_match(i32, %struct.pfi_kif*) #1

declare dso_local i64 @PF_MISMATCHAW(i32*, i32, i64, i32, %struct.pfi_kif*) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i32 @RandomULong(...) #1

declare dso_local i32 @pf_match_tag(%struct.pf_rule*, i32, i32*) #1

declare dso_local i32 @pf_step_into_anchor(i32*, %struct.pf_ruleset**, i64, %struct.pf_rule**, %struct.pf_rule**, i32*) #1

declare dso_local i64 @pf_step_out_of_anchor(i32*, %struct.pf_ruleset**, i64, %struct.pf_rule**, %struct.pf_rule**, i32*) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

declare dso_local i32 @PFLOG_PACKET(%struct.pfi_kif*, i8*, i32*, i64, i32, i32, %struct.pf_rule*, %struct.pf_rule*, %struct.pf_ruleset*, %struct.pf_pdesc*) #1

declare dso_local i64 @pf_tag_packet(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
