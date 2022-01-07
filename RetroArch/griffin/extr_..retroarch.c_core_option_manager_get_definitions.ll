; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_core_option_manager_get_definitions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_core_option_manager_get_definitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_core_option_definition = type { i8*, i8*, i8*, %struct.retro_core_option_value*, i32 }
%struct.retro_core_option_value = type { i8*, i8* }
%struct.retro_core_options_intl = type { %struct.retro_core_option_definition*, %struct.retro_core_option_definition* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.retro_core_option_definition* (%struct.retro_core_options_intl*)* @core_option_manager_get_definitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.retro_core_option_definition* @core_option_manager_get_definitions(%struct.retro_core_options_intl* %0) #0 {
  %2 = alloca %struct.retro_core_option_definition*, align 8
  %3 = alloca %struct.retro_core_options_intl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.retro_core_option_definition*, align 8
  %7 = alloca %struct.retro_core_option_definition*, align 8
  %8 = alloca %struct.retro_core_option_definition*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.retro_core_option_value*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.retro_core_options_intl* %0, %struct.retro_core_options_intl** %3, align 8
  store i64 0, i64* %5, align 8
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %6, align 8
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %7, align 8
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %8, align 8
  %21 = load %struct.retro_core_options_intl*, %struct.retro_core_options_intl** %3, align 8
  %22 = icmp ne %struct.retro_core_options_intl* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %2, align 8
  br label %266

24:                                               ; preds = %1
  %25 = load %struct.retro_core_options_intl*, %struct.retro_core_options_intl** %3, align 8
  %26 = getelementptr inbounds %struct.retro_core_options_intl, %struct.retro_core_options_intl* %25, i32 0, i32 1
  %27 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %26, align 8
  store %struct.retro_core_option_definition* %27, %struct.retro_core_option_definition** %6, align 8
  %28 = load %struct.retro_core_options_intl*, %struct.retro_core_options_intl** %3, align 8
  %29 = getelementptr inbounds %struct.retro_core_options_intl, %struct.retro_core_options_intl* %28, i32 0, i32 0
  %30 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %29, align 8
  store %struct.retro_core_option_definition* %30, %struct.retro_core_option_definition** %7, align 8
  %31 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %32 = icmp ne %struct.retro_core_option_definition* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %2, align 8
  br label %266

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %47
  %36 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %36, i64 %37
  %39 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @string_is_empty(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %47

46:                                               ; preds = %35
  br label %48

47:                                               ; preds = %43
  br label %35

48:                                               ; preds = %46
  %49 = load i64, i64* %5, align 8
  %50 = icmp ult i64 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %2, align 8
  br label %266

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  %55 = call i64 @calloc(i64 %54, i32 40)
  %56 = inttoptr i64 %55 to %struct.retro_core_option_definition*
  store %struct.retro_core_option_definition* %56, %struct.retro_core_option_definition** %8, align 8
  %57 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %58 = icmp ne %struct.retro_core_option_definition* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store %struct.retro_core_option_definition* null, %struct.retro_core_option_definition** %2, align 8
  br label %266

60:                                               ; preds = %52
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %261, %60
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %264

65:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  %66 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %66, i64 %67
  %69 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.retro_core_option_value* null, %struct.retro_core_option_value** %14, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %72, i64 %73
  %75 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  %76 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %76, i64 %77
  %79 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %81, i64 %82
  %84 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 8
  %85 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  %86 = icmp ne %struct.retro_core_option_definition* %85, null
  br i1 %86, label %87, label %125

87:                                               ; preds = %65
  store i64 0, i64* %15, align 8
  br label %88

88:                                               ; preds = %87, %123
  %89 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %89, i64 %90
  %92 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %16, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = call i64 @string_is_empty(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %122, label %97

97:                                               ; preds = %88
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = call i64 @string_is_equal(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %103, i64 %104
  %106 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %12, align 8
  %108 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %108, i64 %109
  %111 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %13, align 8
  %113 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %113, i64 %114
  %116 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %115, i32 0, i32 3
  %117 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %116, align 8
  store %struct.retro_core_option_value* %117, %struct.retro_core_option_value** %14, align 8
  br label %124

118:                                              ; preds = %97
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %15, align 8
  br label %121

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %88
  br label %124

123:                                              ; preds = %121
  br label %88

124:                                              ; preds = %122, %102
  br label %125

125:                                              ; preds = %124, %65
  %126 = load i8*, i8** %12, align 8
  %127 = call i64 @string_is_empty(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %130, i64 %131
  %133 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  br label %137

135:                                              ; preds = %125
  %136 = load i8*, i8** %12, align 8
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi i8* [ %134, %129 ], [ %136, %135 ]
  %139 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %140 = load i64, i64* %4, align 8
  %141 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %139, i64 %140
  %142 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %141, i32 0, i32 1
  store i8* %138, i8** %142, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = call i64 @string_is_empty(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %148 = load i64, i64* %4, align 8
  %149 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %147, i64 %148
  %150 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  br label %154

152:                                              ; preds = %137
  %153 = load i8*, i8** %13, align 8
  br label %154

154:                                              ; preds = %152, %146
  %155 = phi i8* [ %151, %146 ], [ %153, %152 ]
  %156 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %157 = load i64, i64* %4, align 8
  %158 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %156, i64 %157
  %159 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %158, i32 0, i32 2
  store i8* %155, i8** %159, align 8
  br label %160

160:                                              ; preds = %154, %176
  %161 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %162 = load i64, i64* %4, align 8
  %163 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %161, i64 %162
  %164 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %163, i32 0, i32 3
  %165 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %165, i64 %166
  %168 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @string_is_empty(i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %160
  %173 = load i64, i64* %10, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %10, align 8
  br label %176

175:                                              ; preds = %160
  br label %177

176:                                              ; preds = %172
  br label %160

177:                                              ; preds = %175
  store i64 0, i64* %9, align 8
  br label %178

178:                                              ; preds = %257, %177
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %10, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %260

182:                                              ; preds = %178
  %183 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %184 = load i64, i64* %4, align 8
  %185 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %183, i64 %184
  %186 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %185, i32 0, i32 3
  %187 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %187, i64 %188
  %190 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %194 = load i64, i64* %4, align 8
  %195 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %193, i64 %194
  %196 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %195, i32 0, i32 3
  %197 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %197, i64 %198
  %200 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %199, i32 0, i32 0
  store i8* %192, i8** %200, align 8
  %201 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %14, align 8
  %202 = icmp ne %struct.retro_core_option_value* %201, null
  br i1 %202, label %203, label %231

203:                                              ; preds = %182
  store i64 0, i64* %19, align 8
  br label %204

204:                                              ; preds = %203, %229
  %205 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %14, align 8
  %206 = load i64, i64* %19, align 8
  %207 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %205, i64 %206
  %208 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %20, align 8
  %210 = load i8*, i8** %20, align 8
  %211 = call i64 @string_is_empty(i8* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %228, label %213

213:                                              ; preds = %204
  %214 = load i8*, i8** %17, align 8
  %215 = load i8*, i8** %20, align 8
  %216 = call i64 @string_is_equal(i8* %214, i8* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %14, align 8
  %220 = load i64, i64* %19, align 8
  %221 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %219, i64 %220
  %222 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %18, align 8
  br label %230

224:                                              ; preds = %213
  %225 = load i64, i64* %19, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %19, align 8
  br label %227

227:                                              ; preds = %224
  br label %229

228:                                              ; preds = %204
  br label %230

229:                                              ; preds = %227
  br label %204

230:                                              ; preds = %228, %218
  br label %231

231:                                              ; preds = %230, %182
  %232 = load i8*, i8** %18, align 8
  %233 = call i64 @string_is_empty(i8* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %231
  %236 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %6, align 8
  %237 = load i64, i64* %4, align 8
  %238 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %236, i64 %237
  %239 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %238, i32 0, i32 3
  %240 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %240, i64 %241
  %243 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  br label %247

245:                                              ; preds = %231
  %246 = load i8*, i8** %18, align 8
  br label %247

247:                                              ; preds = %245, %235
  %248 = phi i8* [ %244, %235 ], [ %246, %245 ]
  %249 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %250 = load i64, i64* %4, align 8
  %251 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %249, i64 %250
  %252 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %251, i32 0, i32 3
  %253 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %252, align 8
  %254 = load i64, i64* %9, align 8
  %255 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %253, i64 %254
  %256 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %255, i32 0, i32 1
  store i8* %248, i8** %256, align 8
  br label %257

257:                                              ; preds = %247
  %258 = load i64, i64* %9, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %9, align 8
  br label %178

260:                                              ; preds = %178
  br label %261

261:                                              ; preds = %260
  %262 = load i64, i64* %4, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %4, align 8
  br label %61

264:                                              ; preds = %61
  %265 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  store %struct.retro_core_option_definition* %265, %struct.retro_core_option_definition** %2, align 8
  br label %266

266:                                              ; preds = %264, %59, %51, %33, %23
  %267 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %2, align 8
  ret %struct.retro_core_option_definition* %267
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
