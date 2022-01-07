; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_set_value_in_nvs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_set_value_in_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVS_TYPE_ANY = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Type '%s' is undefined\00", align 1
@ESP_ERR_NVS_TYPE_MISMATCH = common dso_local global i64 0, align 8
@current_namespace = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@NVS_TYPE_I8 = common dso_local global i64 0, align 8
@INT8_MIN = common dso_local global i64 0, align 8
@INT8_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@NVS_TYPE_U8 = common dso_local global i64 0, align 8
@UINT8_MAX = common dso_local global i64 0, align 8
@NVS_TYPE_I16 = common dso_local global i64 0, align 8
@INT16_MIN = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@NVS_TYPE_U16 = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@NVS_TYPE_I32 = common dso_local global i64 0, align 8
@NVS_TYPE_U32 = common dso_local global i64 0, align 8
@NVS_TYPE_I64 = common dso_local global i64 0, align 8
@NVS_TYPE_U64 = common dso_local global i64 0, align 8
@NVS_TYPE_STR = common dso_local global i64 0, align 8
@NVS_TYPE_BLOB = common dso_local global i64 0, align 8
@ESP_ERR_NVS_VALUE_TOO_LONG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Value stored under key '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*)* @set_value_in_nvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_value_in_nvs(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @str_to_type(i8* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @NVS_TYPE_ANY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @TAG, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i64, i64* @ESP_ERR_NVS_TYPE_MISMATCH, align 8
  store i64 %29, i64* %4, align 8
  br label %256

30:                                               ; preds = %3
  %31 = load i32, i32* @current_namespace, align 4
  %32 = load i32, i32* @NVS_READWRITE, align 4
  %33 = call i64 @nvs_open(i32 %31, i32 %32, i32* %9)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %256

39:                                               ; preds = %30
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @NVS_TYPE_I8, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strtol(i8* %44, i32* null, i32 0)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @INT8_MIN, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @INT8_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ERANGE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49, %43
  store i32 1, i32* %10, align 4
  br label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %12, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @nvs_set_i8(i32 %59, i8* %60, i32 %62)
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %58, %57
  br label %226

65:                                               ; preds = %39
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @NVS_TYPE_U8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @strtoul(i8* %70, i32* null, i32 0)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @UINT8_MAX, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @ERANGE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %69
  store i32 1, i32* %10, align 4
  br label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %13, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @nvs_set_u8(i32 %81, i8* %82, i32 %84)
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %80, %79
  br label %225

87:                                               ; preds = %65
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @NVS_TYPE_I16, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @strtol(i8* %92, i32* null, i32 0)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @INT16_MIN, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @INT16_MAX, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @ERANGE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %97, %91
  store i32 1, i32* %10, align 4
  br label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* %14, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i64 @nvs_set_i16(i32 %107, i8* %108, i32 %110)
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %106, %105
  br label %224

113:                                              ; preds = %87
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* @NVS_TYPE_U16, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i8*, i8** %7, align 8
  %119 = call i64 @strtoul(i8* %118, i32* null, i32 0)
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* @UINT16_MAX, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @ERANGE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %117
  store i32 1, i32* %10, align 4
  br label %134

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = load i64, i64* %15, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i64 @nvs_set_u16(i32 %129, i8* %130, i32 %132)
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %128, %127
  br label %223

135:                                              ; preds = %113
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* @NVS_TYPE_I32, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @strtol(i8* %140, i32* null, i32 0)
  store i64 %141, i64* %16, align 8
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @ERANGE, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i64 @nvs_set_i32(i32 %146, i8* %147, i64 %148)
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %145, %139
  br label %222

151:                                              ; preds = %135
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* @NVS_TYPE_U32, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load i8*, i8** %7, align 8
  %157 = call i64 @strtoul(i8* %156, i32* null, i32 0)
  store i64 %157, i64* %17, align 8
  %158 = load i64, i64* @errno, align 8
  %159 = load i64, i64* @ERANGE, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32, i32* %9, align 4
  %163 = load i8*, i8** %5, align 8
  %164 = load i64, i64* %17, align 8
  %165 = call i64 @nvs_set_u32(i32 %162, i8* %163, i64 %164)
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %161, %155
  br label %221

167:                                              ; preds = %151
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* @NVS_TYPE_I64, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @strtoll(i8* %172, i32* null, i32 0)
  store i32 %173, i32* %18, align 4
  %174 = load i64, i64* @errno, align 8
  %175 = load i64, i64* @ERANGE, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load i32, i32* %9, align 4
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* %18, align 4
  %181 = call i64 @nvs_set_i64(i32 %178, i8* %179, i32 %180)
  store i64 %181, i64* %8, align 8
  br label %182

182:                                              ; preds = %177, %171
  br label %220

183:                                              ; preds = %167
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* @NVS_TYPE_U64, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @strtoull(i8* %188, i32* null, i32 0)
  store i32 %189, i32* %19, align 4
  %190 = load i64, i64* @errno, align 8
  %191 = load i64, i64* @ERANGE, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load i32, i32* %9, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* %19, align 4
  %197 = call i64 @nvs_set_u64(i32 %194, i8* %195, i32 %196)
  store i64 %197, i64* %8, align 8
  br label %198

198:                                              ; preds = %193, %187
  br label %219

199:                                              ; preds = %183
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* @NVS_TYPE_STR, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load i32, i32* %9, align 4
  %205 = load i8*, i8** %5, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = call i64 @nvs_set_str(i32 %204, i8* %205, i8* %206)
  store i64 %207, i64* %8, align 8
  br label %218

208:                                              ; preds = %199
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* @NVS_TYPE_BLOB, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %9, align 4
  %214 = load i8*, i8** %5, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = call i64 @store_blob(i32 %213, i8* %214, i8* %215)
  store i64 %216, i64* %8, align 8
  br label %217

217:                                              ; preds = %212, %208
  br label %218

218:                                              ; preds = %217, %203
  br label %219

219:                                              ; preds = %218, %198
  br label %220

220:                                              ; preds = %219, %182
  br label %221

221:                                              ; preds = %220, %166
  br label %222

222:                                              ; preds = %221, %150
  br label %223

223:                                              ; preds = %222, %134
  br label %224

224:                                              ; preds = %223, %112
  br label %225

225:                                              ; preds = %224, %86
  br label %226

226:                                              ; preds = %225, %64
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = load i64, i64* @errno, align 8
  %231 = load i64, i64* @ERANGE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229, %226
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @nvs_close(i32 %234)
  %236 = load i64, i64* @ESP_ERR_NVS_VALUE_TOO_LONG, align 8
  store i64 %236, i64* %4, align 8
  br label %256

237:                                              ; preds = %229
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* @ESP_OK, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %237
  %242 = load i32, i32* %9, align 4
  %243 = call i64 @nvs_commit(i32 %242)
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load i64, i64* @ESP_OK, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load i32, i32* @TAG, align 4
  %249 = load i8*, i8** %5, align 8
  %250 = call i32 @ESP_LOGI(i32 %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %247, %241
  br label %252

252:                                              ; preds = %251, %237
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @nvs_close(i32 %253)
  %255 = load i64, i64* %8, align 8
  store i64 %255, i64* %4, align 8
  br label %256

256:                                              ; preds = %252, %233, %37, %25
  %257 = load i64, i64* %4, align 8
  ret i64 %257
}

declare dso_local i64 @str_to_type(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #1

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @nvs_set_i8(i32, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @nvs_set_u8(i32, i8*, i32) #1

declare dso_local i64 @nvs_set_i16(i32, i8*, i32) #1

declare dso_local i64 @nvs_set_u16(i32, i8*, i32) #1

declare dso_local i64 @nvs_set_i32(i32, i8*, i64) #1

declare dso_local i64 @nvs_set_u32(i32, i8*, i64) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i64 @nvs_set_i64(i32, i8*, i32) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i64 @nvs_set_u64(i32, i8*, i32) #1

declare dso_local i64 @nvs_set_str(i32, i8*, i8*) #1

declare dso_local i64 @store_blob(i32, i8*, i8*) #1

declare dso_local i32 @nvs_close(i32) #1

declare dso_local i64 @nvs_commit(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
