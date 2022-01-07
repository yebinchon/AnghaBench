; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_inc_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_inc_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tcp_cache_key_src = type { i32, i32 }
%struct.tcp_heuristics_head = type { i32 }
%struct.tcp_heuristic = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8* }

@TCPCACHE_F_TFO_DATA = common dso_local global i32 0, align 4
@TCP_CACHE_OVERFLOW_PROTECT = common dso_local global i64 0, align 8
@TFO_MAX_COOKIE_LOSS = common dso_local global i64 0, align 8
@TCPCACHE_F_TFO_REQ = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_DATA_RST = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_REQ_RST = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN = common dso_local global i32 0, align 4
@ECN_MAX_SYN_LOSS = common dso_local global i64 0, align 8
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ecn_fallback_synloss = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i8* null, align 8
@tcp_ecn_timeout = common dso_local global i32 0, align 4
@TCPCACHE_F_MPTCP = common dso_local global i32 0, align 4
@MPTCP_MAX_SYN_LOSS = common dso_local global i64 0, align 8
@TCPCACHE_F_ECN_DROPRST = common dso_local global i32 0, align 4
@ECN_MAX_DROPRST = common dso_local global i64 0, align 8
@ecn_fallback_droprst = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN_DROPRXMT = common dso_local global i32 0, align 4
@ECN_MAX_DROPRXMT = common dso_local global i64 0, align 8
@ecn_fallback_droprxmt = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN_SYNRST = common dso_local global i32 0, align 4
@ECN_MAX_SYNRST = common dso_local global i64 0, align 8
@ecn_fallback_synrst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_cache_key_src*, i32)* @tcp_heuristic_inc_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_heuristics_head*, align 8
  %6 = alloca %struct.tcp_heuristic*, align 8
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %8 = call %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src* %7, i32 1, %struct.tcp_heuristics_head** %5)
  store %struct.tcp_heuristic* %8, %struct.tcp_heuristic** %6, align 8
  %9 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %10 = icmp eq %struct.tcp_heuristic* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %330

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TCPCACHE_F_TFO_DATA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %19 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %29 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TFO_MAX_COOKIE_LOSS, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %35 = call i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic* %34)
  br label %36

36:                                               ; preds = %33, %23
  br label %37

37:                                               ; preds = %36, %17, %12
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TCPCACHE_F_TFO_REQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %44 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %50 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %54 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TFO_MAX_COOKIE_LOSS, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %60 = call i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic* %59)
  br label %61

61:                                               ; preds = %58, %48
  br label %62

62:                                               ; preds = %61, %42, %37
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TCPCACHE_F_TFO_DATA_RST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %69 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %75 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %79 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TFO_MAX_COOKIE_LOSS, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %85 = call i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic* %84)
  br label %86

86:                                               ; preds = %83, %73
  br label %87

87:                                               ; preds = %86, %67, %62
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %94 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %100 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %104 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TFO_MAX_COOKIE_LOSS, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %110 = call i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic* %109)
  br label %111

111:                                              ; preds = %108, %98
  br label %112

112:                                              ; preds = %111, %92, %87
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @TCPCACHE_F_ECN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %112
  %118 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %119 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %117
  %124 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %125 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %129 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ECN_MAX_SYN_LOSS, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %123
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %136 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %137 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %140 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ecn_fallback_synloss, align 4
  %143 = call i32 @TCP_CACHE_INC_IFNET_STAT(i32 %138, i32 %141, i32 %142)
  %144 = load i8*, i8** @tcp_now, align 8
  %145 = load i32, i32* @tcp_ecn_timeout, align 4
  %146 = call i64 @tcp_min_to_hz(i32 %145)
  %147 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %148 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ECN_MAX_SYN_LOSS, align 8
  %151 = sub nsw i64 %149, %150
  %152 = shl i64 %146, %151
  %153 = getelementptr i8, i8* %144, i64 %152
  %154 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %155 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %154, i32 0, i32 9
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %133, %123
  br label %157

157:                                              ; preds = %156, %117, %112
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @TCPCACHE_F_MPTCP, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %157
  %163 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %164 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %192

168:                                              ; preds = %162
  %169 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %170 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %174 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @MPTCP_MAX_SYN_LOSS, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %168
  %179 = load i8*, i8** @tcp_now, align 8
  %180 = load i32, i32* @tcp_ecn_timeout, align 4
  %181 = call i64 @tcp_min_to_hz(i32 %180)
  %182 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %183 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MPTCP_MAX_SYN_LOSS, align 8
  %186 = sub nsw i64 %184, %185
  %187 = shl i64 %181, %186
  %188 = getelementptr i8, i8* %179, i64 %187
  %189 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %190 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %189, i32 0, i32 10
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %178, %168
  br label %192

192:                                              ; preds = %191, %162, %157
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @TCPCACHE_F_ECN_DROPRST, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %237

197:                                              ; preds = %192
  %198 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %199 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %237

203:                                              ; preds = %197
  %204 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %205 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %209 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @ECN_MAX_DROPRST, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %236

213:                                              ; preds = %203
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %216 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %217 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %220 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ecn_fallback_droprst, align 4
  %223 = call i32 @TCP_CACHE_INC_IFNET_STAT(i32 %218, i32 %221, i32 %222)
  %224 = load i8*, i8** @tcp_now, align 8
  %225 = load i32, i32* @tcp_ecn_timeout, align 4
  %226 = call i64 @tcp_min_to_hz(i32 %225)
  %227 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %228 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @ECN_MAX_DROPRST, align 8
  %231 = sub nsw i64 %229, %230
  %232 = shl i64 %226, %231
  %233 = getelementptr i8, i8* %224, i64 %232
  %234 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %235 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %234, i32 0, i32 9
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %213, %203
  br label %237

237:                                              ; preds = %236, %197, %192
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @TCPCACHE_F_ECN_DROPRXMT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %282

242:                                              ; preds = %237
  %243 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %244 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %243, i32 0, i32 7
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %248, label %282

248:                                              ; preds = %242
  %249 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %250 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %250, align 8
  %253 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %254 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @ECN_MAX_DROPRXMT, align 8
  %257 = icmp sge i64 %255, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %248
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %261 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %262 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %265 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @ecn_fallback_droprxmt, align 4
  %268 = call i32 @TCP_CACHE_INC_IFNET_STAT(i32 %263, i32 %266, i32 %267)
  %269 = load i8*, i8** @tcp_now, align 8
  %270 = load i32, i32* @tcp_ecn_timeout, align 4
  %271 = call i64 @tcp_min_to_hz(i32 %270)
  %272 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %273 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @ECN_MAX_DROPRXMT, align 8
  %276 = sub nsw i64 %274, %275
  %277 = shl i64 %271, %276
  %278 = getelementptr i8, i8* %269, i64 %277
  %279 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %280 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %279, i32 0, i32 9
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %258, %248
  br label %282

282:                                              ; preds = %281, %242, %237
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @TCPCACHE_F_ECN_SYNRST, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %327

287:                                              ; preds = %282
  %288 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %289 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %288, i32 0, i32 8
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @TCP_CACHE_OVERFLOW_PROTECT, align 8
  %292 = icmp slt i64 %290, %291
  br i1 %292, label %293, label %327

293:                                              ; preds = %287
  %294 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %295 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %294, i32 0, i32 8
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %295, align 8
  %298 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %299 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %298, i32 0, i32 8
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @ECN_MAX_SYNRST, align 8
  %302 = icmp sge i64 %300, %301
  br i1 %302, label %303, label %326

303:                                              ; preds = %293
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %306 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %307 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %310 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @ecn_fallback_synrst, align 4
  %313 = call i32 @TCP_CACHE_INC_IFNET_STAT(i32 %308, i32 %311, i32 %312)
  %314 = load i8*, i8** @tcp_now, align 8
  %315 = load i32, i32* @tcp_ecn_timeout, align 4
  %316 = call i64 @tcp_min_to_hz(i32 %315)
  %317 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %318 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %317, i32 0, i32 8
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @ECN_MAX_SYNRST, align 8
  %321 = sub nsw i64 %319, %320
  %322 = shl i64 %316, %321
  %323 = getelementptr i8, i8* %314, i64 %322
  %324 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %325 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %324, i32 0, i32 9
  store i8* %323, i8** %325, align 8
  br label %326

326:                                              ; preds = %303, %293
  br label %327

327:                                              ; preds = %326, %287, %282
  %328 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %5, align 8
  %329 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %328)
  br label %330

330:                                              ; preds = %327, %11
  ret void
}

declare dso_local %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_heuristics_head**) #1

declare dso_local i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic*) #1

declare dso_local i32 @TCP_CACHE_INC_IFNET_STAT(i32, i32, i32) #1

declare dso_local i64 @tcp_min_to_hz(i32) #1

declare dso_local i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
