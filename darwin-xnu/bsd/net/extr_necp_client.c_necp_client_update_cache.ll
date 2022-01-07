; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_update_cache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i32 }
%struct.necp_client_action_args = type { i64, i32, i32, i64 }
%struct.necp_client = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { i64, i64, i32, i64, i64, i64 }
%struct.necp_client_flow_registration = type { i32 }
%struct.necp_client_flow = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%union.sockaddr_in_4_6 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"necp_client_update_cache copyin client_id error (%d)\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"necp_client_update_cache no flow error (%d)\00", align 1
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"necp_client_update_cache copyin cache buffer error (%d)\00", align 1
@NECP_CLIENT_CACHE_TYPE_ECN = common dso_local global i64 0, align 8
@NECP_CLIENT_CACHE_TYPE_ECN_VER_1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"necp_client_update_cache copyin ecn cache buffer error (%d)\00", align 1
@NECP_CLIENT_CACHE_TYPE_TFO = common dso_local global i64 0, align 8
@NECP_CLIENT_CACHE_TYPE_TFO_VER_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"necp_client_update_cache copyin tfo cache buffer error (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*)* @necp_client_update_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_update_cache(%struct.necp_fd_data* %0, %struct.necp_client_action_args* %1, i32* %2) #0 {
  %4 = alloca %struct.necp_fd_data*, align 8
  %5 = alloca %struct.necp_client_action_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.necp_client*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.necp_client_flow_registration*, align 8
  %11 = alloca %struct.necp_client_flow*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %4, align 8
  store %struct.necp_client_action_args* %1, %struct.necp_client_action_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.necp_client* null, %struct.necp_client** %8, align 8
  %15 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %16 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %21 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %7, align 4
  br label %274

27:                                               ; preds = %19
  %28 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %29 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = call i32 @copyin(i64 %30, %struct.TYPE_21__* %31, i32 8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @NECPLOG(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %274

39:                                               ; preds = %27
  %40 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %41 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %40)
  %42 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %44 = call %struct.necp_client* @necp_client_fd_find_client_and_lock(%struct.necp_fd_data* %42, %struct.TYPE_21__* %43)
  store %struct.necp_client* %44, %struct.necp_client** %8, align 8
  %45 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %46 = icmp eq %struct.necp_client* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %49 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %48)
  %50 = load i32, i32* @ENOENT, align 4
  store i32 %50, i32* %7, align 4
  br label %274

51:                                               ; preds = %39
  %52 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = call %struct.necp_client_flow_registration* @necp_client_find_flow(%struct.necp_client* %52, %struct.TYPE_21__* %53)
  store %struct.necp_client_flow_registration* %54, %struct.necp_client_flow_registration** %10, align 8
  %55 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %10, align 8
  %56 = icmp eq %struct.necp_client_flow_registration* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %59 = call i32 @NECP_CLIENT_UNLOCK(%struct.necp_client* %58)
  %60 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %61 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %60)
  %62 = load i32, i32* @ENOENT, align 4
  store i32 %62, i32* %7, align 4
  br label %274

63:                                               ; preds = %51
  %64 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %65 = call i32 @NECP_CLIENT_ROUTE_LOCK(%struct.necp_client* %64)
  %66 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %10, align 8
  %67 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %66, i32 0, i32 0
  %68 = call %struct.necp_client_flow* @LIST_FIRST(i32* %67)
  store %struct.necp_client_flow* %68, %struct.necp_client_flow** %11, align 8
  %69 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %70 = icmp eq %struct.necp_client_flow* %69, null
  br i1 %70, label %103, label %71

71:                                               ; preds = %63
  %72 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %73 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AF_INET, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %81 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AF_INET6, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %89 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AF_INET, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %97 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AF_INET6, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %95, %79, %63
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @LOG_ERR, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @NECPLOG(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %267

108:                                              ; preds = %95, %87
  %109 = call i32 @memset(%struct.TYPE_21__* %12, i32 0, i32 48)
  %110 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %111 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ne i64 %113, 48
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %117 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @USER_ADDR_NULL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115, %108
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %7, align 4
  br label %267

123:                                              ; preds = %115
  %124 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %125 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @copyin(i64 %126, %struct.TYPE_21__* %12, i32 48)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @NECPLOG(i32 %131, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %267

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @NECP_CLIENT_CACHE_TYPE_ECN, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %197

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NECP_CLIENT_CACHE_TYPE_ECN_VER_1, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %197

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %147, 48
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @USER_ADDR_NULL, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149, %144
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %7, align 4
  br label %267

156:                                              ; preds = %149
  %157 = call i32 @memset(%struct.TYPE_21__* %13, i32 0, i32 48)
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @copyin(i64 %159, %struct.TYPE_21__* %13, i32 48)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @LOG_ERR, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @NECPLOG(i32 %164, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %267

167:                                              ; preds = %156
  %168 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %169 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %168, i32 0, i32 0
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = icmp ne %struct.TYPE_18__* %170, null
  br i1 %171, label %172, label %196

172:                                              ; preds = %167
  %173 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %174 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %173, i32 0, i32 0
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %181 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 5
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %184, %179
  %187 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %188 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %187, i32 0, i32 0
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %193 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %192, i32 0, i32 1
  %194 = bitcast %struct.TYPE_19__* %193 to %union.sockaddr_in_4_6*
  %195 = call i32 @tcp_heuristics_ecn_update(%struct.TYPE_21__* %13, i32* %191, %union.sockaddr_in_4_6* %194)
  br label %196

196:                                              ; preds = %186, %172, %167
  br label %266

197:                                              ; preds = %139, %134
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NECP_CLIENT_CACHE_TYPE_TFO, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %263

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NECP_CLIENT_CACHE_TYPE_TFO_VER_1, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %263

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = icmp ne i64 %210, 48
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @USER_ADDR_NULL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %212, %207
  %218 = load i32, i32* @EINVAL, align 4
  store i32 %218, i32* %7, align 4
  br label %267

219:                                              ; preds = %212
  %220 = call i32 @memset(%struct.TYPE_21__* %14, i32 0, i32 48)
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @copyin(i64 %222, %struct.TYPE_21__* %14, i32 48)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load i32, i32* @LOG_ERR, align 4
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @NECPLOG(i32 %227, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  br label %267

230:                                              ; preds = %219
  %231 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %232 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %231, i32 0, i32 0
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = icmp ne %struct.TYPE_18__* %233, null
  br i1 %234, label %235, label %262

235:                                              ; preds = %230
  %236 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %237 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %236, i32 0, i32 0
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %262

242:                                              ; preds = %235
  %243 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %244 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 4
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %247, %242
  %250 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %251 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %250, i32 0, i32 0
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %256 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %255, i32 0, i32 1
  %257 = bitcast %struct.TYPE_19__* %256 to %union.sockaddr_in_4_6*
  %258 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %259 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %258, i32 0, i32 0
  %260 = bitcast %struct.TYPE_20__* %259 to %union.sockaddr_in_4_6*
  %261 = call i32 @tcp_heuristics_tfo_update(%struct.TYPE_21__* %14, i32* %254, %union.sockaddr_in_4_6* %257, %union.sockaddr_in_4_6* %260)
  br label %262

262:                                              ; preds = %249, %235, %230
  br label %265

263:                                              ; preds = %202, %197
  %264 = load i32, i32* @EINVAL, align 4
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %263, %262
  br label %266

266:                                              ; preds = %265, %196
  br label %267

267:                                              ; preds = %266, %226, %217, %163, %154, %130, %121, %103
  %268 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %269 = call i32 @NECP_CLIENT_ROUTE_UNLOCK(%struct.necp_client* %268)
  %270 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %271 = call i32 @NECP_CLIENT_UNLOCK(%struct.necp_client* %270)
  %272 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %273 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %272)
  br label %274

274:                                              ; preds = %267, %57, %47, %35, %25
  %275 = load i32, i32* %7, align 4
  %276 = load i32*, i32** %6, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* %7, align 4
  ret i32 %277
}

declare dso_local i32 @copyin(i64, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client* @necp_client_fd_find_client_and_lock(%struct.necp_fd_data*, %struct.TYPE_21__*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client_flow_registration* @necp_client_find_flow(%struct.necp_client*, %struct.TYPE_21__*) #1

declare dso_local i32 @NECP_CLIENT_UNLOCK(%struct.necp_client*) #1

declare dso_local i32 @NECP_CLIENT_ROUTE_LOCK(%struct.necp_client*) #1

declare dso_local %struct.necp_client_flow* @LIST_FIRST(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @tcp_heuristics_ecn_update(%struct.TYPE_21__*, i32*, %union.sockaddr_in_4_6*) #1

declare dso_local i32 @tcp_heuristics_tfo_update(%struct.TYPE_21__*, i32*, %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6*) #1

declare dso_local i32 @NECP_CLIENT_ROUTE_UNLOCK(%struct.necp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
