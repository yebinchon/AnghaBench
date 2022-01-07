; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_agent_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_agent_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i32 }
%struct.necp_client_action_args = type { i64, i64, i32, i64 }
%struct.necp_client = type { i32 }
%struct.necp_client_nexus_parameters = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"necp_client_agent_action invalid parameters\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"necp_client_agent_action copyin client_id error (%d)\00", align 1
@NECP_MAX_AGENT_ACTION_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"necp_client_agent_action invalid buffer size (>%u)\00", align 1
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"necp_client_agent_action malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"necp_client_agent_action parameters copyin error (%d)\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid TLV length (%u)\00", align 1
@NECP_CLIENT_PARAMETER_TRIGGER_AGENT = common dso_local global i64 0, align 8
@NECP_CLIENT_PARAMETER_ASSERT_AGENT = common dso_local global i64 0, align 8
@NECP_CLIENT_PARAMETER_UNASSERT_AGENT = common dso_local global i64 0, align 8
@NETAGENT_MESSAGE_TYPE_CLIENT_TRIGGER = common dso_local global i64 0, align 8
@NETAGENT_MESSAGE_TYPE_CLIENT_ASSERT = common dso_local global i64 0, align 8
@NETAGENT_MESSAGE_TYPE_CLIENT_UNASSERT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*)* @necp_client_agent_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_agent_action(%struct.necp_fd_data* %0, %struct.necp_client_action_args* %1, i32* %2) #0 {
  %4 = alloca %struct.necp_fd_data*, align 8
  %5 = alloca %struct.necp_client_action_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.necp_client*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.necp_client_nexus_parameters, align 4
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %4, align 8
  store %struct.necp_client_action_args* %1, %struct.necp_client_action_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.necp_client* null, %struct.necp_client** %8, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %10, align 4
  store i64* null, i64** %11, align 8
  %21 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %22 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %25 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %3
  %29 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %30 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %36 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %41 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %34, %28, %3
  %45 = load i32, i32* @LOG_ERR, align 4
  %46 = call i32 @NECPLOG0(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %7, align 4
  br label %241

48:                                               ; preds = %39
  %49 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %50 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 @copyin(i64 %51, i64* %52, i32 8)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @NECPLOG(i32 %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %241

61:                                               ; preds = %48
  %62 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %63 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NECP_MAX_AGENT_ACTION_SIZE, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @LOG_ERR, align 4
  %69 = load i64, i64* @NECP_MAX_AGENT_ACTION_SIZE, align 8
  %70 = call i32 @NECPLOG(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %7, align 4
  br label %241

72:                                               ; preds = %61
  %73 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %74 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @M_NECP, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = load i32, i32* @M_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = call i64* @_MALLOC(i64 %75, i32 %76, i32 %79)
  store i64* %80, i64** %11, align 8
  %81 = icmp eq i64* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @LOG_ERR, align 4
  %84 = call i32 @NECPLOG0(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %7, align 4
  br label %241

86:                                               ; preds = %72
  %87 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %88 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %92 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @copyin(i64 %89, i64* %90, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load i32, i32* @LOG_ERR, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @NECPLOG(i32 %99, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  br label %241

103:                                              ; preds = %86
  %104 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %105 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %104)
  %106 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = call %struct.necp_client* @necp_client_fd_find_client_and_lock(%struct.necp_fd_data* %106, i64* %107)
  store %struct.necp_client* %108, %struct.necp_client** %8, align 8
  %109 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %110 = icmp ne %struct.necp_client* %109, null
  br i1 %110, label %111, label %230

111:                                              ; preds = %103
  store i64 0, i64* %13, align 8
  br label %112

112:                                              ; preds = %222, %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 4
  %115 = load i64, i64* %12, align 8
  %116 = icmp ule i64 %114, %115
  br i1 %116, label %117, label %227

117:                                              ; preds = %112
  %118 = load i64*, i64** %11, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @necp_buffer_get_tlv_type(i64* %118, i64 %119)
  store i64 %120, i64* %14, align 8
  %121 = load i64*, i64** %11, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @necp_buffer_get_tlv_length(i64* %121, i64 %122)
  store i64 %123, i64* %15, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %126, 4
  %128 = sub i64 %125, %127
  %129 = icmp ugt i64 %124, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %117
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @NECPLOG(i32 %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %132)
  br label %227

134:                                              ; preds = %117
  %135 = load i64, i64* %15, align 8
  %136 = icmp ugt i64 %135, 0
  br i1 %136, label %137, label %222

137:                                              ; preds = %134
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %13, align 8
  %140 = call i64* @necp_buffer_get_tlv_value(i64* %138, i64 %139, i32* null)
  store i64* %140, i64** %16, align 8
  %141 = load i64, i64* %15, align 8
  %142 = icmp uge i64 %141, 8
  br i1 %142, label %143, label %221

143:                                              ; preds = %137
  %144 = load i64*, i64** %16, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %146, label %221

146:                                              ; preds = %143
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* @NECP_CLIENT_PARAMETER_TRIGGER_AGENT, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* @NECP_CLIENT_PARAMETER_ASSERT_AGENT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* @NECP_CLIENT_PARAMETER_UNASSERT_AGENT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %221

158:                                              ; preds = %154, %150, %146
  %159 = load i64*, i64** %17, align 8
  %160 = load i64*, i64** %16, align 8
  %161 = call i32 @uuid_copy(i64* %159, i64* %160)
  store i64 0, i64* %18, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* @NECP_CLIENT_PARAMETER_TRIGGER_AGENT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i64, i64* @NETAGENT_MESSAGE_TYPE_CLIENT_TRIGGER, align 8
  store i64 %166, i64* %18, align 8
  br label %181

167:                                              ; preds = %158
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* @NECP_CLIENT_PARAMETER_ASSERT_AGENT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i64, i64* @NETAGENT_MESSAGE_TYPE_CLIENT_ASSERT, align 8
  store i64 %172, i64* %18, align 8
  br label %180

173:                                              ; preds = %167
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* @NECP_CLIENT_PARAMETER_UNASSERT_AGENT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i64, i64* @NETAGENT_MESSAGE_TYPE_CLIENT_UNASSERT, align 8
  store i64 %178, i64* %18, align 8
  br label %179

179:                                              ; preds = %177, %173
  br label %180

180:                                              ; preds = %179, %171
  br label %181

181:                                              ; preds = %180, %165
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* @NECP_CLIENT_PARAMETER_UNASSERT_AGENT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %187 = load i64*, i64** %17, align 8
  %188 = call i32 @necp_client_remove_assertion(%struct.necp_client* %186, i64* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @ENOENT, align 4
  store i32 %191, i32* %7, align 4
  br label %227

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %181
  %194 = bitcast %struct.necp_client_nexus_parameters* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %194, i8 0, i64 4, i1 false)
  %195 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %196 = call i32 @necp_client_copy_parameters_locked(%struct.necp_client* %195, %struct.necp_client_nexus_parameters* %19)
  %197 = load i64*, i64** %17, align 8
  %198 = load i64*, i64** %9, align 8
  %199 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %200 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %203 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i64, i64* %18, align 8
  %206 = call i32 @netagent_client_message_with_params(i64* %197, i64* %198, i32 %201, i32 %204, i64 %205, %struct.necp_client_nexus_parameters* %19, i32* null, i32* null)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %193
  %210 = load i32, i32* @TRUE, align 4
  store i32 %210, i32* %10, align 4
  br label %212

211:                                              ; preds = %193
  br label %227

212:                                              ; preds = %209
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* @NECP_CLIENT_PARAMETER_ASSERT_AGENT, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %218 = load i64*, i64** %17, align 8
  %219 = call i32 @necp_client_add_assertion(%struct.necp_client* %217, i64* %218)
  br label %220

220:                                              ; preds = %216, %212
  br label %221

221:                                              ; preds = %220, %154, %143, %137
  br label %222

222:                                              ; preds = %221, %134
  %223 = load i64, i64* %15, align 8
  %224 = add i64 4, %223
  %225 = load i64, i64* %13, align 8
  %226 = add i64 %225, %224
  store i64 %226, i64* %13, align 8
  br label %112

227:                                              ; preds = %211, %190, %130, %112
  %228 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %229 = call i32 @NECP_CLIENT_UNLOCK(%struct.necp_client* %228)
  br label %230

230:                                              ; preds = %227, %103
  %231 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %232 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %231)
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32, i32* @ENOENT, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %238, %235, %230
  br label %241

241:                                              ; preds = %240, %98, %82, %67, %56, %44
  %242 = load i32, i32* %7, align 4
  %243 = load i32*, i32** %6, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i64*, i64** %11, align 8
  %245 = icmp ne i64* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i64*, i64** %11, align 8
  %248 = load i32, i32* @M_NECP, align 4
  %249 = call i32 @FREE(i64* %247, i32 %248)
  store i64* null, i64** %11, align 8
  br label %250

250:                                              ; preds = %246, %241
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @copyin(i64, i64*, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i64) #1

declare dso_local i64* @_MALLOC(i64, i32, i32) #1

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client* @necp_client_fd_find_client_and_lock(%struct.necp_fd_data*, i64*) #1

declare dso_local i64 @necp_buffer_get_tlv_type(i64*, i64) #1

declare dso_local i64 @necp_buffer_get_tlv_length(i64*, i64) #1

declare dso_local i64* @necp_buffer_get_tlv_value(i64*, i64, i32*) #1

declare dso_local i32 @uuid_copy(i64*, i64*) #1

declare dso_local i32 @necp_client_remove_assertion(%struct.necp_client*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @necp_client_copy_parameters_locked(%struct.necp_client*, %struct.necp_client_nexus_parameters*) #1

declare dso_local i32 @netagent_client_message_with_params(i64*, i64*, i32, i32, i64, %struct.necp_client_nexus_parameters*, i32*, i32*) #1

declare dso_local i32 @necp_client_add_assertion(%struct.necp_client*, i64*) #1

declare dso_local i32 @NECP_CLIENT_UNLOCK(%struct.necp_client*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @FREE(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
