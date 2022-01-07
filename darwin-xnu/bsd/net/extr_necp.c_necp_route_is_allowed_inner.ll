; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_route_is_allowed_inner.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_route_is_allowed_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.ifnet* }
%struct.ifnet = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.necp_route_rule = type { i64, i64*, i64*, i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@NECP_ROUTE_RULE_NONE = common dso_local global i64 0, align 8
@necp_route_rules = common dso_local global i32 0, align 4
@NECP_ROUTE_RULE_DENY_INTERFACE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@necp_debug = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Route Allowed: No interface for route, using default for Rule %d Allowed %d\00", align 1
@MAX_ROUTE_RULE_INTERFACES = common dso_local global i32 0, align 4
@NECP_ROUTE_RULE_DENY_LQM_ABORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Route Allowed: Interface match %d for Rule %d Deny LQM Abort\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Route Allowed: Interface match %d for Rule %d Allowed %d\00", align 1
@IFRTYPE_FUNCTIONAL_CELLULAR = common dso_local global i32 0, align 4
@NECP_ROUTE_RULE_ALLOW_INTERFACE = common dso_local global i64 0, align 8
@IFRTYPE_FUNCTIONAL_WIFI_INFRA = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_WIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Route Allowed: C:%d WF:%d W:%d E:%d for Rule %d Allowed %d\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Route Allowed: Using default for Rule %d Allowed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtentry*, %struct.ifnet*, i32, i32*)* @necp_route_is_allowed_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_route_is_allowed_inner(%struct.rtentry* %0, %struct.ifnet* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifnet*, align 8
  %14 = alloca %struct.necp_route_rule*, align 8
  %15 = alloca i32, align 4
  store %struct.rtentry* %0, %struct.rtentry** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* @NECP_ROUTE_RULE_NONE, align 8
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.ifnet* null, %struct.ifnet** %13, align 8
  store %struct.necp_route_rule* null, %struct.necp_route_rule** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.necp_route_rule* @necp_lookup_route_rule_locked(i32* @necp_route_rules, i32 %18)
  store %struct.necp_route_rule* %19, %struct.necp_route_rule** %14, align 8
  %20 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %21 = icmp eq %struct.necp_route_rule* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %5, align 4
  br label %471

24:                                               ; preds = %4
  %25 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %26 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @FALSE, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @TRUE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %37 = icmp eq %struct.ifnet* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %40 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %39, i32 0, i32 0
  %41 = load %struct.ifnet*, %struct.ifnet** %40, align 8
  store %struct.ifnet* %41, %struct.ifnet** %7, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %44 = icmp eq %struct.ifnet* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* @necp_debug, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG_DEBUG, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %52, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %48, %45
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %471

58:                                               ; preds = %42
  %59 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.ifnet*, %struct.ifnet** %61, align 8
  store %struct.ifnet* %62, %struct.ifnet** %13, align 8
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %195, %58
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @MAX_ROUTE_RULE_INTERFACES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %198

67:                                               ; preds = %63
  %68 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %69 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %198

77:                                               ; preds = %67
  %78 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %79 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %104, label %89

89:                                               ; preds = %77
  %90 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %91 = icmp ne %struct.ifnet* %90, null
  br i1 %91, label %92, label %194

92:                                               ; preds = %89
  %93 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %94 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %194

104:                                              ; preds = %92, %77
  %105 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %106 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NECP_ROUTE_RULE_DENY_LQM_ABORT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %104
  %115 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %116 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %117 = call i32 @necp_route_is_lqm_abort(%struct.ifnet* %115, %struct.ifnet* %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* @necp_debug, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i32, i32* @LOG_DEBUG, align 4
  %125 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %126 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %124, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %123, %120, %114
  store i32 0, i32* %5, align 4
  br label %471

136:                                              ; preds = %104
  %137 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %138 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @IS_NECP_ROUTE_RULE_ALLOW_OR_DENY(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %192

146:                                              ; preds = %136
  %147 = load i32, i32* @necp_debug, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = load i32, i32* @LOG_DEBUG, align 4
  %151 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %152 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %161 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %149
  %170 = load i32, i32* @FALSE, align 4
  br label %173

171:                                              ; preds = %149
  %172 = load i32, i32* @TRUE, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %150, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %159, i32 %174)
  br label %176

176:                                              ; preds = %173, %146
  %177 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %178 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %177, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i32, i32* @FALSE, align 4
  br label %190

188:                                              ; preds = %176
  %189 = load i32, i32* @TRUE, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  store i32 %191, i32* %5, align 4
  br label %471

192:                                              ; preds = %136
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193, %92, %89
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %63

198:                                              ; preds = %76, %63
  %199 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %200 = call i64 @IFNET_IS_CELLULAR(%struct.ifnet* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %255

202:                                              ; preds = %198
  %203 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %204 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NECP_ROUTE_RULE_DENY_LQM_ABORT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %202
  %209 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %210 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %211 = call i32 @necp_route_is_lqm_abort(%struct.ifnet* %209, %struct.ifnet* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load i32*, i32** %9, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* @IFRTYPE_FUNCTIONAL_CELLULAR, align 4
  %218 = load i32*, i32** %9, align 8
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  store i64 %220, i64* %11, align 8
  br label %221

221:                                              ; preds = %219, %208
  br label %254

222:                                              ; preds = %202
  %223 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %224 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @IS_NECP_ROUTE_RULE_ALLOW_OR_DENY(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %253

228:                                              ; preds = %222
  %229 = load i32*, i32** %9, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* @IFRTYPE_FUNCTIONAL_CELLULAR, align 4
  %233 = load i32*, i32** %9, align 8
  store i32 %232, i32* %233, align 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i64, i64* %11, align 8
  %236 = load i64, i64* @NECP_ROUTE_RULE_NONE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %248, label %238

238:                                              ; preds = %234
  %239 = load i64, i64* %11, align 8
  %240 = load i64, i64* @NECP_ROUTE_RULE_ALLOW_INTERFACE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %244 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %242, %234
  %249 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %250 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %11, align 8
  br label %252

252:                                              ; preds = %248, %242, %238
  br label %253

253:                                              ; preds = %252, %222
  br label %254

254:                                              ; preds = %253, %221
  br label %255

255:                                              ; preds = %254, %198
  %256 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %257 = call i64 @IFNET_IS_WIFI(%struct.ifnet* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %312

259:                                              ; preds = %255
  %260 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %261 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @NECP_ROUTE_RULE_DENY_LQM_ABORT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %279

265:                                              ; preds = %259
  %266 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %267 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %268 = call i32 @necp_route_is_lqm_abort(%struct.ifnet* %266, %struct.ifnet* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = load i32*, i32** %9, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIFI_INFRA, align 4
  %275 = load i32*, i32** %9, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  store i64 %277, i64* %11, align 8
  br label %278

278:                                              ; preds = %276, %265
  br label %311

279:                                              ; preds = %259
  %280 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %281 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = call i64 @IS_NECP_ROUTE_RULE_ALLOW_OR_DENY(i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %310

285:                                              ; preds = %279
  %286 = load i32*, i32** %9, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIFI_INFRA, align 4
  %290 = load i32*, i32** %9, align 8
  store i32 %289, i32* %290, align 4
  br label %291

291:                                              ; preds = %288, %285
  %292 = load i64, i64* %11, align 8
  %293 = load i64, i64* @NECP_ROUTE_RULE_NONE, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %305, label %295

295:                                              ; preds = %291
  %296 = load i64, i64* %11, align 8
  %297 = load i64, i64* @NECP_ROUTE_RULE_ALLOW_INTERFACE, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %309

299:                                              ; preds = %295
  %300 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %301 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %299, %291
  %306 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %307 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %11, align 8
  br label %309

309:                                              ; preds = %305, %299, %295
  br label %310

310:                                              ; preds = %309, %279
  br label %311

311:                                              ; preds = %310, %278
  br label %312

312:                                              ; preds = %311, %255
  %313 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %314 = call i64 @IFNET_IS_WIRED(%struct.ifnet* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %369

316:                                              ; preds = %312
  %317 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %318 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %317, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @NECP_ROUTE_RULE_DENY_LQM_ABORT, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %336

322:                                              ; preds = %316
  %323 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %324 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %325 = call i32 @necp_route_is_lqm_abort(%struct.ifnet* %323, %struct.ifnet* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %322
  %328 = load i32*, i32** %9, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIRED, align 4
  %332 = load i32*, i32** %9, align 8
  store i32 %331, i32* %332, align 4
  br label %333

333:                                              ; preds = %330, %327
  %334 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  store i64 %334, i64* %11, align 8
  br label %335

335:                                              ; preds = %333, %322
  br label %368

336:                                              ; preds = %316
  %337 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %338 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = call i64 @IS_NECP_ROUTE_RULE_ALLOW_OR_DENY(i64 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %367

342:                                              ; preds = %336
  %343 = load i32*, i32** %9, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIRED, align 4
  %347 = load i32*, i32** %9, align 8
  store i32 %346, i32* %347, align 4
  br label %348

348:                                              ; preds = %345, %342
  %349 = load i64, i64* %11, align 8
  %350 = load i64, i64* @NECP_ROUTE_RULE_NONE, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %362, label %352

352:                                              ; preds = %348
  %353 = load i64, i64* %11, align 8
  %354 = load i64, i64* @NECP_ROUTE_RULE_ALLOW_INTERFACE, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %366

356:                                              ; preds = %352
  %357 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %358 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %357, i32 0, i32 5
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %366

362:                                              ; preds = %356, %348
  %363 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %364 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %11, align 8
  br label %366

366:                                              ; preds = %362, %356, %352
  br label %367

367:                                              ; preds = %366, %336
  br label %368

368:                                              ; preds = %367, %335
  br label %369

369:                                              ; preds = %368, %312
  %370 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %371 = call i64 @IFNET_IS_EXPENSIVE(%struct.ifnet* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %414

373:                                              ; preds = %369
  %374 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %375 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %374, i32 0, i32 6
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @NECP_ROUTE_RULE_DENY_LQM_ABORT, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %373
  %380 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %381 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %382 = call i32 @necp_route_is_lqm_abort(%struct.ifnet* %380, %struct.ifnet* %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  %385 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  store i64 %385, i64* %11, align 8
  br label %386

386:                                              ; preds = %384, %379
  br label %413

387:                                              ; preds = %373
  %388 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %389 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %388, i32 0, i32 6
  %390 = load i64, i64* %389, align 8
  %391 = call i64 @IS_NECP_ROUTE_RULE_ALLOW_OR_DENY(i64 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %412

393:                                              ; preds = %387
  %394 = load i64, i64* %11, align 8
  %395 = load i64, i64* @NECP_ROUTE_RULE_NONE, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %407, label %397

397:                                              ; preds = %393
  %398 = load i64, i64* %11, align 8
  %399 = load i64, i64* @NECP_ROUTE_RULE_ALLOW_INTERFACE, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %411

401:                                              ; preds = %397
  %402 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %403 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %411

407:                                              ; preds = %401, %393
  %408 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %409 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %408, i32 0, i32 6
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %11, align 8
  br label %411

411:                                              ; preds = %407, %401, %397
  br label %412

412:                                              ; preds = %411, %387
  br label %413

413:                                              ; preds = %412, %386
  br label %414

414:                                              ; preds = %413, %369
  %415 = load i64, i64* %11, align 8
  %416 = load i64, i64* @NECP_ROUTE_RULE_NONE, align 8
  %417 = icmp ne i64 %415, %416
  br i1 %417, label %418, label %458

418:                                              ; preds = %414
  %419 = load i32, i32* @necp_debug, align 4
  %420 = icmp sgt i32 %419, 1
  br i1 %420, label %421, label %448

421:                                              ; preds = %418
  %422 = load i32, i32* @LOG_DEBUG, align 4
  %423 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %424 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = trunc i64 %425 to i32
  %427 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %428 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %427, i32 0, i32 4
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  %431 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %432 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %431, i32 0, i32 5
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.necp_route_rule*, %struct.necp_route_rule** %14, align 8
  %435 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %434, i32 0, i32 6
  %436 = load i64, i64* %435, align 8
  %437 = load i32, i32* %8, align 4
  %438 = load i64, i64* %11, align 8
  %439 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %421
  %442 = load i32, i32* @FALSE, align 4
  br label %445

443:                                              ; preds = %421
  %444 = load i32, i32* @TRUE, align 4
  br label %445

445:                                              ; preds = %443, %441
  %446 = phi i32 [ %442, %441 ], [ %444, %443 ]
  %447 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %422, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %426, i32 %430, i64 %433, i64 %436, i32 %437, i32 %446)
  br label %448

448:                                              ; preds = %445, %418
  %449 = load i64, i64* %11, align 8
  %450 = load i64, i64* @NECP_ROUTE_RULE_DENY_INTERFACE, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %454

452:                                              ; preds = %448
  %453 = load i32, i32* @FALSE, align 4
  br label %456

454:                                              ; preds = %448
  %455 = load i32, i32* @TRUE, align 4
  br label %456

456:                                              ; preds = %454, %452
  %457 = phi i32 [ %453, %452 ], [ %455, %454 ]
  store i32 %457, i32* %5, align 4
  br label %471

458:                                              ; preds = %414
  %459 = load i32, i32* @necp_debug, align 4
  %460 = icmp sgt i32 %459, 1
  br i1 %460, label %461, label %469

461:                                              ; preds = %458
  %462 = load i32, i32* %10, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %469, label %464

464:                                              ; preds = %461
  %465 = load i32, i32* @LOG_DEBUG, align 4
  %466 = load i32, i32* %8, align 4
  %467 = load i32, i32* %10, align 4
  %468 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %465, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %466, i32 %467)
  br label %469

469:                                              ; preds = %464, %461, %458
  %470 = load i32, i32* %10, align 4
  store i32 %470, i32* %5, align 4
  br label %471

471:                                              ; preds = %469, %456, %190, %135, %56, %22
  %472 = load i32, i32* %5, align 4
  ret i32 %472
}

declare dso_local %struct.necp_route_rule* @necp_lookup_route_rule_locked(i32*, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @necp_route_is_lqm_abort(%struct.ifnet*, %struct.ifnet*) #1

declare dso_local i64 @IS_NECP_ROUTE_RULE_ALLOW_OR_DENY(i64) #1

declare dso_local i64 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIFI(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIRED(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
