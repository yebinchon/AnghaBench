; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_pcbsetport.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_pcbsetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.inpcb = type { i32, i32, i64, i32*, i8*, %struct.socket*, %struct.inpcbinfo* }
%struct.socket = type { i32 }
%struct.inpcbinfo = type { i64, i64, i64, i32 }
%struct.proc = type { i32 }

@INP2_INHASHLIST = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@INPLOOKUP_WILDCARD = common dso_local global i32 0, align 4
@INP_HIGHPORT = common dso_local global i32 0, align 4
@ipport_hifirstauto = common dso_local global i64 0, align 8
@ipport_hilastauto = common dso_local global i64 0, align 8
@INP_LOWPORT = common dso_local global i32 0, align 4
@PRIV_NETINET_RESERVEDPORT = common dso_local global i32 0, align 4
@ipport_lowfirstauto = common dso_local global i64 0, align 8
@ipport_lowlastauto = common dso_local global i64 0, align 8
@ipport_firstauto = common dso_local global i64 0, align 8
@ipport_lastauto = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@in6addr_any = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@INP_ANONPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pcbsetport(%struct.in6_addr* %0, %struct.inpcb* %1, %struct.proc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.inpcbinfo*, align 8
  %21 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %6, align 8
  store %struct.inpcb* %1, %struct.inpcb** %7, align 8
  store %struct.proc* %2, %struct.proc** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 5
  %24 = load %struct.socket*, %struct.socket** %23, align 8
  store %struct.socket* %24, %struct.socket** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 6
  %27 = load %struct.inpcbinfo*, %struct.inpcbinfo** %26, align 8
  store %struct.inpcbinfo* %27, %struct.inpcbinfo** %20, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %4
  %31 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %32 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @lck_rw_try_lock_exclusive(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %30
  %37 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 5
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  %40 = call i32 @socket_unlock(%struct.socket* %39, i32 0)
  %41 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %42 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lck_rw_lock_exclusive(i32 %43)
  %45 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 5
  %47 = load %struct.socket*, %struct.socket** %46, align 8
  %48 = call i32 @socket_lock(%struct.socket* %47, i32 0)
  br label %49

49:                                               ; preds = %36, %30
  %50 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %56 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @INP2_INHASHLIST, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @VERIFY(i32 %59)
  %61 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %62 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @lck_rw_done(i32 %63)
  store i32 0, i32* %5, align 4
  br label %259

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %4
  %67 = load %struct.socket*, %struct.socket** %10, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SO_REUSEADDR, align 4
  %71 = load i32, i32* @SO_REUSEPORT, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @INPLOOKUP_WILDCARD, align 4
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %75, %66
  %78 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @INP_HIGHPORT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i64, i64* @ipport_hifirstauto, align 8
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* @ipport_hilastauto, align 8
  store i64 %86, i64* %13, align 8
  %87 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %88 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %87, i32 0, i32 0
  store i64* %88, i64** %14, align 8
  br label %126

89:                                               ; preds = %77
  %90 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %91 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @INP_LOWPORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %89
  %97 = load %struct.proc*, %struct.proc** %8, align 8
  %98 = call i32 @kauth_cred_proc_ref(%struct.proc* %97)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* @PRIV_NETINET_RESERVEDPORT, align 4
  %101 = call i32 @priv_check_cred(i32 %99, i32 %100, i32 0)
  store i32 %101, i32* %16, align 4
  %102 = call i32 @kauth_cred_unref(i32* %21)
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %110 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @lck_rw_done(i32 %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %5, align 4
  br label %259

115:                                              ; preds = %96
  %116 = load i64, i64* @ipport_lowfirstauto, align 8
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* @ipport_lowlastauto, align 8
  store i64 %117, i64* %13, align 8
  %118 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %119 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %118, i32 0, i32 1
  store i64* %119, i64** %14, align 8
  br label %125

120:                                              ; preds = %89
  %121 = load i64, i64* @ipport_firstauto, align 8
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* @ipport_lastauto, align 8
  store i64 %122, i64* %13, align 8
  %123 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %124 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %123, i32 0, i32 2
  store i64* %124, i64** %14, align 8
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %84
  store i32 0, i32* %19, align 4
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = sub nsw i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %15, align 4
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %18, align 8
  br label %142

136:                                              ; preds = %126
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %12, align 8
  %139 = sub nsw i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %15, align 4
  %141 = load i64, i64* @FALSE, align 8
  store i64 %141, i64* %18, align 8
  br label %142

142:                                              ; preds = %136, %130
  br label %143

143:                                              ; preds = %211, %142
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %15, align 4
  %146 = icmp slt i32 %144, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i8*, i8** @in6addr_any, align 8
  %149 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %150 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  %151 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %152 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %151, i32 0, i32 3
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %147
  %156 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %157 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @lck_rw_done(i32 %158)
  br label %160

160:                                              ; preds = %155, %147
  %161 = load i32, i32* @EAGAIN, align 4
  store i32 %161, i32* %5, align 4
  br label %259

162:                                              ; preds = %143
  %163 = load i64, i64* %18, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %162
  %166 = load i64*, i64** %14, align 8
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, -1
  store i64 %168, i64* %166, align 8
  %169 = load i64*, i64** %14, align 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %165
  %174 = load i64*, i64** %14, align 8
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %173, %165
  %179 = load i64, i64* %12, align 8
  %180 = load i64*, i64** %14, align 8
  store i64 %179, i64* %180, align 8
  br label %181

181:                                              ; preds = %178, %173
  br label %199

182:                                              ; preds = %162
  %183 = load i64*, i64** %14, align 8
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = load i64*, i64** %14, align 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %12, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %182
  %191 = load i64*, i64** %14, align 8
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %13, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190, %182
  %196 = load i64, i64* %12, align 8
  %197 = load i64*, i64** %14, align 8
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %195, %190
  br label %199

199:                                              ; preds = %198, %181
  %200 = load i64*, i64** %14, align 8
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @htons(i64 %201)
  store i64 %202, i64* %11, align 8
  %203 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %204 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %205 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %204, i32 0, i32 4
  %206 = load i64, i64* %11, align 8
  %207 = load i32, i32* %17, align 4
  %208 = call i32* @in6_pcblookup_local(%struct.inpcbinfo* %203, i8** %205, i64 %206, i32 %207)
  %209 = icmp eq i32* %208, null
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %19, align 4
  br label %211

211:                                              ; preds = %199
  %212 = load i32, i32* %19, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  br i1 %214, label %143, label %215

215:                                              ; preds = %211
  %216 = load i64, i64* %11, align 8
  %217 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %218 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  %219 = load i32, i32* @INP_ANONPORT, align 4
  %220 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %221 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %225 = call i64 @in_pcbinshash(%struct.inpcb* %224, i32 1)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %215
  %228 = load i8*, i8** @in6addr_any, align 8
  %229 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %230 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %229, i32 0, i32 4
  store i8* %228, i8** %230, align 8
  %231 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %232 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %231, i32 0, i32 3
  store i32* null, i32** %232, align 8
  %233 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %234 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %233, i32 0, i32 2
  store i64 0, i64* %234, align 8
  %235 = load i32, i32* @INP_ANONPORT, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %238 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %227
  %244 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %245 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @lck_rw_done(i32 %246)
  br label %248

248:                                              ; preds = %243, %227
  %249 = load i32, i32* @EAGAIN, align 4
  store i32 %249, i32* %5, align 4
  br label %259

250:                                              ; preds = %215
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = load %struct.inpcbinfo*, %struct.inpcbinfo** %20, align 8
  %255 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @lck_rw_done(i32 %256)
  br label %258

258:                                              ; preds = %253, %250
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %258, %248, %160, %113, %54
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32* @in6_pcblookup_local(%struct.inpcbinfo*, i8**, i64, i32) #1

declare dso_local i64 @in_pcbinshash(%struct.inpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
