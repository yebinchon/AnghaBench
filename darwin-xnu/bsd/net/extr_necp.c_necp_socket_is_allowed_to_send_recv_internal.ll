; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_is_allowed_to_send_recv_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_is_allowed_to_send_recv_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64, i64, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.rtentry* }
%struct.rtentry = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.necp_socket_info = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.necp_kernel_socket_policy = type { i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_UNKNOWN = common dso_local global i64 0, align 8
@NECP_MAX_NETAGENTS = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_ID_NONE = common dso_local global i64 0, align 8
@necp_kernel_socket_policies_count = common dso_local global i64 0, align 8
@INP2_WANT_APP_POLICY = common dso_local global i32 0, align 4
@necp_kernel_socket_policies_non_app_count = common dso_local global i64 0, align 8
@necp_drop_all_order = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@necp_kernel_socket_policies_gencount = common dso_local global i64 0, align 8
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_DROP = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_SOCKET_DIVERT = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_IP_TUNNEL = common dso_local global i64 0, align 8
@necp_kernel_socket_policies_map = common dso_local global i32* null, align 8
@NECP_KERNEL_POLICY_RESULT_TRIGGER_SCOPED = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_NO_TRIGGER_SCOPED = common dso_local global i64 0, align 8
@NECP_NULL_SERVICE_ID = common dso_local global i64 0, align 8
@necp_debug = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Socket Send/Recv Policy: Policy %d Allowed %d\00", align 1
@NECP_KERNEL_POLICY_ID_NO_MATCH = common dso_local global i64 0, align 8
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_IFDENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockaddr*, %struct.sockaddr*, %struct.TYPE_17__*, i64*, i64*, i64*)* @necp_socket_is_allowed_to_send_recv_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_socket_is_allowed_to_send_recv_internal(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.TYPE_17__* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.necp_socket_info, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.rtentry*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.necp_kernel_socket_policy*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %36

35:                                               ; preds = %7
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i64 [ %34, %31 ], [ 0, %35 ]
  store i64 %37, i64* %15, align 8
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %39 = bitcast %struct.TYPE_16__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 16, i1 false)
  store i64 0, i64* %21, align 8
  store %struct.rtentry* null, %struct.rtentry** %22, align 8
  %40 = load i64, i64* @IFRTYPE_FUNCTIONAL_UNKNOWN, align 8
  store i64 %40, i64* %23, align 8
  %41 = load i32, i32* @NECP_MAX_NETAGENTS, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %24, align 8
  %44 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %25, align 8
  %45 = bitcast i64* %44 to i64**
  %46 = mul nuw i64 8, %42
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i64** %45, i32 0, i32 %47)
  %49 = load i64*, i64** %12, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %53 = load i64*, i64** %12, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %36
  %55 = load i64*, i64** %14, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %59 = load i64*, i64** %14, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64*, i64** %13, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64*, i64** %13, align 8
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %67 = icmp eq %struct.inpcb* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %474

69:                                               ; preds = %65
  %70 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %71 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.rtentry*, %struct.rtentry** %72, align 8
  store %struct.rtentry* %73, %struct.rtentry** %22, align 8
  %74 = load i64, i64* @necp_kernel_socket_policies_count, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %69
  %77 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %78 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @INP2_WANT_APP_POLICY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* @necp_kernel_socket_policies_non_app_count, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83, %69
  %87 = load i64, i64* @necp_drop_all_order, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %91 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %92 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %93 = call i64 @necp_socket_bypass(%struct.sockaddr* %90, %struct.sockaddr* %91, %struct.inpcb* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %16, align 4
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %97, %95
  br label %100

100:                                              ; preds = %99, %86
  br label %474

101:                                              ; preds = %83, %76
  %102 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %103 = call i64 @necp_socket_is_connected(%struct.inpcb* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %107 = icmp eq %struct.sockaddr* %106, null
  br i1 %107, label %108, label %227

108:                                              ; preds = %105
  %109 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %110 = icmp eq %struct.sockaddr* %109, null
  br i1 %110, label %111, label %227

111:                                              ; preds = %108, %101
  %112 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %113 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %227

118:                                              ; preds = %111
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %26, align 4
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %27, align 4
  %121 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %122 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @necp_kernel_socket_policies_gencount, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %26, align 4
  br label %152

129:                                              ; preds = %118
  %130 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %131 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %129
  %137 = call i32 @lck_rw_lock_shared(i32* @necp_kernel_policy_lock)
  %138 = load %struct.rtentry*, %struct.rtentry** %22, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %140 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %141 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @necp_route_is_allowed(%struct.rtentry* %138, %struct.TYPE_17__* %139, i64 %144, i64* %23)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %27, align 4
  br label %149

149:                                              ; preds = %147, %136
  %150 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  br label %151

151:                                              ; preds = %149, %129
  br label %152

152:                                              ; preds = %151, %127
  %153 = load i32, i32* %26, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %226, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %27, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %194

158:                                              ; preds = %155
  %159 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %160 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_DROP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %194, label %166

166:                                              ; preds = %158
  %167 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %168 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SOCKET_DIVERT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %194, label %174

174:                                              ; preds = %166
  %175 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %176 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_IP_TUNNEL, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %174
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %184 = icmp ne %struct.TYPE_17__* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %187 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %15, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %185, %166, %158, %155
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %16, align 4
  br label %225

196:                                              ; preds = %185, %182, %174
  %197 = load i64*, i64** %12, align 8
  %198 = icmp ne i64* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %201 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64*, i64** %12, align 8
  store i64 %203, i64* %204, align 8
  br label %205

205:                                              ; preds = %199, %196
  %206 = load i64*, i64** %14, align 8
  %207 = icmp ne i64* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %210 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %14, align 8
  store i64 %212, i64* %213, align 8
  br label %214

214:                                              ; preds = %208, %205
  %215 = load i64*, i64** %13, align 8
  %216 = icmp ne i64* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %219 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %13, align 8
  store i64 %222, i64* %223, align 8
  br label %224

224:                                              ; preds = %217, %214
  br label %225

225:                                              ; preds = %224, %194
  br label %474

226:                                              ; preds = %152
  br label %227

227:                                              ; preds = %226, %111, %108, %105
  %228 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %229 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %230 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %231 = call i64 @necp_socket_bypass(%struct.sockaddr* %228, %struct.sockaddr* %229, %struct.inpcb* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* @TRUE, align 4
  store i32 %234, i32* %16, align 4
  br label %474

235:                                              ; preds = %227
  %236 = call i32 @lck_rw_lock_shared(i32* @necp_kernel_policy_lock)
  %237 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %238 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %239 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %240 = call i32 @necp_socket_fillout_info_locked(%struct.inpcb* %237, %struct.sockaddr* %238, %struct.sockaddr* %239, i32 0, %struct.necp_socket_info* %17)
  %241 = call i64 @necp_socket_calc_flowhash_locked(%struct.necp_socket_info* %17)
  store i64 %241, i64* %18, align 8
  %242 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %243 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %339

248:                                              ; preds = %235
  %249 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %250 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @necp_kernel_socket_policies_gencount, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %339

255:                                              ; preds = %248
  %256 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %257 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %18, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %339

262:                                              ; preds = %255
  %263 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %264 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_DROP, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %315, label %270

270:                                              ; preds = %262
  %271 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %272 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SOCKET_DIVERT, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %315, label %278

278:                                              ; preds = %270
  %279 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %280 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_IP_TUNNEL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %278
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %288 = icmp ne %struct.TYPE_17__* %287, null
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %291 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* %15, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %315, label %298

298:                                              ; preds = %289, %286, %278
  %299 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %300 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %317

305:                                              ; preds = %298
  %306 = load %struct.rtentry*, %struct.rtentry** %22, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %308 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %309 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @necp_route_is_allowed(%struct.rtentry* %306, %struct.TYPE_17__* %307, i64 %312, i64* %23)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %305, %289, %270, %262
  %316 = load i32, i32* @FALSE, align 4
  store i32 %316, i32* %16, align 4
  br label %337

317:                                              ; preds = %305, %298
  %318 = load i64*, i64** %12, align 8
  %319 = icmp ne i64* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %322 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64*, i64** %12, align 8
  store i64 %324, i64* %325, align 8
  br label %326

326:                                              ; preds = %320, %317
  %327 = load i64*, i64** %13, align 8
  %328 = icmp ne i64* %327, null
  br i1 %328, label %329, label %336

329:                                              ; preds = %326
  %330 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %331 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64*, i64** %13, align 8
  store i64 %334, i64* %335, align 8
  br label %336

336:                                              ; preds = %329, %326
  br label %337

337:                                              ; preds = %336, %315
  %338 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  br label %474

339:                                              ; preds = %255, %248, %235
  %340 = load i32*, i32** @necp_kernel_socket_policies_map, align 8
  %341 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %17, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i64 @NECP_SOCKET_MAP_APP_ID_TO_BUCKET(i32 %342)
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @NECP_MAX_NETAGENTS, align 4
  %347 = call i32 (...) @current_proc()
  %348 = load i64*, i64** %14, align 8
  %349 = call %struct.necp_kernel_socket_policy* @necp_socket_find_policy_match_with_info_locked(i32 %345, %struct.necp_socket_info* %17, i32* null, i64* %21, i64* %19, %struct.TYPE_16__* %20, i64* %44, i32* null, i32 %346, i32* null, i32 0, i32 %347, i64* %348)
  store %struct.necp_kernel_socket_policy* %349, %struct.necp_kernel_socket_policy** %28, align 8
  %350 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %351 = icmp ne %struct.necp_kernel_socket_policy* %350, null
  br i1 %351, label %352, label %453

352:                                              ; preds = %339
  %353 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %354 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_DROP, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %410, label %358

358:                                              ; preds = %352
  %359 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %360 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SOCKET_DIVERT, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %410, label %364

364:                                              ; preds = %358
  %365 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %366 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_IP_TUNNEL, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %364
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %372 = icmp ne %struct.TYPE_17__* %371, null
  br i1 %372, label %373, label %380

373:                                              ; preds = %370
  %374 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %375 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* %15, align 8
  %379 = icmp ne i64 %377, %378
  br i1 %379, label %410, label %380

380:                                              ; preds = %373, %370, %364
  %381 = load i64, i64* %19, align 8
  %382 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_TRIGGER_SCOPED, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %388, label %384

384:                                              ; preds = %380
  %385 = load i64, i64* %19, align 8
  %386 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_NO_TRIGGER_SCOPED, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %384, %380
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @NECP_NULL_SERVICE_ID, align 8
  %396 = icmp ne i64 %394, %395
  br i1 %396, label %410, label %397

397:                                              ; preds = %392, %388, %384
  %398 = load i64, i64* %21, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %397
  %401 = load %struct.rtentry*, %struct.rtentry** %22, align 8
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %403 = load i64, i64* %21, align 8
  %404 = call i32 @necp_route_is_allowed(%struct.rtentry* %401, %struct.TYPE_17__* %402, i64 %403, i64* %23)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %400, %397
  %407 = load i32, i32* @NECP_MAX_NETAGENTS, align 4
  %408 = call i32 @necp_netagents_allow_traffic(i64* %44, i32 %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %406, %400, %392, %373, %358, %352
  %411 = load i32, i32* @FALSE, align 4
  store i32 %411, i32* %16, align 4
  br label %427

412:                                              ; preds = %406
  %413 = load i64*, i64** %12, align 8
  %414 = icmp ne i64* %413, null
  br i1 %414, label %415, label %420

415:                                              ; preds = %412
  %416 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %417 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load i64*, i64** %12, align 8
  store i64 %418, i64* %419, align 8
  br label %420

420:                                              ; preds = %415, %412
  %421 = load i64*, i64** %13, align 8
  %422 = icmp ne i64* %421, null
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = load i64, i64* %21, align 8
  %425 = load i64*, i64** %13, align 8
  store i64 %424, i64* %425, align 8
  br label %426

426:                                              ; preds = %423, %420
  br label %427

427:                                              ; preds = %426, %410
  %428 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  %429 = load i32, i32* @necp_debug, align 4
  %430 = icmp sgt i32 %429, 1
  br i1 %430, label %431, label %452

431:                                              ; preds = %427
  %432 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %28, align 8
  %433 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %436 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %434, %438
  br i1 %439, label %440, label %452

440:                                              ; preds = %431
  %441 = load i32, i32* @LOG_DEBUG, align 4
  %442 = load i64*, i64** %12, align 8
  %443 = icmp ne i64* %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load i64*, i64** %12, align 8
  %446 = load i64, i64* %445, align 8
  br label %448

447:                                              ; preds = %440
  br label %448

448:                                              ; preds = %447, %444
  %449 = phi i64 [ %446, %444 ], [ 0, %447 ]
  %450 = load i32, i32* %16, align 4
  %451 = call i32 @NECPLOG(i32 %441, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %449, i32 %450)
  br label %452

452:                                              ; preds = %448, %431, %427
  br label %474

453:                                              ; preds = %339
  %454 = load i64, i64* @necp_drop_all_order, align 8
  %455 = icmp sgt i64 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = load i32, i32* @FALSE, align 4
  store i32 %457, i32* %16, align 4
  br label %471

458:                                              ; preds = %453
  %459 = load i64*, i64** %12, align 8
  %460 = icmp ne i64* %459, null
  br i1 %460, label %461, label %464

461:                                              ; preds = %458
  %462 = load i64, i64* @NECP_KERNEL_POLICY_ID_NO_MATCH, align 8
  %463 = load i64*, i64** %12, align 8
  store i64 %462, i64* %463, align 8
  br label %464

464:                                              ; preds = %461, %458
  %465 = load i64*, i64** %13, align 8
  %466 = icmp ne i64* %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %464
  %468 = load i64, i64* %21, align 8
  %469 = load i64*, i64** %13, align 8
  store i64 %468, i64* %469, align 8
  br label %470

470:                                              ; preds = %467, %464
  br label %471

471:                                              ; preds = %470, %456
  br label %472

472:                                              ; preds = %471
  %473 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  br label %474

474:                                              ; preds = %472, %452, %337, %233, %225, %100, %68
  %475 = load i32, i32* %16, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %489, label %477

477:                                              ; preds = %474
  %478 = load i64, i64* %23, align 8
  %479 = load i64, i64* @IFRTYPE_FUNCTIONAL_UNKNOWN, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %489

481:                                              ; preds = %477
  %482 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %483 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %486 = load i32, i32* @SO_FILT_HINT_IFDENIED, align 4
  %487 = or i32 %485, %486
  %488 = call i32 @soevent(i32 %484, i32 %487)
  br label %489

489:                                              ; preds = %481, %477, %474
  %490 = load i32, i32* %16, align 4
  %491 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %491)
  ret i32 %490
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64**, i32, i32) #3

declare dso_local i64 @necp_socket_bypass(%struct.sockaddr*, %struct.sockaddr*, %struct.inpcb*) #3

declare dso_local i64 @necp_socket_is_connected(%struct.inpcb*) #3

declare dso_local i32 @lck_rw_lock_shared(i32*) #3

declare dso_local i32 @necp_route_is_allowed(%struct.rtentry*, %struct.TYPE_17__*, i64, i64*) #3

declare dso_local i32 @lck_rw_done(i32*) #3

declare dso_local i32 @necp_socket_fillout_info_locked(%struct.inpcb*, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.necp_socket_info*) #3

declare dso_local i64 @necp_socket_calc_flowhash_locked(%struct.necp_socket_info*) #3

declare dso_local %struct.necp_kernel_socket_policy* @necp_socket_find_policy_match_with_info_locked(i32, %struct.necp_socket_info*, i32*, i64*, i64*, %struct.TYPE_16__*, i64*, i32*, i32, i32*, i32, i32, i64*) #3

declare dso_local i64 @NECP_SOCKET_MAP_APP_ID_TO_BUCKET(i32) #3

declare dso_local i32 @current_proc(...) #3

declare dso_local i32 @necp_netagents_allow_traffic(i64*, i32) #3

declare dso_local i32 @NECPLOG(i32, i8*, i64, i32) #3

declare dso_local i32 @soevent(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
