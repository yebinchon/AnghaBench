; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_fillout_info_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_fillout_info_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, %struct.sockaddr, i32, %struct.sockaddr, i32, %struct.sockaddr, %struct.sockaddr, %struct.TYPE_4__*, %struct.TYPE_3__, i64, %struct.socket* }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.socket = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.necp_socket_info = type { i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.necp_uuid_id_mapping = type { i32 }
%struct.necp_string_id_mapping = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, i8* }
%struct.sockaddr_in6 = type { i32, i32, i32, i8* }

@necp_kernel_socket_policies_condition_mask = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PID = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_UID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PROTOCOL = common dso_local global i32 0, align 4
@INP2_WANT_APP_POLICY = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REAL_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ENTITLEMENT = common dso_local global i32 0, align 4
@PRIV_NET_PRIVILEGED_NECP_MATCH = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ACCOUNT_ID = common dso_local global i32 0, align 4
@necp_account_id_list = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_DOMAIN = common dso_local global i32 0, align 4
@INP_BOUND_IF = common dso_local global i32 0, align 4
@NECP_KERNEL_ADDRESS_TYPE_CONDITIONS = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, %struct.sockaddr*, %struct.sockaddr*, i64, %struct.necp_socket_info*)* @necp_socket_fillout_info_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_socket_fillout_info_locked(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i64 %3, %struct.necp_socket_info* %4) #0 {
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.necp_socket_info*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.necp_uuid_id_mapping*, align 8
  %13 = alloca %struct.necp_uuid_id_mapping*, align 8
  %14 = alloca %struct.necp_string_id_mapping*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.necp_socket_info* %4, %struct.necp_socket_info** %10, align 8
  store %struct.socket* null, %struct.socket** %11, align 8
  %15 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %16 = call i32 @memset(%struct.necp_socket_info* %15, i32 0, i32 64)
  %17 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 12
  %19 = load %struct.socket*, %struct.socket** %18, align 8
  store %struct.socket* %19, %struct.socket** %11, align 8
  %20 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %21 = load i32, i32* @NECP_KERNEL_CONDITION_PID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %5
  %25 = load %struct.socket*, %struct.socket** %11, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOF_DELEGATED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.socket*, %struct.socket** %11, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  br label %39

35:                                               ; preds = %24
  %36 = load %struct.socket*, %struct.socket** %11, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  %41 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %42 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %5
  %44 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %45 = load i32, i32* @NECP_KERNEL_CONDITION_UID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.socket*, %struct.socket** %11, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kauth_cred_getuid(i32 %51)
  %53 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %54 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %57 = load i32, i32* @NECP_KERNEL_CONDITION_TRAFFIC_CLASS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.socket*, %struct.socket** %11, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %65 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %68 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %73 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %78 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %77, i32 0, i32 11
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %81 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %80, i32 0, i32 8
  store i64 %79, i64* %81, align 8
  br label %87

82:                                               ; preds = %71
  %83 = load %struct.socket*, %struct.socket** %11, align 8
  %84 = call i64 @SOCK_PROTO(%struct.socket* %83)
  %85 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %86 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %85, i32 0, i32 8
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %90 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @INP2_WANT_APP_POLICY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %181

95:                                               ; preds = %88
  %96 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %97 = load i32, i32* @NECP_KERNEL_CONDITION_APP_ID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %181

100:                                              ; preds = %95
  %101 = load %struct.socket*, %struct.socket** %11, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SOF_DELEGATED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.socket*, %struct.socket** %11, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  br label %115

111:                                              ; preds = %100
  %112 = load %struct.socket*, %struct.socket** %11, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i32 [ %110, %107 ], [ %114, %111 ]
  %117 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32 %116)
  store %struct.necp_uuid_id_mapping* %117, %struct.necp_uuid_id_mapping** %12, align 8
  %118 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %12, align 8
  %119 = icmp ne %struct.necp_uuid_id_mapping* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %12, align 8
  %122 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %125 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %115
  %127 = load %struct.socket*, %struct.socket** %11, align 8
  %128 = getelementptr inbounds %struct.socket, %struct.socket* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SOF_DELEGATED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %126
  %134 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %135 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %138 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  br label %159

139:                                              ; preds = %126
  %140 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %141 = load i32, i32* @NECP_KERNEL_CONDITION_REAL_APP_ID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load %struct.socket*, %struct.socket** %11, align 8
  %146 = getelementptr inbounds %struct.socket, %struct.socket* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32 %147)
  store %struct.necp_uuid_id_mapping* %148, %struct.necp_uuid_id_mapping** %13, align 8
  %149 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %13, align 8
  %150 = icmp ne %struct.necp_uuid_id_mapping* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %13, align 8
  %153 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %156 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %144
  br label %158

158:                                              ; preds = %157, %139
  br label %159

159:                                              ; preds = %158, %133
  %160 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %161 = load i32, i32* @NECP_KERNEL_CONDITION_ENTITLEMENT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load %struct.socket*, %struct.socket** %11, align 8
  %166 = getelementptr inbounds %struct.socket, %struct.socket* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PRIV_NET_PRIVILEGED_NECP_MATCH, align 4
  %169 = call i64 @priv_check_cred(i32 %167, i32 %168, i32 0)
  %170 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %171 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %173 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %178 = call i32 @necp_get_parent_cred_result(i32* null, %struct.necp_socket_info* %177)
  br label %179

179:                                              ; preds = %176, %164
  br label %180

180:                                              ; preds = %179, %159
  br label %181

181:                                              ; preds = %180, %95, %88
  %182 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %183 = load i32, i32* @NECP_KERNEL_CONDITION_ACCOUNT_ID, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %181
  %187 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %188 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %187, i32 0, i32 10
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %207

192:                                              ; preds = %186
  %193 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %194 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %193, i32 0, i32 10
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = call %struct.necp_string_id_mapping* @necp_lookup_string_to_id_locked(i32* @necp_account_id_list, i32* %196)
  store %struct.necp_string_id_mapping* %197, %struct.necp_string_id_mapping** %14, align 8
  %198 = load %struct.necp_string_id_mapping*, %struct.necp_string_id_mapping** %14, align 8
  %199 = icmp ne %struct.necp_string_id_mapping* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load %struct.necp_string_id_mapping*, %struct.necp_string_id_mapping** %14, align 8
  %202 = getelementptr inbounds %struct.necp_string_id_mapping, %struct.necp_string_id_mapping* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %205 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %200, %192
  br label %207

207:                                              ; preds = %206, %186, %181
  %208 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %209 = load i32, i32* @NECP_KERNEL_CONDITION_DOMAIN, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %214 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %213, i32 0, i32 10
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %218 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %212, %207
  %220 = load i64, i64* %9, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i64, i64* %9, align 8
  %224 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %225 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %224, i32 0, i32 3
  store i64 %223, i64* %225, align 8
  br label %247

226:                                              ; preds = %219
  %227 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %228 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @INP_BOUND_IF, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %226
  %234 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %235 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %234, i32 0, i32 9
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = icmp ne %struct.TYPE_4__* %236, null
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %240 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %239, i32 0, i32 9
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %245 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %244, i32 0, i32 3
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %238, %233, %226
  br label %247

247:                                              ; preds = %246, %222
  %248 = load i32, i32* @necp_kernel_socket_policies_condition_mask, align 4
  %249 = load i32, i32* @NECP_KERNEL_ADDRESS_TYPE_CONDITIONS, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %438

252:                                              ; preds = %247
  %253 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %254 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @INP_IPV4, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %344

259:                                              ; preds = %252
  %260 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %261 = icmp ne %struct.sockaddr* %260, null
  br i1 %261, label %262, label %277

262:                                              ; preds = %259
  %263 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %264 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = icmp ule i64 %266, 24
  br i1 %267, label %268, label %276

268:                                              ; preds = %262
  %269 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %270 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %269, i32 0, i32 2
  %271 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %272 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %273 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @memcpy(i32* %270, %struct.sockaddr* %271, i32 %274)
  br label %276

276:                                              ; preds = %268, %262
  br label %301

277:                                              ; preds = %259
  %278 = load i8*, i8** @AF_INET, align 8
  %279 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %280 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %279, i32 0, i32 2
  %281 = bitcast i32* %280 to %struct.sockaddr_in*
  %282 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %281, i32 0, i32 3
  store i8* %278, i8** %282, align 4
  %283 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %284 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %283, i32 0, i32 2
  %285 = bitcast i32* %284 to %struct.sockaddr_in*
  %286 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %285, i32 0, i32 0
  store i32 24, i32* %286, align 4
  %287 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %288 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %291 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %290, i32 0, i32 2
  %292 = bitcast i32* %291 to %struct.sockaddr_in*
  %293 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %292, i32 0, i32 2
  store i32 %289, i32* %293, align 4
  %294 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %295 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %294, i32 0, i32 2
  %296 = bitcast i32* %295 to %struct.sockaddr_in*
  %297 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %296, i32 0, i32 1
  %298 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %299 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %298, i32 0, i32 8
  %300 = call i32 @memcpy(i32* %297, %struct.sockaddr* %299, i32 4)
  br label %301

301:                                              ; preds = %277, %276
  %302 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %303 = icmp ne %struct.sockaddr* %302, null
  br i1 %303, label %304, label %319

304:                                              ; preds = %301
  %305 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %306 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = icmp ule i64 %308, 24
  br i1 %309, label %310, label %318

310:                                              ; preds = %304
  %311 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %312 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %311, i32 0, i32 1
  %313 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %314 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %315 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @memcpy(i32* %312, %struct.sockaddr* %313, i32 %316)
  br label %318

318:                                              ; preds = %310, %304
  br label %343

319:                                              ; preds = %301
  %320 = load i8*, i8** @AF_INET, align 8
  %321 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %322 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %321, i32 0, i32 1
  %323 = bitcast i32* %322 to %struct.sockaddr_in*
  %324 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %323, i32 0, i32 3
  store i8* %320, i8** %324, align 8
  %325 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %326 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %325, i32 0, i32 1
  %327 = bitcast i32* %326 to %struct.sockaddr_in*
  %328 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %327, i32 0, i32 0
  store i32 24, i32* %328, align 8
  %329 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %330 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %333 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %332, i32 0, i32 1
  %334 = bitcast i32* %333 to %struct.sockaddr_in*
  %335 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %334, i32 0, i32 2
  store i32 %331, i32* %335, align 8
  %336 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %337 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %336, i32 0, i32 1
  %338 = bitcast i32* %337 to %struct.sockaddr_in*
  %339 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %338, i32 0, i32 1
  %340 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %341 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %340, i32 0, i32 7
  %342 = call i32 @memcpy(i32* %339, %struct.sockaddr* %341, i32 4)
  br label %343

343:                                              ; preds = %319, %318
  br label %437

344:                                              ; preds = %252
  %345 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %346 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @INP_IPV6, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %436

351:                                              ; preds = %344
  %352 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %353 = icmp ne %struct.sockaddr* %352, null
  br i1 %353, label %354, label %369

354:                                              ; preds = %351
  %355 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %356 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = icmp ule i64 %358, 24
  br i1 %359, label %360, label %368

360:                                              ; preds = %354
  %361 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %362 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %361, i32 0, i32 2
  %363 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %364 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %365 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @memcpy(i32* %362, %struct.sockaddr* %363, i32 %366)
  br label %368

368:                                              ; preds = %360, %354
  br label %393

369:                                              ; preds = %351
  %370 = load i8*, i8** @AF_INET6, align 8
  %371 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %372 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %371, i32 0, i32 2
  %373 = bitcast i32* %372 to %struct.sockaddr_in6*
  %374 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %373, i32 0, i32 3
  store i8* %370, i8** %374, align 4
  %375 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %376 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %375, i32 0, i32 2
  %377 = bitcast i32* %376 to %struct.sockaddr_in6*
  %378 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %377, i32 0, i32 0
  store i32 24, i32* %378, align 4
  %379 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %380 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %383 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %382, i32 0, i32 2
  %384 = bitcast i32* %383 to %struct.sockaddr_in6*
  %385 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %384, i32 0, i32 2
  store i32 %381, i32* %385, align 4
  %386 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %387 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %386, i32 0, i32 2
  %388 = bitcast i32* %387 to %struct.sockaddr_in6*
  %389 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %388, i32 0, i32 1
  %390 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %391 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %390, i32 0, i32 5
  %392 = call i32 @memcpy(i32* %389, %struct.sockaddr* %391, i32 4)
  br label %393

393:                                              ; preds = %369, %368
  %394 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %395 = icmp ne %struct.sockaddr* %394, null
  br i1 %395, label %396, label %411

396:                                              ; preds = %393
  %397 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %398 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = sext i32 %399 to i64
  %401 = icmp ule i64 %400, 24
  br i1 %401, label %402, label %410

402:                                              ; preds = %396
  %403 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %404 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %403, i32 0, i32 1
  %405 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %406 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %407 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @memcpy(i32* %404, %struct.sockaddr* %405, i32 %408)
  br label %410

410:                                              ; preds = %402, %396
  br label %435

411:                                              ; preds = %393
  %412 = load i8*, i8** @AF_INET6, align 8
  %413 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %414 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %413, i32 0, i32 1
  %415 = bitcast i32* %414 to %struct.sockaddr_in6*
  %416 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %415, i32 0, i32 3
  store i8* %412, i8** %416, align 8
  %417 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %418 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %417, i32 0, i32 1
  %419 = bitcast i32* %418 to %struct.sockaddr_in6*
  %420 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %419, i32 0, i32 0
  store i32 24, i32* %420, align 8
  %421 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %422 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %425 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %424, i32 0, i32 1
  %426 = bitcast i32* %425 to %struct.sockaddr_in6*
  %427 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %426, i32 0, i32 2
  store i32 %423, i32* %427, align 8
  %428 = load %struct.necp_socket_info*, %struct.necp_socket_info** %10, align 8
  %429 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %428, i32 0, i32 1
  %430 = bitcast i32* %429 to %struct.sockaddr_in6*
  %431 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %430, i32 0, i32 1
  %432 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %433 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %432, i32 0, i32 3
  %434 = call i32 @memcpy(i32* %431, %struct.sockaddr* %433, i32 4)
  br label %435

435:                                              ; preds = %411, %410
  br label %436

436:                                              ; preds = %435, %344
  br label %437

437:                                              ; preds = %436, %343
  br label %438

438:                                              ; preds = %437, %247
  ret void
}

declare dso_local i32 @memset(%struct.necp_socket_info*, i32, i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32) #1

declare dso_local i64 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @necp_get_parent_cred_result(i32*, %struct.necp_socket_info*) #1

declare dso_local %struct.necp_string_id_mapping* @necp_lookup_string_to_id_locked(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
