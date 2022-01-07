; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_commit_rules.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_commit_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.pf_rule**, %struct.pf_rulequeue* }
%struct.pf_rule = type { i32 }
%struct.pf_rulequeue = type { i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.pf_rulequeue*, %struct.pf_rule** }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PF_RULESET_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.pf_ruleset zeroinitializer, align 8
@PFRULE_PFM = common dso_local global i32 0, align 4
@pffwrules = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*)* @pf_commit_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_commit_rules(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pf_ruleset*, align 8
  %9 = alloca %struct.pf_rule*, align 8
  %10 = alloca %struct.pf_rule**, align 8
  %11 = alloca %struct.pf_rule*, align 8
  %12 = alloca %struct.pf_rulequeue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @pf_lock, align 4
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PF_RULESET_MAX, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %290

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call %struct.pf_ruleset* @pf_find_ruleset(i8* %27)
  store %struct.pf_ruleset* %28, %struct.pf_ruleset** %8, align 8
  %29 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %30 = icmp eq %struct.pf_ruleset* %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %33 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %45 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %43, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42, %31, %26
  %55 = load i32, i32* @EBUSY, align 4
  store i32 %55, i32* %4, align 4
  br label %290

56:                                               ; preds = %42
  %57 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %58 = icmp eq %struct.pf_ruleset* %57, @pf_main_ruleset
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %61 = call i32 @pf_setup_pfsync_matching(%struct.pf_ruleset* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %290

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %69 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %75, align 8
  store %struct.pf_rulequeue* %76, %struct.pf_rulequeue** %12, align 8
  %77 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %78 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  %86 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %87 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load %struct.pf_rule**, %struct.pf_rule*** %93, align 8
  store %struct.pf_rule** %94, %struct.pf_rule*** %10, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %67
  %98 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %99 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %105, align 8
  %107 = call %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue* %106)
  store %struct.pf_rule* %107, %struct.pf_rule** %11, align 8
  br label %108

108:                                              ; preds = %121, %97
  %109 = load %struct.pf_rule*, %struct.pf_rule** %11, align 8
  %110 = icmp ne %struct.pf_rule* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.pf_rule*, %struct.pf_rule** %11, align 8
  %113 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PFRULE_PFM, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @pffwrules, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* @pffwrules, align 4
  br label %121

121:                                              ; preds = %118, %111
  %122 = load %struct.pf_rule*, %struct.pf_rule** %11, align 8
  %123 = load i32, i32* @entries, align 4
  %124 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %122, i32 %123)
  store %struct.pf_rule* %124, %struct.pf_rule** %11, align 8
  br label %108

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %67
  %127 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %128 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %134, align 8
  %136 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %137 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store %struct.pf_rulequeue* %135, %struct.pf_rulequeue** %143, align 8
  %144 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %145 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = load %struct.pf_rule**, %struct.pf_rule*** %151, align 8
  %153 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %154 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store %struct.pf_rule** %152, %struct.pf_rule*** %160, align 8
  %161 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %162 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %171 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i64 %169, i64* %177, align 8
  %178 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %12, align 8
  %179 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %180 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  store %struct.pf_rulequeue* %178, %struct.pf_rulequeue** %186, align 8
  %187 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %188 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %189 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  store %struct.pf_rule** %187, %struct.pf_rule*** %195, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %198 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %197, i32 0, i32 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  store i64 %196, i64* %204, align 8
  %205 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %206 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %215 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  store i64 %213, i64* %221, align 8
  %222 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %223 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %229, align 8
  %231 = call i32 @pf_calc_skip_steps(%struct.pf_rulequeue* %230)
  br label %232

232:                                              ; preds = %236, %126
  %233 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %12, align 8
  %234 = call %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue* %233)
  store %struct.pf_rule* %234, %struct.pf_rule** %9, align 8
  %235 = icmp ne %struct.pf_rule* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  %237 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %12, align 8
  %238 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %239 = call i32 @pf_rm_rule(%struct.pf_rulequeue* %237, %struct.pf_rule* %238)
  br label %232

240:                                              ; preds = %232
  %241 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %242 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %241, i32 0, i32 0
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 3
  %249 = load %struct.pf_rule**, %struct.pf_rule*** %248, align 8
  %250 = icmp ne %struct.pf_rule** %249, null
  br i1 %250, label %251, label %263

251:                                              ; preds = %240
  %252 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %253 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %252, i32 0, i32 0
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 3
  %260 = load %struct.pf_rule**, %struct.pf_rule*** %259, align 8
  %261 = load i32, i32* @M_TEMP, align 4
  %262 = call i32 @_FREE(%struct.pf_rule** %260, i32 %261)
  br label %263

263:                                              ; preds = %251, %240
  %264 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %265 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %264, i32 0, i32 0
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 3
  store %struct.pf_rule** null, %struct.pf_rule*** %271, align 8
  %272 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %273 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %272, i32 0, i32 0
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  store i64 0, i64* %279, align 8
  %280 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %281 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %280, i32 0, i32 0
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 2
  store i64 0, i64* %287, align 8
  %288 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %289 = call i32 @pf_remove_if_empty_ruleset(%struct.pf_ruleset* %288)
  store i32 0, i32* %4, align 4
  br label %290

290:                                              ; preds = %263, %64, %54, %24
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.pf_ruleset* @pf_find_ruleset(i8*) #1

declare dso_local i32 @pf_setup_pfsync_matching(%struct.pf_ruleset*) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(%struct.pf_rulequeue*) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i32 @pf_calc_skip_steps(%struct.pf_rulequeue*) #1

declare dso_local i32 @pf_rm_rule(%struct.pf_rulequeue*, %struct.pf_rule*) #1

declare dso_local i32 @_FREE(%struct.pf_rule**, i32) #1

declare dso_local i32 @pf_remove_if_empty_ruleset(%struct.pf_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
