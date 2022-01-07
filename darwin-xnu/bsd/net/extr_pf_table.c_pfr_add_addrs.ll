; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_add_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32 }
%struct.pfr_kentryworkq = type { i32 }
%struct.pfr_kentry = type { i64 }
%struct.pfr_addr = type { i64, i8* }

@PFR_FLAG_ATOMIC = common dso_local global i32 0, align 4
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_FEEDBACK = common dso_local global i32 0, align 4
@PFR_FLAG_USERIOCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_TFLAG_CONST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@pfr_nulltable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PFR_FB_DUPLICATE = common dso_local global i8* null, align 8
@PFR_FB_ADDED = common dso_local global i8* null, align 8
@PFR_FB_CONFLICT = common dso_local global i8* null, align 8
@PFR_FB_NONE = common dso_local global i8* null, align 8
@pfrke_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_add_addrs(%struct.pfr_table* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_ktable*, align 8
  %14 = alloca %struct.pfr_kentryworkq, align 4
  %15 = alloca %struct.pfr_kentry*, align 8
  %16 = alloca %struct.pfr_kentry*, align 8
  %17 = alloca %struct.pfr_addr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %20, align 4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %21, align 4
  %24 = call i32 (...) @pf_calendar_time_second()
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PFR_FLAG_ATOMIC, align 4
  %27 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ACCEPT_FLAGS(i32 %25, i32 %30)
  %32 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @PFR_FLAG_USERIOCTL, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @pfr_validate_table(%struct.pfr_table* %32, i32 0, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %223

40:                                               ; preds = %5
  %41 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %42 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %41)
  store %struct.pfr_ktable* %42, %struct.pfr_ktable** %12, align 8
  %43 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %44 = icmp eq %struct.pfr_ktable* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %47 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* @ESRCH, align 4
  store i32 %53, i32* %6, align 4
  br label %223

54:                                               ; preds = %45
  %55 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %56 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PFR_TFLAG_CONST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @EPERM, align 4
  store i32 %62, i32* %6, align 4
  br label %223

63:                                               ; preds = %54
  %64 = call %struct.pfr_ktable* @pfr_create_ktable(i32* @pfr_nulltable, i32 0, i32 0)
  store %struct.pfr_ktable* %64, %struct.pfr_ktable** %13, align 8
  %65 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %66 = icmp eq %struct.pfr_ktable* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %6, align 4
  br label %223

69:                                               ; preds = %63
  %70 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %14)
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %177, %69
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %184

75:                                               ; preds = %71
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @COPYIN(i32 %76, %struct.pfr_addr* %17, i32 16, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EFAULT, align 4
  %82 = call i32 @senderr(i32 %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = call i64 @pfr_validate_addr(%struct.pfr_addr* %17)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @senderr(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %91 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %90, %struct.pfr_addr* %17, i32 1)
  store %struct.pfr_kentry* %91, %struct.pfr_kentry** %15, align 8
  %92 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %93 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %92, %struct.pfr_addr* %17, i32 1)
  store %struct.pfr_kentry* %93, %struct.pfr_kentry** %16, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %89
  %99 = load %struct.pfr_kentry*, %struct.pfr_kentry** %16, align 8
  %100 = icmp ne %struct.pfr_kentry* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** @PFR_FB_DUPLICATE, align 8
  %103 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %17, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  br label %125

104:                                              ; preds = %98
  %105 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %106 = icmp eq %struct.pfr_kentry* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** @PFR_FB_ADDED, align 8
  %109 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %17, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  br label %124

110:                                              ; preds = %104
  %111 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %112 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %17, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i8*, i8** @PFR_FB_CONFLICT, align 8
  %119 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %17, i32 0, i32 1
  store i8* %118, i8** %119, align 8
  br label %123

120:                                              ; preds = %110
  %121 = load i8*, i8** @PFR_FB_NONE, align 8
  %122 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %17, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %124, %101
  br label %126

126:                                              ; preds = %125, %89
  %127 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %128 = icmp eq %struct.pfr_kentry* %127, null
  br i1 %128, label %129, label %162

129:                                              ; preds = %126
  %130 = load %struct.pfr_kentry*, %struct.pfr_kentry** %16, align 8
  %131 = icmp eq %struct.pfr_kentry* %130, null
  br i1 %131, label %132, label %162

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @PFR_FLAG_USERIOCTL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr* %17, i32 %138)
  store %struct.pfr_kentry* %139, %struct.pfr_kentry** %15, align 8
  %140 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %141 = icmp eq %struct.pfr_kentry* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %132
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = call i32 @senderr(i32 %143)
  br label %145

145:                                              ; preds = %142, %132
  %146 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %147 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %148 = call i64 @pfr_route_kentry(%struct.pfr_ktable* %146, %struct.pfr_kentry* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %152 = call i32 @pfr_destroy_kentry(%struct.pfr_kentry* %151)
  %153 = load i8*, i8** @PFR_FB_NONE, align 8
  %154 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %17, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  br label %161

155:                                              ; preds = %145
  %156 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %157 = load i32, i32* @pfrke_workq, align 4
  %158 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq* %14, %struct.pfr_kentry* %156, i32 %157)
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  br label %161

161:                                              ; preds = %155, %150
  br label %162

162:                                              ; preds = %161, %129, %126
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i64 @COPYOUT(%struct.pfr_addr* %17, i32 %168, i32 16, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* @EFAULT, align 4
  %174 = call i32 @senderr(i32 %173)
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175, %162
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %21, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %181, 16
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %21, align 4
  br label %71

184:                                              ; preds = %71
  %185 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %186 = call i32 @pfr_clean_node_mask(%struct.pfr_ktable* %185, %struct.pfr_kentryworkq* %14)
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @pfr_insert_kentries(%struct.pfr_ktable* %192, %struct.pfr_kentryworkq* %14, i32 %193)
  br label %197

195:                                              ; preds = %184
  %196 = call i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq* %14)
  br label %197

197:                                              ; preds = %195, %191
  %198 = load i32*, i32** %10, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %20, align 4
  %202 = load i32*, i32** %10, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %197
  %204 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %205 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %204, i32 0)
  store i32 0, i32* %6, align 4
  br label %223

206:                                              ; No predecessors!
  %207 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %208 = call i32 @pfr_clean_node_mask(%struct.pfr_ktable* %207, %struct.pfr_kentryworkq* %14)
  %209 = call i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq* %14)
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @pfr_reset_feedback(i32 %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %206
  %220 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %221 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %220, i32 0)
  %222 = load i32, i32* %19, align 4
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %219, %203, %67, %61, %52, %38
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @pf_calendar_time_second(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local %struct.pfr_ktable* @pfr_create_ktable(i32*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i64 @COPYIN(i32, %struct.pfr_addr*, i32, i32) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr*, i32) #1

declare dso_local i64 @pfr_route_kentry(%struct.pfr_ktable*, %struct.pfr_kentry*) #1

declare dso_local i32 @pfr_destroy_kentry(%struct.pfr_kentry*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq*, %struct.pfr_kentry*, i32) #1

declare dso_local i64 @COPYOUT(%struct.pfr_addr*, i32, i32, i32) #1

declare dso_local i32 @pfr_clean_node_mask(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_insert_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32) #1

declare dso_local i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_reset_feedback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
