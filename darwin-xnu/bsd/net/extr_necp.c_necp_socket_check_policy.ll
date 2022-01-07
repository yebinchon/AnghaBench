; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_check_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_check_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_socket_policy = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%union.necp_sockaddr_union = type { i32 }
%struct.necp_client_parameter_netagent_type = type { i32, i32 }
%struct.substring = type { i32 }
%struct.sockaddr = type { i32 }

@NECP_KERNEL_CONDITION_ALL_INTERFACES = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_BOUND_INTERFACE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REAL_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ENTITLEMENT = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT = common dso_local global i32 0, align 4
@necp_boolean_state_false = common dso_local global i64 0, align 8
@necp_boolean_state_unknown = common dso_local global i64 0, align 8
@necp_boolean_state_true = common dso_local global i64 0, align 8
@NECP_KERNEL_CONDITION_DOMAIN = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ACCOUNT_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_UID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PROTOCOL = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_AGENT_TYPE = common dso_local global i32 0, align 4
@NETAGENT_DOMAINSIZE = common dso_local global i32 0, align 4
@NETAGENT_TYPESIZE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_PREFIX = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_kernel_socket_policy*, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, %union.necp_sockaddr_union*, %union.necp_sockaddr_union*, %struct.necp_client_parameter_netagent_type*, i64, i32*)* @necp_socket_check_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_socket_check_policy(%struct.necp_kernel_socket_policy* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, %union.necp_sockaddr_union* %12, %union.necp_sockaddr_union* %13, %struct.necp_client_parameter_netagent_type* %14, i64 %15, i32* %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.substring, align 4
  %20 = alloca %struct.necp_kernel_socket_policy*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %union.necp_sockaddr_union*, align 8
  %32 = alloca %union.necp_sockaddr_union*, align 8
  %33 = alloca %struct.necp_client_parameter_netagent_type*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca %struct.necp_client_parameter_netagent_type*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = getelementptr inbounds %struct.substring, %struct.substring* %19, i32 0, i32 0
  store i32 %5, i32* %46, align 4
  store %struct.necp_kernel_socket_policy* %0, %struct.necp_kernel_socket_policy** %20, align 8
  store i64 %1, i64* %21, align 8
  store i64 %2, i64* %22, align 8
  store i64 %3, i64* %23, align 8
  store i64 %4, i64* %24, align 8
  store i32 %6, i32* %25, align 4
  store i64 %7, i64* %26, align 8
  store i64 %8, i64* %27, align 8
  store i64 %9, i64* %28, align 8
  store i64 %10, i64* %29, align 8
  store i64 %11, i64* %30, align 8
  store %union.necp_sockaddr_union* %12, %union.necp_sockaddr_union** %31, align 8
  store %union.necp_sockaddr_union* %13, %union.necp_sockaddr_union** %32, align 8
  store %struct.necp_client_parameter_netagent_type* %14, %struct.necp_client_parameter_netagent_type** %33, align 8
  store i64 %15, i64* %34, align 8
  store i32* %16, i32** %35, align 8
  %47 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %48 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NECP_KERNEL_CONDITION_ALL_INTERFACES, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %102, label %53

53:                                               ; preds = %17
  %54 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %55 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NECP_KERNEL_CONDITION_BOUND_INTERFACE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %53
  %61 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %62 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %61, i32 0, i32 20
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %67 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %66, i32 0, i32 20
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  br label %72

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i64 [ %70, %65 ], [ 0, %71 ]
  store i64 %73, i64* %36, align 8
  %74 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %75 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NECP_KERNEL_CONDITION_BOUND_INTERFACE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i64, i64* %28, align 8
  %82 = load i64, i64* %36, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %18, align 4
  br label %690

86:                                               ; preds = %80
  br label %94

87:                                               ; preds = %72
  %88 = load i64, i64* %28, align 8
  %89 = load i64, i64* %36, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %18, align 4
  br label %690

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %86
  br label %101

95:                                               ; preds = %53
  %96 = load i64, i64* %28, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %18, align 4
  br label %690

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %17
  %103 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %104 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %18, align 4
  br label %690

109:                                              ; preds = %102
  %110 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %111 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NECP_KERNEL_CONDITION_APP_ID, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %109
  %117 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %118 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NECP_KERNEL_CONDITION_APP_ID, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load i64, i64* %21, align 8
  %125 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %126 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %18, align 4
  br label %690

131:                                              ; preds = %123
  br label %141

132:                                              ; preds = %116
  %133 = load i64, i64* %21, align 8
  %134 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %135 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %18, align 4
  br label %690

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %131
  br label %142

142:                                              ; preds = %141, %109
  %143 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %144 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @NECP_KERNEL_CONDITION_REAL_APP_ID, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %142
  %150 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %151 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @NECP_KERNEL_CONDITION_REAL_APP_ID, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load i64, i64* %22, align 8
  %158 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %159 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %18, align 4
  br label %690

164:                                              ; preds = %156
  br label %174

165:                                              ; preds = %149
  %166 = load i64, i64* %22, align 8
  %167 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %168 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %18, align 4
  br label %690

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %164
  br label %175

175:                                              ; preds = %174, %142
  %176 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %177 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @NECP_KERNEL_CONDITION_ENTITLEMENT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i64, i64* %23, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* @FALSE, align 4
  store i32 %186, i32* %18, align 4
  br label %690

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %187, %175
  %189 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %190 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %244

195:                                              ; preds = %188
  %196 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %197 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @necp_boolean_state_false, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %18, align 4
  br label %690

203:                                              ; preds = %195
  %204 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %205 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @necp_boolean_state_unknown, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %242

209:                                              ; preds = %203
  %210 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %211 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %210, i32 0, i32 19
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %241

214:                                              ; preds = %209
  %215 = load i32*, i32** %35, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, i32* @FALSE, align 4
  store i32 %218, i32* %18, align 4
  br label %690

219:                                              ; preds = %214
  %220 = load i32*, i32** %35, align 8
  %221 = call i32* @proc_task(i32* %220)
  store i32* %221, i32** %37, align 8
  %222 = load i32*, i32** %37, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %231, label %224

224:                                              ; preds = %219
  %225 = load i32*, i32** %37, align 8
  %226 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %227 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %226, i32 0, i32 19
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @IOTaskHasEntitlement(i32* %225, i32* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %224, %219
  %232 = load i64, i64* @necp_boolean_state_false, align 8
  %233 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %234 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %233, i32 0, i32 4
  store i64 %232, i64* %234, align 8
  %235 = load i32, i32* @FALSE, align 4
  store i32 %235, i32* %18, align 4
  br label %690

236:                                              ; preds = %224
  %237 = load i64, i64* @necp_boolean_state_true, align 8
  %238 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %239 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %238, i32 0, i32 4
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %209
  br label %242

242:                                              ; preds = %241, %203
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243, %188
  %245 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %246 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @NECP_KERNEL_CONDITION_DOMAIN, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %281

251:                                              ; preds = %244
  %252 = load i32, i32* %25, align 4
  %253 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %254 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %253, i32 0, i32 18
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %257 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %256, i32 0, i32 17
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.substring, %struct.substring* %19, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @necp_hostname_matches_domain(i32 %260, i32 %252, i32 %255, i32 %258)
  store i32 %261, i32* %38, align 4
  %262 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %263 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @NECP_KERNEL_CONDITION_DOMAIN, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %251
  %269 = load i32, i32* %38, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* @FALSE, align 4
  store i32 %272, i32* %18, align 4
  br label %690

273:                                              ; preds = %268
  br label %280

274:                                              ; preds = %251
  %275 = load i32, i32* %38, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* @FALSE, align 4
  store i32 %278, i32* %18, align 4
  br label %690

279:                                              ; preds = %274
  br label %280

280:                                              ; preds = %279, %273
  br label %281

281:                                              ; preds = %280, %244
  %282 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %283 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @NECP_KERNEL_CONDITION_ACCOUNT_ID, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %314

288:                                              ; preds = %281
  %289 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %290 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @NECP_KERNEL_CONDITION_ACCOUNT_ID, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %288
  %296 = load i64, i64* %24, align 8
  %297 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %298 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = icmp eq i64 %296, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i32, i32* @FALSE, align 4
  store i32 %302, i32* %18, align 4
  br label %690

303:                                              ; preds = %295
  br label %313

304:                                              ; preds = %288
  %305 = load i64, i64* %24, align 8
  %306 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %307 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %305, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load i32, i32* @FALSE, align 4
  store i32 %311, i32* %18, align 4
  br label %690

312:                                              ; preds = %304
  br label %313

313:                                              ; preds = %312, %303
  br label %314

314:                                              ; preds = %313, %281
  %315 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %316 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @NECP_KERNEL_CONDITION_PID, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %347

321:                                              ; preds = %314
  %322 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %323 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @NECP_KERNEL_CONDITION_PID, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %337

328:                                              ; preds = %321
  %329 = load i64, i64* %26, align 8
  %330 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %331 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %330, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %329, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %328
  %335 = load i32, i32* @FALSE, align 4
  store i32 %335, i32* %18, align 4
  br label %690

336:                                              ; preds = %328
  br label %346

337:                                              ; preds = %321
  %338 = load i64, i64* %26, align 8
  %339 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %340 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %338, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %337
  %344 = load i32, i32* @FALSE, align 4
  store i32 %344, i32* %18, align 4
  br label %690

345:                                              ; preds = %337
  br label %346

346:                                              ; preds = %345, %336
  br label %347

347:                                              ; preds = %346, %314
  %348 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %349 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @NECP_KERNEL_CONDITION_UID, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %380

354:                                              ; preds = %347
  %355 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %356 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @NECP_KERNEL_CONDITION_UID, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %354
  %362 = load i64, i64* %27, align 8
  %363 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %364 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %363, i32 0, i32 7
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %362, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %361
  %368 = load i32, i32* @FALSE, align 4
  store i32 %368, i32* %18, align 4
  br label %690

369:                                              ; preds = %361
  br label %379

370:                                              ; preds = %354
  %371 = load i64, i64* %27, align 8
  %372 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %373 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %372, i32 0, i32 7
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %371, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = load i32, i32* @FALSE, align 4
  store i32 %377, i32* %18, align 4
  br label %690

378:                                              ; preds = %370
  br label %379

379:                                              ; preds = %378, %369
  br label %380

380:                                              ; preds = %379, %347
  %381 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %382 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @NECP_KERNEL_CONDITION_TRAFFIC_CLASS, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %429

387:                                              ; preds = %380
  %388 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %389 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @NECP_KERNEL_CONDITION_TRAFFIC_CLASS, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %387
  %395 = load i64, i64* %29, align 8
  %396 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %397 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %396, i32 0, i32 16
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp sge i64 %395, %399
  br i1 %400, label %401, label %410

401:                                              ; preds = %394
  %402 = load i64, i64* %29, align 8
  %403 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %404 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %403, i32 0, i32 16
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp sle i64 %402, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %401
  %409 = load i32, i32* @FALSE, align 4
  store i32 %409, i32* %18, align 4
  br label %690

410:                                              ; preds = %401, %394
  br label %428

411:                                              ; preds = %387
  %412 = load i64, i64* %29, align 8
  %413 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %414 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %413, i32 0, i32 16
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp slt i64 %412, %416
  br i1 %417, label %425, label %418

418:                                              ; preds = %411
  %419 = load i64, i64* %29, align 8
  %420 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %421 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %420, i32 0, i32 16
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp sgt i64 %419, %423
  br i1 %424, label %425, label %427

425:                                              ; preds = %418, %411
  %426 = load i32, i32* @FALSE, align 4
  store i32 %426, i32* %18, align 4
  br label %690

427:                                              ; preds = %418
  br label %428

428:                                              ; preds = %427, %410
  br label %429

429:                                              ; preds = %428, %380
  %430 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %431 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %462

436:                                              ; preds = %429
  %437 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %438 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %452

443:                                              ; preds = %436
  %444 = load i64, i64* %30, align 8
  %445 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %446 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %445, i32 0, i32 8
  %447 = load i64, i64* %446, align 8
  %448 = icmp eq i64 %444, %447
  br i1 %448, label %449, label %451

449:                                              ; preds = %443
  %450 = load i32, i32* @FALSE, align 4
  store i32 %450, i32* %18, align 4
  br label %690

451:                                              ; preds = %443
  br label %461

452:                                              ; preds = %436
  %453 = load i64, i64* %30, align 8
  %454 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %455 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %454, i32 0, i32 8
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %453, %456
  br i1 %457, label %458, label %460

458:                                              ; preds = %452
  %459 = load i32, i32* @FALSE, align 4
  store i32 %459, i32* %18, align 4
  br label %690

460:                                              ; preds = %452
  br label %461

461:                                              ; preds = %460, %451
  br label %462

462:                                              ; preds = %461, %429
  %463 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %464 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @NECP_KERNEL_CONDITION_AGENT_TYPE, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %526

469:                                              ; preds = %462
  %470 = load i32, i32* @FALSE, align 4
  store i32 %470, i32* %39, align 4
  store i64 0, i64* %40, align 8
  br label %471

471:                                              ; preds = %517, %469
  %472 = load i64, i64* %40, align 8
  %473 = load i64, i64* %34, align 8
  %474 = icmp slt i64 %472, %473
  br i1 %474, label %475, label %520

475:                                              ; preds = %471
  %476 = load %struct.necp_client_parameter_netagent_type*, %struct.necp_client_parameter_netagent_type** %33, align 8
  %477 = load i64, i64* %40, align 8
  %478 = getelementptr inbounds %struct.necp_client_parameter_netagent_type, %struct.necp_client_parameter_netagent_type* %476, i64 %477
  store %struct.necp_client_parameter_netagent_type* %478, %struct.necp_client_parameter_netagent_type** %41, align 8
  %479 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %480 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = call i64 @strlen(i32 %482)
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %496, label %485

485:                                              ; preds = %475
  %486 = load %struct.necp_client_parameter_netagent_type*, %struct.necp_client_parameter_netagent_type** %41, align 8
  %487 = getelementptr inbounds %struct.necp_client_parameter_netagent_type, %struct.necp_client_parameter_netagent_type* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %490 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %494 = call i64 @strncmp(i32 %488, i32 %492, i32 %493)
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %516

496:                                              ; preds = %485, %475
  %497 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %498 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = call i64 @strlen(i32 %500)
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %514, label %503

503:                                              ; preds = %496
  %504 = load %struct.necp_client_parameter_netagent_type*, %struct.necp_client_parameter_netagent_type** %41, align 8
  %505 = getelementptr inbounds %struct.necp_client_parameter_netagent_type, %struct.necp_client_parameter_netagent_type* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %508 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %507, i32 0, i32 15
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %512 = call i64 @strncmp(i32 %506, i32 %510, i32 %511)
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %503, %496
  %515 = load i32, i32* @TRUE, align 4
  store i32 %515, i32* %39, align 4
  br label %520

516:                                              ; preds = %503, %485
  br label %517

517:                                              ; preds = %516
  %518 = load i64, i64* %40, align 8
  %519 = add nsw i64 %518, 1
  store i64 %519, i64* %40, align 8
  br label %471

520:                                              ; preds = %514, %471
  %521 = load i32, i32* %39, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %525, label %523

523:                                              ; preds = %520
  %524 = load i32, i32* @FALSE, align 4
  store i32 %524, i32* %18, align 4
  br label %690

525:                                              ; preds = %520
  br label %526

526:                                              ; preds = %525, %462
  %527 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %528 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_START, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %607

533:                                              ; preds = %526
  %534 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %535 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_END, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %569

540:                                              ; preds = %533
  %541 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %31, align 8
  %542 = bitcast %union.necp_sockaddr_union* %541 to %struct.sockaddr*
  %543 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %544 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %543, i32 0, i32 13
  %545 = bitcast i32* %544 to %struct.sockaddr*
  %546 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %547 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %546, i32 0, i32 14
  %548 = bitcast i32* %547 to %struct.sockaddr*
  %549 = call i32 @necp_is_addr_in_range(%struct.sockaddr* %542, %struct.sockaddr* %545, %struct.sockaddr* %548)
  store i32 %549, i32* %42, align 4
  %550 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %551 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_END, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %562

556:                                              ; preds = %540
  %557 = load i32, i32* %42, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  %560 = load i32, i32* @FALSE, align 4
  store i32 %560, i32* %18, align 4
  br label %690

561:                                              ; preds = %556
  br label %568

562:                                              ; preds = %540
  %563 = load i32, i32* %42, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %567, label %565

565:                                              ; preds = %562
  %566 = load i32, i32* @FALSE, align 4
  store i32 %566, i32* %18, align 4
  br label %690

567:                                              ; preds = %562
  br label %568

568:                                              ; preds = %567, %561
  br label %606

569:                                              ; preds = %533
  %570 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %571 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_PREFIX, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %605

576:                                              ; preds = %569
  %577 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %31, align 8
  %578 = bitcast %union.necp_sockaddr_union* %577 to %struct.sockaddr*
  %579 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %580 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %579, i32 0, i32 13
  %581 = bitcast i32* %580 to %struct.sockaddr*
  %582 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %583 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %582, i32 0, i32 12
  %584 = load i32, i32* %583, align 4
  %585 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %578, %struct.sockaddr* %581, i32 %584)
  store i32 %585, i32* %43, align 4
  %586 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %587 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_PREFIX, align 4
  %590 = and i32 %588, %589
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %598

592:                                              ; preds = %576
  %593 = load i32, i32* %43, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %597

595:                                              ; preds = %592
  %596 = load i32, i32* @FALSE, align 4
  store i32 %596, i32* %18, align 4
  br label %690

597:                                              ; preds = %592
  br label %604

598:                                              ; preds = %576
  %599 = load i32, i32* %43, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %603, label %601

601:                                              ; preds = %598
  %602 = load i32, i32* @FALSE, align 4
  store i32 %602, i32* %18, align 4
  br label %690

603:                                              ; preds = %598
  br label %604

604:                                              ; preds = %603, %597
  br label %605

605:                                              ; preds = %604, %569
  br label %606

606:                                              ; preds = %605, %568
  br label %607

607:                                              ; preds = %606, %526
  %608 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %609 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_START, align 4
  %612 = and i32 %610, %611
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %688

614:                                              ; preds = %607
  %615 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %616 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_END, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %650

621:                                              ; preds = %614
  %622 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %32, align 8
  %623 = bitcast %union.necp_sockaddr_union* %622 to %struct.sockaddr*
  %624 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %625 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %624, i32 0, i32 10
  %626 = bitcast i32* %625 to %struct.sockaddr*
  %627 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %628 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %627, i32 0, i32 11
  %629 = bitcast i32* %628 to %struct.sockaddr*
  %630 = call i32 @necp_is_addr_in_range(%struct.sockaddr* %623, %struct.sockaddr* %626, %struct.sockaddr* %629)
  store i32 %630, i32* %44, align 4
  %631 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %632 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_END, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %643

637:                                              ; preds = %621
  %638 = load i32, i32* %44, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %642

640:                                              ; preds = %637
  %641 = load i32, i32* @FALSE, align 4
  store i32 %641, i32* %18, align 4
  br label %690

642:                                              ; preds = %637
  br label %649

643:                                              ; preds = %621
  %644 = load i32, i32* %44, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %648, label %646

646:                                              ; preds = %643
  %647 = load i32, i32* @FALSE, align 4
  store i32 %647, i32* %18, align 4
  br label %690

648:                                              ; preds = %643
  br label %649

649:                                              ; preds = %648, %642
  br label %687

650:                                              ; preds = %614
  %651 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %652 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_PREFIX, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %686

657:                                              ; preds = %650
  %658 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %32, align 8
  %659 = bitcast %union.necp_sockaddr_union* %658 to %struct.sockaddr*
  %660 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %661 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %660, i32 0, i32 10
  %662 = bitcast i32* %661 to %struct.sockaddr*
  %663 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %664 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %663, i32 0, i32 9
  %665 = load i32, i32* %664, align 8
  %666 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %659, %struct.sockaddr* %662, i32 %665)
  store i32 %666, i32* %45, align 4
  %667 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %20, align 8
  %668 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_PREFIX, align 4
  %671 = and i32 %669, %670
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %679

673:                                              ; preds = %657
  %674 = load i32, i32* %45, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %678

676:                                              ; preds = %673
  %677 = load i32, i32* @FALSE, align 4
  store i32 %677, i32* %18, align 4
  br label %690

678:                                              ; preds = %673
  br label %685

679:                                              ; preds = %657
  %680 = load i32, i32* %45, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %684, label %682

682:                                              ; preds = %679
  %683 = load i32, i32* @FALSE, align 4
  store i32 %683, i32* %18, align 4
  br label %690

684:                                              ; preds = %679
  br label %685

685:                                              ; preds = %684, %678
  br label %686

686:                                              ; preds = %685, %650
  br label %687

687:                                              ; preds = %686, %649
  br label %688

688:                                              ; preds = %687, %607
  %689 = load i32, i32* @TRUE, align 4
  store i32 %689, i32* %18, align 4
  br label %690

690:                                              ; preds = %688, %682, %676, %646, %640, %601, %595, %565, %559, %523, %458, %449, %425, %408, %376, %367, %343, %334, %310, %301, %277, %271, %231, %217, %201, %185, %171, %162, %138, %129, %107, %98, %91, %84
  %691 = load i32, i32* %18, align 4
  ret i32 %691
}

declare dso_local i32* @proc_task(i32*) #1

declare dso_local i32 @IOTaskHasEntitlement(i32*, i32*) #1

declare dso_local i32 @necp_hostname_matches_domain(i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @necp_is_addr_in_range(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @necp_is_addr_in_subnet(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
