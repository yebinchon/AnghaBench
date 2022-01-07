; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_write_attr_perm_check.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_write_attr_perm_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i64 }

@GATT_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"gatts_write_attr_perm_check op_code=0x%0x handle=0x%04x offset=%d len=%d sec_flag=0x%0x key_size=%d\00", align 1
@GATT_ENCRYPT_KEY_SIZE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"gatts_write_attr_perm_check p_attr->permission =0x%04x min_key_size==0x%04x\00", align 1
@GATT_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_REQ_WRITE = common dso_local global i64 0, align 8
@GATT_WRITE_SIGNED_PERM = common dso_local global i32 0, align 4
@GATT_PERM_WRITE_SIGNED = common dso_local global i32 0, align 4
@GATT_PERM_WRITE_ENCRYPTED = common dso_local global i32 0, align 4
@GATT_PERM_WRITE_SIGNED_MITM = common dso_local global i32 0, align 4
@GATT_PERM_WRITE_ENC_MITM = common dso_local global i32 0, align 4
@GATT_SIGN_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_WRITE_NOT_PERMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"gatts_write_attr_perm_check - sign cmd write not allowed\00", align 1
@GATT_SEC_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"gatts_write_attr_perm_check - Error!! sign cmd write sent on a encypted link\00", align 1
@GATT_WRITE_ALLOWED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"gatts_write_attr_perm_check - GATT_WRITE_NOT_PERMIT\00", align 1
@GATT_WRITE_AUTH_REQUIRED = common dso_local global i32 0, align 4
@GATT_SEC_FLAG_LKEY_UNAUTHED = common dso_local global i32 0, align 4
@GATT_INSUF_AUTHENTICATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"gatts_write_attr_perm_check - GATT_INSUF_AUTHENTICATION\00", align 1
@GATT_WRITE_MITM_REQUIRED = common dso_local global i32 0, align 4
@GATT_SEC_FLAG_LKEY_AUTHED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"gatts_write_attr_perm_check - GATT_INSUF_AUTHENTICATION: MITM required\00", align 1
@GATT_WRITE_ENCRYPTED_PERM = common dso_local global i32 0, align 4
@GATT_INSUF_ENCRYPTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"gatts_write_attr_perm_check - GATT_INSUF_ENCRYPTION\00", align 1
@GATT_INSUF_KEY_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"gatts_write_attr_perm_check - GATT_INSUF_KEY_SIZE\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"gatts_write_attr_perm_check - GATT_INSUF_AUTHENTICATION: LE security mode 2 required\00", align 1
@GATT_ATTR_UUID_TYPE_16 = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i32 0, align 4
@GATT_ATTR_UUID_TYPE_128 = common dso_local global i64 0, align 8
@GATT_ATTR_UUID_TYPE_32 = common dso_local global i64 0, align 8
@GATT_REQ_PREPARE_WRITE = common dso_local global i64 0, align 8
@GATT_NOT_LONG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"gatts_write_attr_perm_check - GATT_NOT_LONG\00", align 1
@GATT_INVALID_ATTR_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"gatts_write_attr_perm_check - GATT_INVALID_PDU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatts_write_attr_perm_check(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %22 = load i32, i32* @GATT_NOT_FOUND, align 4
  store i32 %22, i32* %17, align 4
  store i64 0, i64* %19, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i64, i64* %16, align 8
  %29 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i64 %25, i64 %26, i32 %27, i64 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %319

32:                                               ; preds = %8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %18, align 8
  br label %37

37:                                               ; preds = %317, %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %318

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %312

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @GATT_ENCRYPT_KEY_SIZE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 12
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %21, align 8
  %55 = load i64, i64* %21, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i64, i64* %21, align 8
  %59 = add nsw i64 %58, 6
  store i64 %59, i64* %21, align 8
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %21, align 8
  %65 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @GATT_CMD_WRITE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @GATT_REQ_WRITE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %114

73:                                               ; preds = %69, %60
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* @GATT_WRITE_SIGNED_PERM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %73
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @GATT_PERM_WRITE_SIGNED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @GATT_PERM_WRITE_ENCRYPTED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @GATT_PERM_WRITE_ENCRYPTED, align 4
  store i32 %89, i32* %20, align 4
  br label %113

90:                                               ; preds = %83, %78
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @GATT_PERM_WRITE_SIGNED_MITM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* @GATT_PERM_WRITE_ENCRYPTED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @GATT_WRITE_SIGNED_PERM, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @GATT_PERM_WRITE_ENC_MITM, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105, %95
  %111 = load i32, i32* @GATT_PERM_WRITE_ENC_MITM, align 4
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %110, %105, %100
  br label %113

113:                                              ; preds = %112, %88
  br label %114

114:                                              ; preds = %113, %73, %69
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @GATT_SIGN_CMD_WRITE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @GATT_WRITE_SIGNED_PERM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @GATT_WRITE_NOT_PERMIT, align 4
  store i32 %124, i32* %17, align 4
  %125 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %118, %114
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @GATT_SIGN_CMD_WRITE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @GATT_SEC_FLAG_ENCRYPTED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %136, i32* %17, align 4
  %137 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  br label %311

138:                                              ; preds = %130, %126
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* @GATT_WRITE_ALLOWED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @GATT_WRITE_NOT_PERMIT, align 4
  store i32 %144, i32* %17, align 4
  %145 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %310

146:                                              ; preds = %138
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* @GATT_WRITE_AUTH_REQUIRED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @GATT_SEC_FLAG_LKEY_UNAUTHED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* @GATT_INSUF_AUTHENTICATION, align 4
  store i32 %157, i32* %17, align 4
  %158 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %309

159:                                              ; preds = %151, %146
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* @GATT_WRITE_MITM_REQUIRED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @GATT_SEC_FLAG_LKEY_AUTHED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @GATT_INSUF_AUTHENTICATION, align 4
  store i32 %170, i32* %17, align 4
  %171 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  br label %308

172:                                              ; preds = %164, %159
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* @GATT_WRITE_ENCRYPTED_PERM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @GATT_SEC_FLAG_ENCRYPTED, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @GATT_INSUF_ENCRYPTION, align 4
  store i32 %183, i32* %17, align 4
  %184 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %307

185:                                              ; preds = %177, %172
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* @GATT_WRITE_ENCRYPTED_PERM, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @GATT_SEC_FLAG_ENCRYPTED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load i64, i64* %16, align 8
  %197 = load i64, i64* %21, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* @GATT_INSUF_KEY_SIZE, align 4
  store i32 %200, i32* %17, align 4
  %201 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  br label %306

202:                                              ; preds = %195, %190, %185
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* @GATT_WRITE_SIGNED_PERM, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %202
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* @GATT_SIGN_CMD_WRITE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %207
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @GATT_SEC_FLAG_ENCRYPTED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* @GATT_WRITE_ALLOWED, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32, i32* @GATT_INSUF_AUTHENTICATION, align 4
  store i32 %222, i32* %17, align 4
  %223 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0))
  br label %305

224:                                              ; preds = %216, %211, %207, %202
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %224
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  switch i32 %233, label %238 [
    i32 130, label %234
    i32 131, label %234
    i32 134, label %234
    i32 128, label %234
    i32 133, label %236
    i32 129, label %236
    i32 132, label %237
  ]

234:                                              ; preds = %230, %230, %230, %230
  %235 = load i32, i32* @GATT_WRITE_NOT_PERMIT, align 4
  store i32 %235, i32* %17, align 4
  br label %240

236:                                              ; preds = %230, %230
  store i64 2, i64* %19, align 8
  br label %237

237:                                              ; preds = %230, %236
  br label %238

238:                                              ; preds = %230, %237
  %239 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %239, i32* %17, align 4
  br label %240

240:                                              ; preds = %238, %234
  br label %258

241:                                              ; preds = %224
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @GATT_ATTR_UUID_TYPE_128, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @GATT_ATTR_UUID_TYPE_32, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %247, %241
  %254 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %254, i32* %17, align 4
  br label %257

255:                                              ; preds = %247
  %256 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %256, i32* %17, align 4
  br label %257

257:                                              ; preds = %255, %253
  br label %258

258:                                              ; preds = %257, %240
  %259 = load i64*, i64** %13, align 8
  %260 = icmp eq i64* %259, null
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load i64, i64* %14, align 8
  %263 = icmp sgt i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %265, i32* %17, align 4
  br label %304

266:                                              ; preds = %261, %258
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %303

272:                                              ; preds = %266
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 133
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 129
  br i1 %281, label %282, label %303

282:                                              ; preds = %277, %272
  %283 = load i64, i64* %10, align 8
  %284 = load i64, i64* @GATT_REQ_PREPARE_WRITE, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = load i64, i64* %12, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i32, i32* @GATT_NOT_LONG, align 4
  store i32 %290, i32* %17, align 4
  %291 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %302

292:                                              ; preds = %286, %282
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* %19, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %292
  %297 = load i32, i32* @GATT_INVALID_ATTR_LEN, align 4
  store i32 %297, i32* %17, align 4
  %298 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %301

299:                                              ; preds = %292
  %300 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %300, i32* %17, align 4
  br label %301

301:                                              ; preds = %299, %296
  br label %302

302:                                              ; preds = %301, %289
  br label %303

303:                                              ; preds = %302, %277, %266
  br label %304

304:                                              ; preds = %303, %264
  br label %305

305:                                              ; preds = %304, %221
  br label %306

306:                                              ; preds = %305, %199
  br label %307

307:                                              ; preds = %306, %182
  br label %308

308:                                              ; preds = %307, %169
  br label %309

309:                                              ; preds = %308, %156
  br label %310

310:                                              ; preds = %309, %143
  br label %311

311:                                              ; preds = %310, %135
  br label %318

312:                                              ; preds = %40
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = inttoptr i64 %315 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %316, %struct.TYPE_5__** %18, align 8
  br label %317

317:                                              ; preds = %312
  br label %37

318:                                              ; preds = %311, %37
  br label %319

319:                                              ; preds = %318, %8
  %320 = load i32, i32* %17, align 4
  ret i32 %320
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
