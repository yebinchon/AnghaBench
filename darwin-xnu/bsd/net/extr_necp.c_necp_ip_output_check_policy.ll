; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_ip_output_check_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_ip_output_check_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_ip_output_policy = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%union.necp_sockaddr_union = type { i32 }
%struct.sockaddr = type { i32 }

@NECP_KERNEL_CONDITION_ALL_INTERFACES = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_BOUND_INTERFACE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_POLICY_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@NECP_KERNEL_CONDITION_LAST_INTERFACE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PROTOCOL = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_PREFIX = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_kernel_ip_output_policy*, i64, i64, i64, i64, i64, %union.necp_sockaddr_union*, %union.necp_sockaddr_union*)* @necp_ip_output_check_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_ip_output_check_policy(%struct.necp_kernel_ip_output_policy* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %union.necp_sockaddr_union* %6, %union.necp_sockaddr_union* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.necp_sockaddr_union*, align 8
  %17 = alloca %union.necp_sockaddr_union*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.necp_kernel_ip_output_policy* %0, %struct.necp_kernel_ip_output_policy** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store %union.necp_sockaddr_union* %6, %union.necp_sockaddr_union** %16, align 8
  store %union.necp_sockaddr_union* %7, %union.necp_sockaddr_union** %17, align 8
  %24 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %25 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NECP_KERNEL_CONDITION_ALL_INTERFACES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %8
  %31 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %32 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NECP_KERNEL_CONDITION_BOUND_INTERFACE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %30
  %38 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %39 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %38, i32 0, i32 12
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %44 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %43, i32 0, i32 12
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i64 [ %47, %42 ], [ 0, %48 ]
  store i64 %50, i64* %18, align 8
  %51 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %52 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NECP_KERNEL_CONDITION_BOUND_INTERFACE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %18, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %9, align 4
  br label %326

63:                                               ; preds = %57
  br label %71

64:                                               ; preds = %49
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %18, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %9, align 4
  br label %326

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %63
  br label %78

72:                                               ; preds = %30
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %9, align 4
  br label %326

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %71
  br label %79

79:                                               ; preds = %78, %8
  %80 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %81 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %9, align 4
  br label %326

86:                                               ; preds = %79
  %87 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %88 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NECP_KERNEL_CONDITION_POLICY_ID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %86
  %94 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %95 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i64, i64* %12, align 8
  br label %103

101:                                              ; preds = %93
  %102 = load i64, i64* %11, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i64 [ %100, %99 ], [ %102, %101 ]
  store i64 %104, i64* %19, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %107 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %9, align 4
  br label %326

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %86
  %114 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %115 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NECP_KERNEL_CONDITION_LAST_INTERFACE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %123 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %9, align 4
  br label %326

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %113
  %130 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %131 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %129
  %137 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %138 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %136
  %144 = load i64, i64* %15, align 8
  %145 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %146 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %9, align 4
  br label %326

151:                                              ; preds = %143
  br label %161

152:                                              ; preds = %136
  %153 = load i64, i64* %15, align 8
  %154 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %155 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %9, align 4
  br label %326

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %151
  br label %162

162:                                              ; preds = %161, %129
  %163 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %164 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_START, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %243

169:                                              ; preds = %162
  %170 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %171 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_END, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %205

176:                                              ; preds = %169
  %177 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %16, align 8
  %178 = bitcast %union.necp_sockaddr_union* %177 to %struct.sockaddr*
  %179 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %180 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %179, i32 0, i32 10
  %181 = bitcast i32* %180 to %struct.sockaddr*
  %182 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %183 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %182, i32 0, i32 11
  %184 = bitcast i32* %183 to %struct.sockaddr*
  %185 = call i32 @necp_is_addr_in_range(%struct.sockaddr* %178, %struct.sockaddr* %181, %struct.sockaddr* %184)
  store i32 %185, i32* %20, align 4
  %186 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %187 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_END, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %176
  %193 = load i32, i32* %20, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %9, align 4
  br label %326

197:                                              ; preds = %192
  br label %204

198:                                              ; preds = %176
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %9, align 4
  br label %326

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203, %197
  br label %242

205:                                              ; preds = %169
  %206 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %207 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_PREFIX, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %241

212:                                              ; preds = %205
  %213 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %16, align 8
  %214 = bitcast %union.necp_sockaddr_union* %213 to %struct.sockaddr*
  %215 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %216 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %215, i32 0, i32 10
  %217 = bitcast i32* %216 to %struct.sockaddr*
  %218 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %219 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %214, %struct.sockaddr* %217, i32 %220)
  store i32 %221, i32* %21, align 4
  %222 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %223 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_PREFIX, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %212
  %229 = load i32, i32* %21, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @FALSE, align 4
  store i32 %232, i32* %9, align 4
  br label %326

233:                                              ; preds = %228
  br label %240

234:                                              ; preds = %212
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* @FALSE, align 4
  store i32 %238, i32* %9, align 4
  br label %326

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %233
  br label %241

241:                                              ; preds = %240, %205
  br label %242

242:                                              ; preds = %241, %204
  br label %243

243:                                              ; preds = %242, %162
  %244 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %245 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_START, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %324

250:                                              ; preds = %243
  %251 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %252 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_END, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %286

257:                                              ; preds = %250
  %258 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %17, align 8
  %259 = bitcast %union.necp_sockaddr_union* %258 to %struct.sockaddr*
  %260 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %261 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %260, i32 0, i32 7
  %262 = bitcast i32* %261 to %struct.sockaddr*
  %263 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %264 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %263, i32 0, i32 8
  %265 = bitcast i32* %264 to %struct.sockaddr*
  %266 = call i32 @necp_is_addr_in_range(%struct.sockaddr* %259, %struct.sockaddr* %262, %struct.sockaddr* %265)
  store i32 %266, i32* %22, align 4
  %267 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %268 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_END, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %257
  %274 = load i32, i32* %22, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* @FALSE, align 4
  store i32 %277, i32* %9, align 4
  br label %326

278:                                              ; preds = %273
  br label %285

279:                                              ; preds = %257
  %280 = load i32, i32* %22, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* @FALSE, align 4
  store i32 %283, i32* %9, align 4
  br label %326

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284, %278
  br label %323

286:                                              ; preds = %250
  %287 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %288 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_PREFIX, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %322

293:                                              ; preds = %286
  %294 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %17, align 8
  %295 = bitcast %union.necp_sockaddr_union* %294 to %struct.sockaddr*
  %296 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %297 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %296, i32 0, i32 7
  %298 = bitcast i32* %297 to %struct.sockaddr*
  %299 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %300 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %295, %struct.sockaddr* %298, i32 %301)
  store i32 %302, i32* %23, align 4
  %303 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %10, align 8
  %304 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_PREFIX, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %293
  %310 = load i32, i32* %23, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = load i32, i32* @FALSE, align 4
  store i32 %313, i32* %9, align 4
  br label %326

314:                                              ; preds = %309
  br label %321

315:                                              ; preds = %293
  %316 = load i32, i32* %23, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* @FALSE, align 4
  store i32 %319, i32* %9, align 4
  br label %326

320:                                              ; preds = %315
  br label %321

321:                                              ; preds = %320, %314
  br label %322

322:                                              ; preds = %321, %286
  br label %323

323:                                              ; preds = %322, %285
  br label %324

324:                                              ; preds = %323, %243
  %325 = load i32, i32* @TRUE, align 4
  store i32 %325, i32* %9, align 4
  br label %326

326:                                              ; preds = %324, %318, %312, %282, %276, %237, %231, %201, %195, %158, %149, %126, %110, %84, %75, %68, %61
  %327 = load i32, i32* %9, align 4
  ret i32 %327
}

declare dso_local i32 @necp_is_addr_in_range(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @necp_is_addr_in_subnet(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
