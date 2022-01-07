; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_ifnet_matches_parameters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_ifnet_matches_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.necp_client_parsed_parameters = type { i32, i32, i64, i64*, %struct.TYPE_6__*, i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32*, i32*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@NECP_PARSED_PARAMETERS_FIELD_LOCAL_ADDR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_FLAGS = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_PROHIBIT_EXPENSIVE = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_ONLY_PRIMARY_REQUIRES_TYPE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_REQUIRED_IFTYPE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IFTYPE = common dso_local global i32 0, align 4
@NECP_MAX_PARSED_PARAMETERS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IF = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT_TYPE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT_TYPE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT_TYPE = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT = common dso_local global i32 0, align 4
@NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.necp_client_parsed_parameters*, i64*, i32)* @necp_ifnet_matches_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_ifnet_matches_parameters(%struct.ifnet* %0, %struct.necp_client_parsed_parameters* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.necp_client_parsed_parameters*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.necp_client_parsed_parameters* %1, %struct.necp_client_parsed_parameters** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i64*, i64** %8, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64*, i64** %8, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %26 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_LOCAL_ADDR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %34 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @necp_ifnet_matches_local_address(%struct.ifnet* %32, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %609

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %43 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_FLAGS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %50 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_PROHIBIT_EXPENSIVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %57 = call i64 @IFNET_IS_EXPENSIVE(%struct.ifnet* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %609

61:                                               ; preds = %55, %48
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %67 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_FLAGS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %74 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_ONLY_PRIMARY_REQUIRES_TYPE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %72, %65, %62
  %80 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %81 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_REQUIRED_IFTYPE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %88 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %89 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i64 @necp_ifnet_matches_type(%struct.ifnet* %87, i64 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %5, align 4
  br label %609

96:                                               ; preds = %86, %79, %72
  %97 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %98 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IFTYPE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %133, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %104
  %109 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %110 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %136

118:                                              ; preds = %108
  %119 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %120 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %121 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @TRUE, align 4
  %128 = call i64 @necp_ifnet_matches_type(%struct.ifnet* %119, i64 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %5, align 4
  br label %609

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %104

136:                                              ; preds = %117, %104
  br label %137

137:                                              ; preds = %136, %96
  %138 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %139 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IF, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %179

144:                                              ; preds = %137
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %175, %144
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  %150 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %151 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %150, i32 0, i32 12
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @strlen(i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %178

160:                                              ; preds = %149
  %161 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %162 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %163 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %162, i32 0, i32 12
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TRUE, align 4
  %170 = call i64 @necp_ifnet_matches_name(%struct.ifnet* %161, i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %5, align 4
  br label %609

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %145

178:                                              ; preds = %159, %145
  br label %179

179:                                              ; preds = %178, %137
  %180 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %181 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %220

186:                                              ; preds = %179
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %216, %186
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %219

191:                                              ; preds = %187
  %192 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %193 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %192, i32 0, i32 11
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @uuid_is_null(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  br label %219

202:                                              ; preds = %191
  %203 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %204 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %205 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %204, i32 0, i32 11
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i64 @necp_ifnet_matches_agent(%struct.ifnet* %203, i32* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %202
  %214 = load i32, i32* @FALSE, align 4
  store i32 %214, i32* %5, align 4
  br label %609

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %187

219:                                              ; preds = %201, %187
  br label %220

220:                                              ; preds = %219, %179
  %221 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %222 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %261

227:                                              ; preds = %220
  store i32 0, i32* %13, align 4
  br label %228

228:                                              ; preds = %257, %227
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %260

232:                                              ; preds = %228
  %233 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %234 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %233, i32 0, i32 10
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @uuid_is_null(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %232
  br label %260

243:                                              ; preds = %232
  %244 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %245 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %246 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %245, i32 0, i32 10
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* @TRUE, align 4
  %252 = call i64 @necp_ifnet_matches_agent(%struct.ifnet* %244, i32* %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %243
  %255 = load i32, i32* @FALSE, align 4
  store i32 %255, i32* %5, align 4
  br label %609

256:                                              ; preds = %243
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  br label %228

260:                                              ; preds = %242, %228
  br label %261

261:                                              ; preds = %260, %220
  %262 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %263 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT_TYPE, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %324

268:                                              ; preds = %261
  store i32 0, i32* %14, align 4
  br label %269

269:                                              ; preds = %320, %268
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %323

273:                                              ; preds = %269
  %274 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %275 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %274, i32 0, i32 9
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @strlen(i32 %281)
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %296

284:                                              ; preds = %273
  %285 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %286 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %285, i32 0, i32 9
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %286, align 8
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @strlen(i32 %292)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %284
  br label %323

296:                                              ; preds = %284, %273
  %297 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %298 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %299 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %298, i32 0, i32 9
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %307 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %306, i32 0, i32 9
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @FALSE, align 4
  %315 = call i64 @necp_ifnet_matches_agent_type(%struct.ifnet* %297, i32 %305, i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %296
  %318 = load i32, i32* @FALSE, align 4
  store i32 %318, i32* %5, align 4
  br label %609

319:                                              ; preds = %296
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %14, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %14, align 4
  br label %269

323:                                              ; preds = %295, %269
  br label %324

324:                                              ; preds = %323, %261
  %325 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %326 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT_TYPE, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %387

331:                                              ; preds = %324
  store i32 0, i32* %15, align 4
  br label %332

332:                                              ; preds = %383, %331
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %386

336:                                              ; preds = %332
  %337 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %338 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %337, i32 0, i32 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %338, align 8
  %340 = load i32, i32* %15, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @strlen(i32 %344)
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %336
  %348 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %349 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %348, i32 0, i32 8
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %349, align 8
  %351 = load i32, i32* %15, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @strlen(i32 %355)
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %347
  br label %386

359:                                              ; preds = %347, %336
  %360 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %361 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %362 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %361, i32 0, i32 8
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %362, align 8
  %364 = load i32, i32* %15, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %370 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %369, i32 0, i32 8
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %370, align 8
  %372 = load i32, i32* %15, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @TRUE, align 4
  %378 = call i64 @necp_ifnet_matches_agent_type(%struct.ifnet* %360, i32 %368, i32 %376, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %359
  %381 = load i32, i32* @FALSE, align 4
  store i32 %381, i32* %5, align 4
  br label %609

382:                                              ; preds = %359
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %15, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  br label %332

386:                                              ; preds = %358, %332
  br label %387

387:                                              ; preds = %386, %324
  %388 = load i64*, i64** %8, align 8
  %389 = icmp ne i64* %388, null
  br i1 %389, label %390, label %607

390:                                              ; preds = %387
  %391 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %392 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %433

397:                                              ; preds = %390
  store i32 0, i32* %16, align 4
  br label %398

398:                                              ; preds = %429, %397
  %399 = load i32, i32* %16, align 4
  %400 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %432

402:                                              ; preds = %398
  %403 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %404 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %403, i32 0, i32 7
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %16, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = call i64 @uuid_is_null(i32 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %402
  br label %432

413:                                              ; preds = %402
  %414 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %415 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %416 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %415, i32 0, i32 7
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %16, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* @TRUE, align 4
  %422 = call i64 @necp_ifnet_matches_agent(%struct.ifnet* %414, i32* %420, i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %413
  %425 = load i64*, i64** %8, align 8
  %426 = load i64, i64* %425, align 8
  %427 = add nsw i64 %426, 1
  store i64 %427, i64* %425, align 8
  br label %428

428:                                              ; preds = %424, %413
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %16, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %16, align 4
  br label %398

432:                                              ; preds = %412, %398
  br label %433

433:                                              ; preds = %432, %390
  %434 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %435 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT_TYPE, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %498

440:                                              ; preds = %433
  store i32 0, i32* %17, align 4
  br label %441

441:                                              ; preds = %494, %440
  %442 = load i32, i32* %17, align 4
  %443 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %444 = icmp slt i32 %442, %443
  br i1 %444, label %445, label %497

445:                                              ; preds = %441
  %446 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %447 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %446, i32 0, i32 6
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %447, align 8
  %449 = load i32, i32* %17, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = call i64 @strlen(i32 %453)
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %468

456:                                              ; preds = %445
  %457 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %458 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %457, i32 0, i32 6
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %458, align 8
  %460 = load i32, i32* %17, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = call i64 @strlen(i32 %464)
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %456
  br label %497

468:                                              ; preds = %456, %445
  %469 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %470 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %471 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %470, i32 0, i32 6
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %471, align 8
  %473 = load i32, i32* %17, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %479 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %478, i32 0, i32 6
  %480 = load %struct.TYPE_10__*, %struct.TYPE_10__** %479, align 8
  %481 = load i32, i32* %17, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @TRUE, align 4
  %487 = call i64 @necp_ifnet_matches_agent_type(%struct.ifnet* %469, i32 %477, i32 %485, i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %468
  %490 = load i64*, i64** %8, align 8
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %491, 1
  store i64 %492, i64* %490, align 8
  br label %493

493:                                              ; preds = %489, %468
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %17, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %17, align 4
  br label %441

497:                                              ; preds = %467, %441
  br label %498

498:                                              ; preds = %497, %433
  %499 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %500 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %541

505:                                              ; preds = %498
  store i32 0, i32* %18, align 4
  br label %506

506:                                              ; preds = %537, %505
  %507 = load i32, i32* %18, align 4
  %508 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %509 = icmp slt i32 %507, %508
  br i1 %509, label %510, label %540

510:                                              ; preds = %506
  %511 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %512 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %511, i32 0, i32 5
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %18, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %513, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = call i64 @uuid_is_null(i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %510
  br label %540

521:                                              ; preds = %510
  %522 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %523 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %524 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %523, i32 0, i32 5
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* %18, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = load i32, i32* @TRUE, align 4
  %530 = call i64 @necp_ifnet_matches_agent(%struct.ifnet* %522, i32* %528, i32 %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %536, label %532

532:                                              ; preds = %521
  %533 = load i64*, i64** %8, align 8
  %534 = load i64, i64* %533, align 8
  %535 = add nsw i64 %534, 1
  store i64 %535, i64* %533, align 8
  br label %536

536:                                              ; preds = %532, %521
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %18, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %18, align 4
  br label %506

540:                                              ; preds = %520, %506
  br label %541

541:                                              ; preds = %540, %498
  %542 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %543 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT_TYPE, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %606

548:                                              ; preds = %541
  store i32 0, i32* %19, align 4
  br label %549

549:                                              ; preds = %602, %548
  %550 = load i32, i32* %19, align 4
  %551 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %552 = icmp slt i32 %550, %551
  br i1 %552, label %553, label %605

553:                                              ; preds = %549
  %554 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %555 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %554, i32 0, i32 4
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %555, align 8
  %557 = load i32, i32* %19, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = call i64 @strlen(i32 %561)
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %564, label %576

564:                                              ; preds = %553
  %565 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %566 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %565, i32 0, i32 4
  %567 = load %struct.TYPE_6__*, %struct.TYPE_6__** %566, align 8
  %568 = load i32, i32* %19, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = call i64 @strlen(i32 %572)
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %564
  br label %605

576:                                              ; preds = %564, %553
  %577 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %578 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %579 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %578, i32 0, i32 4
  %580 = load %struct.TYPE_6__*, %struct.TYPE_6__** %579, align 8
  %581 = load i32, i32* %19, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %7, align 8
  %587 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %586, i32 0, i32 4
  %588 = load %struct.TYPE_6__*, %struct.TYPE_6__** %587, align 8
  %589 = load i32, i32* %19, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %588, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* @TRUE, align 4
  %595 = call i64 @necp_ifnet_matches_agent_type(%struct.ifnet* %577, i32 %585, i32 %593, i32 %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %601, label %597

597:                                              ; preds = %576
  %598 = load i64*, i64** %8, align 8
  %599 = load i64, i64* %598, align 8
  %600 = add nsw i64 %599, 1
  store i64 %600, i64* %598, align 8
  br label %601

601:                                              ; preds = %597, %576
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %19, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %19, align 4
  br label %549

605:                                              ; preds = %575, %549
  br label %606

606:                                              ; preds = %605, %541
  br label %607

607:                                              ; preds = %606, %387
  %608 = load i32, i32* @TRUE, align 4
  store i32 %608, i32* %5, align 4
  br label %609

609:                                              ; preds = %607, %380, %317, %254, %213, %172, %130, %94, %59, %38
  %610 = load i32, i32* %5, align 4
  ret i32 %610
}

declare dso_local i32 @necp_ifnet_matches_local_address(%struct.ifnet*, i32*) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(%struct.ifnet*) #1

declare dso_local i64 @necp_ifnet_matches_type(%struct.ifnet*, i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @necp_ifnet_matches_name(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @uuid_is_null(i32) #1

declare dso_local i64 @necp_ifnet_matches_agent(%struct.ifnet*, i32*, i32) #1

declare dso_local i64 @necp_ifnet_matches_agent_type(%struct.ifnet*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
