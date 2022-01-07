; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrtrlist_update_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrtrlist_update_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i64, i32, i32, %struct.ifnet*, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.nd_ifinfo = type { i64, i64, i32 }
%struct.timeval = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@nd_defrouter = common dso_local global i32 0, align 4
@dr_entry = common dso_local global i32 0, align 4
@NDDRF_IFSCOPE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ip6_maxifdefrouters = common dso_local global i64 0, align 8
@nd6_defrouter_genid = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: allocating defrouter %s\0A\00", align 1
@nd6_sched_timeout_want = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_defrouter* (%struct.nd_defrouter*, i64)* @defrtrlist_update_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_defrouter* @defrtrlist_update_common(%struct.nd_defrouter* %0, i64 %1) #0 {
  %3 = alloca %struct.nd_defrouter*, align 8
  %4 = alloca %struct.nd_defrouter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nd_defrouter*, align 8
  %7 = alloca %struct.nd_defrouter*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.nd_ifinfo*, align 8
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nd_defrouter*, align 8
  store %struct.nd_defrouter* %0, %struct.nd_defrouter** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %14 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %13, i32 0, i32 3
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %8, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %9, align 8
  %16 = load i32, i32* @nd6_mutex, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  %19 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %20 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %19, i32 0, i32 8
  %21 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %22 = call %struct.nd_defrouter* @defrouter_lookup(i32* %20, %struct.ifnet* %21)
  store %struct.nd_defrouter* %22, %struct.nd_defrouter** %6, align 8
  %23 = icmp ne %struct.nd_defrouter* %22, null
  br i1 %23, label %24, label %128

24:                                               ; preds = %2
  %25 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %26 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %31 = load i32, i32* @dr_entry, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* @nd_defrouter, %struct.nd_defrouter* %30, i32 %31)
  %33 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %34 = call i32 @defrtrlist_del(%struct.nd_defrouter* %33)
  %35 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %36 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %35)
  %37 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %38 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %37)
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %6, align 8
  br label %126

39:                                               ; preds = %24
  %40 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %41 = call i32 @rtpref(%struct.nd_defrouter* %40)
  store i32 %41, i32* %11, align 4
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %12, align 8
  %42 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %43 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %46 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %48 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %51 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %53 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %56 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %58 = call i32 @rtpref(%struct.nd_defrouter* %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %39
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  store %struct.nd_defrouter* %65, %struct.nd_defrouter** %3, align 8
  br label %294

66:                                               ; preds = %61, %39
  %67 = call %struct.nd_defrouter* @TAILQ_FIRST(i32* @nd_defrouter)
  store %struct.nd_defrouter* %67, %struct.nd_defrouter** %7, align 8
  br label %68

68:                                               ; preds = %96, %66
  %69 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %70 = icmp ne %struct.nd_defrouter* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %73 = call i32 @rtpref(%struct.nd_defrouter* %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %101

77:                                               ; preds = %71
  %78 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %79 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %80 = icmp ne %struct.nd_defrouter* %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %83 = call i32 @rtpref(%struct.nd_defrouter* %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.nd_defrouter*, %struct.nd_defrouter** %12, align 8
  %88 = icmp ne %struct.nd_defrouter* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.nd_defrouter*, %struct.nd_defrouter** %12, align 8
  %91 = call i32 @rtpref(%struct.nd_defrouter* %90)
  %92 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %93 = call i32 @rtpref(%struct.nd_defrouter* %92)
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %86
  br label %101

96:                                               ; preds = %89, %81, %77
  %97 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  store %struct.nd_defrouter* %97, %struct.nd_defrouter** %12, align 8
  %98 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %99 = load i32, i32* @dr_entry, align 4
  %100 = call %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter* %98, i32 %99)
  store %struct.nd_defrouter* %100, %struct.nd_defrouter** %7, align 8
  br label %68

101:                                              ; preds = %95, %76, %68
  %102 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %103 = icmp eq %struct.nd_defrouter* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i64, i64* %5, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %109 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NDDRF_IFSCOPE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  store %struct.nd_defrouter* %115, %struct.nd_defrouter** %3, align 8
  br label %294

116:                                              ; preds = %107, %101
  %117 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %118 = load i32, i32* @dr_entry, align 4
  %119 = call i32 @TAILQ_REMOVE(i32* @nd_defrouter, %struct.nd_defrouter* %117, i32 %118)
  %120 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %121 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %124 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  store %struct.nd_defrouter* %125, %struct.nd_defrouter** %7, align 8
  br label %250

126:                                              ; preds = %29
  %127 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  store %struct.nd_defrouter* %127, %struct.nd_defrouter** %3, align 8
  br label %294

128:                                              ; preds = %2
  %129 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %130 = icmp eq %struct.nd_defrouter* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @VERIFY(i32 %131)
  %133 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %134 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %3, align 8
  br label %294

138:                                              ; preds = %128
  %139 = load i32, i32* @M_WAITOK, align 4
  %140 = call %struct.nd_defrouter* @nddr_alloc(i32 %139)
  store %struct.nd_defrouter* %140, %struct.nd_defrouter** %7, align 8
  %141 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %142 = icmp eq %struct.nd_defrouter* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %3, align 8
  br label %294

144:                                              ; preds = %138
  %145 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %146 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %145)
  store %struct.nd_ifinfo* %146, %struct.nd_ifinfo** %9, align 8
  %147 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %148 = icmp ne %struct.nd_ifinfo* null, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i64, i64* @TRUE, align 8
  %151 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %152 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %150, %153
  br label %155

155:                                              ; preds = %149, %144
  %156 = phi i1 [ false, %144 ], [ %154, %149 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @VERIFY(i32 %157)
  %159 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %160 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %159, i32 0, i32 2
  %161 = call i32 @lck_mtx_lock(i32* %160)
  %162 = load i64, i64* @ip6_maxifdefrouters, align 8
  %163 = icmp sge i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %155
  %165 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %166 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ip6_maxifdefrouters, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %172 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %171, i32 0, i32 2
  %173 = call i32 @lck_mtx_unlock(i32* %172)
  %174 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %175 = call i32 @nddr_free(%struct.nd_defrouter* %174)
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %3, align 8
  br label %294

176:                                              ; preds = %164, %155
  %177 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %178 = call i32 @NDDR_ADDREF(%struct.nd_defrouter* %177)
  %179 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %180 = call i32 @NDDR_ADDREF(%struct.nd_defrouter* %179)
  %181 = load i32, i32* @nd6_defrouter_genid, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @nd6_defrouter_genid, align 4
  %183 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %184 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %188 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @VERIFY(i32 %191)
  %193 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %9, align 8
  %194 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %193, i32 0, i32 2
  %195 = call i32 @lck_mtx_unlock(i32* %194)
  %196 = load i32, i32* @LOG_INFO, align 4
  %197 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %198 = call i32 @if_name(%struct.ifnet* %197)
  %199 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %200 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %199, i32 0, i32 8
  %201 = call i32 @ip6_sprintf(i32* %200)
  %202 = call i32 @nd6log2(i32 %201)
  %203 = call i32 @getmicrotime(%struct.timeval* %10)
  %204 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %205 = call i32 @NDDR_LOCK(%struct.nd_defrouter* %204)
  %206 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %207 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %206, i32 0, i32 8
  %208 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %209 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %208, i32 0, i32 8
  %210 = call i32 @memcpy(i32* %207, i32* %209, i32 4)
  %211 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %212 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %215 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %214, i32 0, i32 7
  store i32 %213, i32* %215, align 4
  %216 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %217 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %220 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  %221 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %222 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %225 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  %226 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %227 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %230 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 8
  %231 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %234 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 4
  %235 = call i32 (...) @net_uptime()
  %236 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %237 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %239 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %238, i32 0, i32 3
  %240 = load %struct.ifnet*, %struct.ifnet** %239, align 8
  %241 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %242 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %241, i32 0, i32 3
  store %struct.ifnet* %240, %struct.ifnet** %242, align 8
  %243 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %244 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %247 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %249 = call i32 @NDDR_UNLOCK(%struct.nd_defrouter* %248)
  br label %250

250:                                              ; preds = %176, %116
  %251 = load i32, i32* @nd6_sched_timeout_want, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* @nd6_sched_timeout_want, align 4
  %253 = call %struct.nd_defrouter* @TAILQ_FIRST(i32* @nd_defrouter)
  store %struct.nd_defrouter* %253, %struct.nd_defrouter** %6, align 8
  br label %254

254:                                              ; preds = %274, %250
  %255 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %256 = icmp ne %struct.nd_defrouter* %255, null
  br i1 %256, label %257, label %278

257:                                              ; preds = %254
  %258 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %259 = call i32 @rtpref(%struct.nd_defrouter* %258)
  %260 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %261 = call i32 @rtpref(%struct.nd_defrouter* %260)
  %262 = icmp sgt i32 %259, %261
  br i1 %262, label %272, label %263

263:                                              ; preds = %257
  %264 = load i64, i64* %5, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %263
  %267 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %268 = call i32 @rtpref(%struct.nd_defrouter* %267)
  %269 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %270 = call i32 @rtpref(%struct.nd_defrouter* %269)
  %271 = icmp eq i32 %268, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266, %257
  br label %278

273:                                              ; preds = %266, %263
  br label %274

274:                                              ; preds = %273
  %275 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %276 = load i32, i32* @dr_entry, align 4
  %277 = call %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter* %275, i32 %276)
  store %struct.nd_defrouter* %277, %struct.nd_defrouter** %6, align 8
  br label %254

278:                                              ; preds = %272, %254
  %279 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %280 = icmp ne %struct.nd_defrouter* %279, null
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %283 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %284 = load i32, i32* @dr_entry, align 4
  %285 = call i32 @TAILQ_INSERT_BEFORE(%struct.nd_defrouter* %282, %struct.nd_defrouter* %283, i32 %284)
  br label %290

286:                                              ; preds = %278
  %287 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %288 = load i32, i32* @dr_entry, align 4
  %289 = call i32 @TAILQ_INSERT_TAIL(i32* @nd_defrouter, %struct.nd_defrouter* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %281
  %291 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %292 = call i32 @defrouter_select(%struct.ifnet* %291)
  %293 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  store %struct.nd_defrouter* %293, %struct.nd_defrouter** %3, align 8
  br label %294

294:                                              ; preds = %290, %170, %143, %137, %126, %114, %64
  %295 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  ret %struct.nd_defrouter* %295
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.nd_defrouter* @defrouter_lookup(i32*, %struct.ifnet*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nd_defrouter*, i32) #1

declare dso_local i32 @defrtrlist_del(%struct.nd_defrouter*) #1

declare dso_local i32 @NDDR_REMREF(%struct.nd_defrouter*) #1

declare dso_local i32 @rtpref(%struct.nd_defrouter*) #1

declare dso_local %struct.nd_defrouter* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.nd_defrouter* @nddr_alloc(i32) #1

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nddr_free(%struct.nd_defrouter*) #1

declare dso_local i32 @NDDR_ADDREF(%struct.nd_defrouter*) #1

declare dso_local i32 @nd6log2(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @ip6_sprintf(i32*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @NDDR_LOCK(%struct.nd_defrouter*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @NDDR_UNLOCK(%struct.nd_defrouter*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.nd_defrouter*, %struct.nd_defrouter*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nd_defrouter*, i32) #1

declare dso_local i32 @defrouter_select(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
