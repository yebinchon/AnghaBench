; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_do_allocsa_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_do_allocsa_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.secashead = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"key_do_allocsa_policy\00", align 1
@IPSEC_MODE_TUNNEL = common dso_local global i64 0, align 8
@SADB_X_EXT_NATT = common dso_local global i32 0, align 4
@IPSEC_MODE_TRANSPORT = common dso_local global i64 0, align 8
@SADB_X_EXT_NATT_MULTIPLEUSERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"key_do_allocsa_policy: lifetime_current is NULL.\0A\00", align 1
@key_preferred_oldsa = common dso_local global i64 0, align 8
@KEYDEBUG_IPSEC_STAMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"DP allocsa_policy cause refcnt++:%d SA:0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.secasvar* (%struct.secashead*, i64, i64)* @key_do_allocsa_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.secasvar* @key_do_allocsa_policy(%struct.secashead* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.secashead*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.secasvar*, align 8
  %8 = alloca %struct.secasvar*, align 8
  %9 = alloca %struct.secasvar*, align 8
  %10 = alloca %struct.secasvar*, align 8
  %11 = alloca %struct.secasvar*, align 8
  %12 = alloca %struct.secasvar*, align 8
  store %struct.secashead* %0, %struct.secashead** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @sadb_mutex, align 4
  %14 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %15 = call i32 @LCK_MTX_ASSERT(i32 %13, i32 %14)
  store %struct.secasvar* null, %struct.secasvar** %9, align 8
  store %struct.secasvar* null, %struct.secasvar** %10, align 8
  store %struct.secasvar* null, %struct.secasvar** %11, align 8
  %16 = load %struct.secashead*, %struct.secashead** %4, align 8
  %17 = getelementptr inbounds %struct.secashead, %struct.secashead* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call %struct.secasvar* @LIST_FIRST(i32* %20)
  store %struct.secasvar* %21, %struct.secasvar** %7, align 8
  br label %22

22:                                               ; preds = %223, %3
  %23 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %24 = icmp ne %struct.secasvar* %23, null
  br i1 %24, label %25, label %225

25:                                               ; preds = %22
  %26 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %27 = load i32, i32* @chain, align 4
  %28 = call %struct.secasvar* @LIST_NEXT(%struct.secasvar* %26, i32 %27)
  store %struct.secasvar* %28, %struct.secasvar** %8, align 8
  %29 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %30 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @KEY_CHKSASTATE(i32 %31, i64 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.secashead*, %struct.secashead** %4, align 8
  %35 = getelementptr inbounds %struct.secashead, %struct.secashead* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPSEC_MODE_TUNNEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %25
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SADB_X_EXT_NATT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @ntohs(i64 %51)
  %53 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %54 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %223

58:                                               ; preds = %50, %43, %40, %25
  %59 = load %struct.secashead*, %struct.secashead** %4, align 8
  %60 = getelementptr inbounds %struct.secashead, %struct.secashead* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPSEC_MODE_TRANSPORT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %67 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @ntohs(i64 %73)
  %75 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %76 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %223

80:                                               ; preds = %72, %65, %58
  %81 = load %struct.secashead*, %struct.secashead** %4, align 8
  %82 = getelementptr inbounds %struct.secashead, %struct.secashead* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IPSEC_MODE_TUNNEL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %89 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SADB_X_EXT_NATT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %87, %80
  %95 = load %struct.secashead*, %struct.secashead** %4, align 8
  %96 = getelementptr inbounds %struct.secashead, %struct.secashead* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IPSEC_MODE_TRANSPORT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %103 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101, %87
  %109 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %110 = icmp eq %struct.secasvar* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %112, %struct.secasvar** %10, align 8
  br label %223

113:                                              ; preds = %108
  %114 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  store %struct.secasvar* %114, %struct.secasvar** %9, align 8
  br label %115

115:                                              ; preds = %113
  br label %124

116:                                              ; preds = %101, %94
  %117 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  %118 = icmp eq %struct.secasvar* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %120, %struct.secasvar** %11, align 8
  br label %223

121:                                              ; preds = %116
  %122 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  store %struct.secasvar* %122, %struct.secasvar** %9, align 8
  br label %123

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %126 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = icmp eq %struct.TYPE_4__* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %131 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = icmp eq %struct.TYPE_4__* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %124
  %135 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  %137 = load i64, i64* @key_preferred_oldsa, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %141 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %146 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %144, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %139
  %152 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %153 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %159, %struct.secasvar** %10, align 8
  br label %162

160:                                              ; preds = %151
  %161 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %161, %struct.secasvar** %11, align 8
  br label %162

162:                                              ; preds = %160, %158
  br label %163

163:                                              ; preds = %162, %139
  br label %223

164:                                              ; preds = %136
  %165 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %166 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %165, i32 0, i32 3
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %171 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %170, i32 0, i32 3
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %169, %174
  br i1 %175, label %176, label %210

176:                                              ; preds = %164
  %177 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  store %struct.secasvar* %177, %struct.secasvar** %12, align 8
  %178 = load %struct.secashead*, %struct.secashead** %4, align 8
  %179 = getelementptr inbounds %struct.secashead, %struct.secashead* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IPSEC_MODE_TUNNEL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %176
  %185 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %186 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SADB_X_EXT_NATT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %184, %176
  %192 = load %struct.secashead*, %struct.secashead** %4, align 8
  %193 = getelementptr inbounds %struct.secashead, %struct.secashead* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @IPSEC_MODE_TRANSPORT, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  %200 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198, %184
  %206 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %206, %struct.secasvar** %10, align 8
  br label %209

207:                                              ; preds = %198, %191
  %208 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %208, %struct.secasvar** %11, align 8
  br label %209

209:                                              ; preds = %207, %205
  br label %212

210:                                              ; preds = %164
  %211 = load %struct.secasvar*, %struct.secasvar** %7, align 8
  store %struct.secasvar* %211, %struct.secasvar** %12, align 8
  br label %212

212:                                              ; preds = %210, %209
  %213 = load %struct.secasvar*, %struct.secasvar** %12, align 8
  %214 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %213, i32 0, i32 3
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load %struct.secasvar*, %struct.secasvar** %12, align 8
  %221 = call i32 @key_send_delete(%struct.secasvar* %220)
  br label %222

222:                                              ; preds = %219, %212
  br label %223

223:                                              ; preds = %222, %163, %119, %111, %79, %57
  %224 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  store %struct.secasvar* %224, %struct.secasvar** %7, align 8
  br label %22

225:                                              ; preds = %22
  %226 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %227 = icmp eq %struct.secasvar* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  store %struct.secasvar* %229, %struct.secasvar** %9, align 8
  br label %266

230:                                              ; preds = %225
  %231 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  %232 = icmp eq %struct.secasvar* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  store %struct.secasvar* %234, %struct.secasvar** %9, align 8
  br label %265

235:                                              ; preds = %230
  %236 = load %struct.secashead*, %struct.secashead** %4, align 8
  %237 = getelementptr inbounds %struct.secashead, %struct.secashead* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @IPSEC_MODE_TUNNEL, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = load i64, i64* %6, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  store %struct.secasvar* %246, %struct.secasvar** %9, align 8
  br label %264

247:                                              ; preds = %242, %235
  %248 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %249 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %248, i32 0, i32 3
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  %254 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %253, i32 0, i32 3
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sgt i64 %252, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %247
  %260 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  store %struct.secasvar* %260, %struct.secasvar** %9, align 8
  br label %263

261:                                              ; preds = %247
  %262 = load %struct.secasvar*, %struct.secasvar** %11, align 8
  store %struct.secasvar* %262, %struct.secasvar** %9, align 8
  br label %263

263:                                              ; preds = %261, %259
  br label %264

264:                                              ; preds = %263, %245
  br label %265

265:                                              ; preds = %264, %233
  br label %266

266:                                              ; preds = %265, %228
  %267 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %268 = icmp ne %struct.secasvar* %267, null
  br i1 %268, label %269, label %283

269:                                              ; preds = %266
  %270 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %271 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 8
  %274 = load i32, i32* @KEYDEBUG_IPSEC_STAMP, align 4
  %275 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %276 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %279 = call i64 @VM_KERNEL_ADDRPERM(%struct.secasvar* %278)
  %280 = trunc i64 %279 to i32
  %281 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %277, i32 %280)
  %282 = call i32 @KEYDEBUG(i32 %274, i32 %281)
  br label %283

283:                                              ; preds = %269, %266
  %284 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  ret %struct.secasvar* %284
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.secasvar* @LIST_FIRST(i32*) #1

declare dso_local %struct.secasvar* @LIST_NEXT(%struct.secasvar*, i32) #1

declare dso_local i32 @KEY_CHKSASTATE(i32, i64, i8*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @key_send_delete(%struct.secasvar*) #1

declare dso_local i32 @KEYDEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.secasvar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
