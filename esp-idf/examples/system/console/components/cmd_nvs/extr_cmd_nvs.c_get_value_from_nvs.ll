; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_get_value_from_nvs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_get_value_from_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVS_TYPE_ANY = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Type '%s' is undefined\00", align 1
@ESP_ERR_NVS_TYPE_MISMATCH = common dso_local global i64 0, align 8
@current_namespace = common dso_local global i32 0, align 4
@NVS_READONLY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@NVS_TYPE_I8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@NVS_TYPE_U8 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@NVS_TYPE_I16 = common dso_local global i64 0, align 8
@NVS_TYPE_U16 = common dso_local global i64 0, align 8
@NVS_TYPE_I32 = common dso_local global i64 0, align 8
@NVS_TYPE_U32 = common dso_local global i64 0, align 8
@NVS_TYPE_I64 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@NVS_TYPE_U64 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@NVS_TYPE_STR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@NVS_TYPE_BLOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @get_value_from_nvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_value_from_nvs(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @str_to_type(i8* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @NVS_TYPE_ANY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @TAG, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i64, i64* @ESP_ERR_NVS_TYPE_MISMATCH, align 8
  store i64 %30, i64* %3, align 8
  br label %223

31:                                               ; preds = %2
  %32 = load i32, i32* @current_namespace, align 4
  %33 = load i32, i32* @NVS_READONLY, align 4
  %34 = call i64 @nvs_open(i32 %32, i32 %33, i32* %6)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ESP_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %3, align 8
  br label %223

40:                                               ; preds = %31
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @NVS_TYPE_I8, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @nvs_get_i8(i32 %45, i8* %46, i32* %9)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @ESP_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %44
  br label %219

55:                                               ; preds = %40
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @NVS_TYPE_U8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @nvs_get_u8(i32 %60, i8* %61, i32* %10)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @ESP_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %59
  br label %218

70:                                               ; preds = %55
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @NVS_TYPE_I16, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @nvs_get_i16(i32 %75, i8* %76, i32* %11)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @ESP_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %74
  br label %217

85:                                               ; preds = %70
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @NVS_TYPE_U16, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @nvs_get_u16(i32 %90, i8* %91, i32* %12)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* @ESP_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %89
  br label %216

99:                                               ; preds = %85
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @NVS_TYPE_I32, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = call i64 @nvs_get_i32(i32 %104, i8* %105, i32* %13)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* @ESP_OK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %103
  br label %215

113:                                              ; preds = %99
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @NVS_TYPE_U32, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = load i8*, i8** %4, align 8
  %120 = call i64 @nvs_get_u32(i32 %118, i8* %119, i32* %14)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* @ESP_OK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %14, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %214

127:                                              ; preds = %113
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @NVS_TYPE_I64, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = call i64 @nvs_get_i64(i32 %132, i8* %133, i8** %15)
  store i64 %134, i64* %7, align 8
  %135 = load i64, i64* @ESP_OK, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %137, %131
  br label %213

141:                                              ; preds = %127
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @NVS_TYPE_U64, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @nvs_get_u64(i32 %146, i8* %147, i8** %16)
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* @ESP_OK, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %151, %145
  br label %212

155:                                              ; preds = %141
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @NVS_TYPE_STR, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = call i64 @nvs_get_str(i32 %160, i8* %161, i8* null, i64* %17)
  store i64 %162, i64* %7, align 8
  %163 = load i64, i64* @ESP_OK, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %159
  %166 = load i64, i64* %17, align 8
  %167 = call i64 @malloc(i64 %166)
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** %18, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i8*, i8** %4, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = call i64 @nvs_get_str(i32 %169, i8* %170, i8* %171, i64* %17)
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* @ESP_OK, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load i8*, i8** %18, align 8
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %175, %165
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %178, %159
  br label %211

182:                                              ; preds = %155
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* @NVS_TYPE_BLOB, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %182
  %187 = load i32, i32* %6, align 4
  %188 = load i8*, i8** %4, align 8
  %189 = call i64 @nvs_get_blob(i32 %187, i8* %188, i8* null, i64* %19)
  store i64 %189, i64* %7, align 8
  %190 = load i64, i64* @ESP_OK, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %186
  %193 = load i64, i64* %19, align 8
  %194 = call i64 @malloc(i64 %193)
  %195 = inttoptr i64 %194 to i8*
  store i8* %195, i8** %20, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i8*, i8** %4, align 8
  %198 = load i8*, i8** %20, align 8
  %199 = call i64 @nvs_get_blob(i32 %196, i8* %197, i8* %198, i64* %19)
  store i64 %199, i64* %7, align 8
  %200 = load i64, i64* @ESP_OK, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %192
  %203 = load i8*, i8** %20, align 8
  %204 = load i64, i64* %19, align 8
  %205 = call i32 @print_blob(i8* %203, i64 %204)
  br label %206

206:                                              ; preds = %202, %192
  %207 = load i8*, i8** %20, align 8
  %208 = call i32 @free(i8* %207)
  br label %209

209:                                              ; preds = %206, %186
  br label %210

210:                                              ; preds = %209, %182
  br label %211

211:                                              ; preds = %210, %181
  br label %212

212:                                              ; preds = %211, %154
  br label %213

213:                                              ; preds = %212, %140
  br label %214

214:                                              ; preds = %213, %126
  br label %215

215:                                              ; preds = %214, %112
  br label %216

216:                                              ; preds = %215, %98
  br label %217

217:                                              ; preds = %216, %84
  br label %218

218:                                              ; preds = %217, %69
  br label %219

219:                                              ; preds = %218, %54
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @nvs_close(i32 %220)
  %222 = load i64, i64* %7, align 8
  store i64 %222, i64* %3, align 8
  br label %223

223:                                              ; preds = %219, %38, %26
  %224 = load i64, i64* %3, align 8
  ret i64 %224
}

declare dso_local i64 @str_to_type(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #1

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @nvs_get_i8(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @nvs_get_u8(i32, i8*, i32*) #1

declare dso_local i64 @nvs_get_i16(i32, i8*, i32*) #1

declare dso_local i64 @nvs_get_u16(i32, i8*, i32*) #1

declare dso_local i64 @nvs_get_i32(i32, i8*, i32*) #1

declare dso_local i64 @nvs_get_u32(i32, i8*, i32*) #1

declare dso_local i64 @nvs_get_i64(i32, i8*, i8**) #1

declare dso_local i64 @nvs_get_u64(i32, i8*, i8**) #1

declare dso_local i64 @nvs_get_str(i32, i8*, i8*, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @nvs_get_blob(i32, i8*, i8*, i64*) #1

declare dso_local i32 @print_blob(i8*, i64) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
