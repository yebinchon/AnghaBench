; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_del_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_del_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32, i32 }
%struct.pfr_kentryworkq = type { i32 }
%struct.pfr_kentry = type { i32, i64 }
%struct.pfr_addr = type { i64, i32 }

@PFR_FLAG_ATOMIC = common dso_local global i32 0, align 4
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_FEEDBACK = common dso_local global i32 0, align 4
@PFR_FLAG_USERIOCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_TFLAG_CONST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PFR_FB_NONE = common dso_local global i32 0, align 4
@PFR_FB_CONFLICT = common dso_local global i32 0, align 4
@PFR_FB_DUPLICATE = common dso_local global i32 0, align 4
@PFR_FB_DELETED = common dso_local global i32 0, align 4
@pfrke_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_del_addrs(%struct.pfr_table* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_kentryworkq, align 4
  %14 = alloca %struct.pfr_kentry*, align 8
  %15 = alloca %struct.pfr_addr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @PFR_FLAG_ATOMIC, align 4
  %24 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ACCEPT_FLAGS(i32 %22, i32 %27)
  %29 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PFR_FLAG_USERIOCTL, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @pfr_validate_table(%struct.pfr_table* %29, i32 0, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %6, align 4
  br label %248

37:                                               ; preds = %5
  %38 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %39 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %38)
  store %struct.pfr_ktable* %39, %struct.pfr_ktable** %12, align 8
  %40 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %41 = icmp eq %struct.pfr_ktable* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %44 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* @ESRCH, align 4
  store i32 %50, i32* %6, align 4
  br label %248

51:                                               ; preds = %42
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %53 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PFR_TFLAG_CONST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EPERM, align 4
  store i32 %59, i32* %6, align 4
  br label %248

60:                                               ; preds = %51
  %61 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %62 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %70, %60
  %65 = load i32, i32* %17, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %20, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %64

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %76 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sdiv i32 %77, %78
  %80 = icmp sgt i32 %74, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %83 = call i32 @pfr_mark_addrs(%struct.pfr_ktable* %82)
  br label %118

84:                                               ; preds = %73
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %110, %84
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @COPYIN(i32 %90, %struct.pfr_addr* %15, i32 16, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EFAULT, align 4
  store i32 %95, i32* %6, align 4
  br label %248

96:                                               ; preds = %89
  %97 = call i64 @pfr_validate_addr(%struct.pfr_addr* %15)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %6, align 4
  br label %248

101:                                              ; preds = %96
  %102 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %103 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %102, %struct.pfr_addr* %15, i32 1)
  store %struct.pfr_kentry* %103, %struct.pfr_kentry** %14, align 8
  %104 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %105 = icmp ne %struct.pfr_kentry* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %108 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, 16
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %16, align 4
  br label %85

117:                                              ; preds = %85
  br label %118

118:                                              ; preds = %117, %81
  %119 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %13)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %121

121:                                              ; preds = %214, %118
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %221

125:                                              ; preds = %121
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @COPYIN(i32 %126, %struct.pfr_addr* %15, i32 16, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @EFAULT, align 4
  %132 = call i32 @senderr(i32 %131)
  br label %133

133:                                              ; preds = %130, %125
  %134 = call i64 @pfr_validate_addr(%struct.pfr_addr* %15)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* @EINVAL, align 4
  %138 = call i32 @senderr(i32 %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %141 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %140, %struct.pfr_addr* %15, i32 1)
  store %struct.pfr_kentry* %141, %struct.pfr_kentry** %14, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %139
  %147 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %148 = icmp eq %struct.pfr_kentry* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* @PFR_FB_NONE, align 4
  %151 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 1
  store i32 %150, i32* %151, align 8
  br label %175

152:                                              ; preds = %146
  %153 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %154 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i32, i32* @PFR_FB_CONFLICT, align 4
  %161 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 1
  store i32 %160, i32* %161, align 8
  br label %174

162:                                              ; preds = %152
  %163 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %164 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @PFR_FB_DUPLICATE, align 4
  %169 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 1
  store i32 %168, i32* %169, align 8
  br label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @PFR_FB_DELETED, align 4
  %172 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 1
  store i32 %171, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %159
  br label %175

175:                                              ; preds = %174, %149
  br label %176

176:                                              ; preds = %175, %139
  %177 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %178 = icmp ne %struct.pfr_kentry* %177, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %181 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %182, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %179
  %187 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %188 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %186
  %192 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %193 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %195 = load i32, i32* @pfrke_workq, align 4
  %196 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq* %13, %struct.pfr_kentry* %194, i32 %195)
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %191, %186, %179, %176
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i64 @COPYOUT(%struct.pfr_addr* %15, i32 %205, i32 16, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @EFAULT, align 4
  %211 = call i32 @senderr(i32 %210)
  br label %212

212:                                              ; preds = %209, %204
  br label %213

213:                                              ; preds = %212, %199
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = add i64 %218, 16
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %16, align 4
  br label %121

221:                                              ; preds = %121
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %221
  %227 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %228 = call i32 @pfr_remove_kentries(%struct.pfr_ktable* %227, %struct.pfr_kentryworkq* %13)
  br label %229

229:                                              ; preds = %226, %221
  %230 = load i32*, i32** %10, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %19, align 4
  %234 = load i32*, i32** %10, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %229
  store i32 0, i32* %6, align 4
  br label %248

236:                                              ; No predecessors!
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @pfr_reset_feedback(i32 %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %241, %236
  %247 = load i32, i32* %18, align 4
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %246, %235, %99, %94, %58, %49, %35
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @pfr_mark_addrs(%struct.pfr_ktable*) #1

declare dso_local i64 @COPYIN(i32, %struct.pfr_addr*, i32, i32) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq*, %struct.pfr_kentry*, i32) #1

declare dso_local i64 @COPYOUT(%struct.pfr_addr*, i32, i32, i32) #1

declare dso_local i32 @pfr_remove_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_reset_feedback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
