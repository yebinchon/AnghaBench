; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_utility.c_esp_efuse_utility_apply_new_coding_scheme.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_utility.c_esp_efuse_utility_apply_new_coding_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@COUNT_EFUSE_REG_PER_BLOCK = common dso_local global i32 0, align 4
@COUNT_EFUSE_BLOCKS = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_NONE = common dso_local global i64 0, align 8
@EFUSE_CODING_SCHEME_3_4 = common dso_local global i64 0, align 8
@ESP_ERR_CODING = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Bits are not empty. Write operation is forbidden.\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@range_write_addr_blocks = common dso_local global %struct.TYPE_2__* null, align 8
@EFUSE_CODING_SCHEME_REPEAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_efuse_utility_apply_new_coding_scheme() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = load i32, i32* @COUNT_EFUSE_REG_PER_BLOCK, align 4
  %19 = mul nsw i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %2, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %3, align 8
  %23 = load i32, i32* @COUNT_EFUSE_REG_PER_BLOCK, align 4
  %24 = mul nsw i32 %23, 4
  %25 = zext i32 %24 to i64
  %26 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %4, align 8
  %27 = load i32, i32* @COUNT_EFUSE_REG_PER_BLOCK, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %221, %0
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @COUNT_EFUSE_BLOCKS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %224

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @esp_efuse_get_coding_scheme(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @EFUSE_CODING_SCHEME_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %220

40:                                               ; preds = %34
  %41 = mul nuw i64 8, %20
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i64* %22, i32 0, i32 %42)
  %44 = mul nuw i64 8, %28
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i64* %29, i32 0, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @read_w_data_and_check_fill(i32 %47, i64* %22)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %219

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @read_r_data(i32 %51, i64* %26)
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @EFUSE_CODING_SCHEME_3_4, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %146

56:                                               ; preds = %50
  %57 = getelementptr inbounds i64, i64* %22, i64 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i64, i64* %22, i64 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56
  %65 = load i64, i64* @ESP_ERR_CODING, align 8
  store i64 %65, i64* %1, align 8
  store i32 1, i32* %8, align 4
  br label %226

66:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %142, %66
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 24
  br i1 %69, label %70, label %145

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %22, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %141

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = sdiv i32 %77, 6
  %79 = mul nsw i32 %78, 6
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %97, %76
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 6
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %26, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @TAG, align 4
  %94 = call i32 @ESP_LOGE(i32 %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %95 = load i64, i64* @ESP_ERR_CODING, align 8
  store i64 %95, i64* %1, align 8
  store i32 1, i32* %8, align 4
  br label %226

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %22, i64 %102
  %104 = call i64 @esp_efuse_utility_apply_34_encoding(i64* %103, i64* %29, i32 6)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @ESP_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %1, align 8
  store i32 1, i32* %8, align 4
  br label %226

110:                                              ; preds = %100
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %111, 6
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %135, %110
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_write_addr_blocks, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %123, %128
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %29, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @REG_WRITE(i64 %129, i64 %133)
  br label %135

135:                                              ; preds = %117
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %114

138:                                              ; preds = %114
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 5
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %138, %70
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %67

145:                                              ; preds = %67
  br label %218

146:                                              ; preds = %50
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @EFUSE_CODING_SCHEME_REPEAT, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %217

150:                                              ; preds = %146
  store i64* %22, i64** %15, align 8
  store i32 4, i32* %16, align 4
  br label %151

151:                                              ; preds = %164, %150
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load i64*, i64** %15, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i64, i64* @ESP_ERR_CODING, align 8
  store i64 %162, i64* %1, align 8
  store i32 1, i32* %8, align 4
  br label %226

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %151

167:                                              ; preds = %151
  store i32 0, i32* %17, align 4
  br label %168

168:                                              ; preds = %213, %167
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %216

171:                                              ; preds = %168
  %172 = load i64*, i64** %15, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %212

178:                                              ; preds = %171
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_write_addr_blocks, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = mul nsw i32 %185, 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %184, %187
  %189 = load i64*, i64** %15, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @REG_WRITE(i64 %188, i64 %193)
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_write_addr_blocks, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 4
  %203 = mul nsw i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %200, %204
  %206 = load i64*, i64** %15, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @REG_WRITE(i64 %205, i64 %210)
  br label %212

212:                                              ; preds = %178, %171
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %168

216:                                              ; preds = %168
  br label %217

217:                                              ; preds = %216, %146
  br label %218

218:                                              ; preds = %217, %145
  br label %219

219:                                              ; preds = %218, %40
  br label %220

220:                                              ; preds = %219, %34
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %30

224:                                              ; preds = %30
  %225 = load i64, i64* @ESP_OK, align 8
  store i64 %225, i64* %1, align 8
  store i32 1, i32* %8, align 4
  br label %226

226:                                              ; preds = %224, %161, %108, %92, %64
  %227 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i64, i64* %1, align 8
  ret i64 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @esp_efuse_get_coding_scheme(i32) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @read_w_data_and_check_fill(i32, i64*) #2

declare dso_local i32 @read_r_data(i32, i64*) #2

declare dso_local i32 @ESP_LOGE(i32, i8*) #2

declare dso_local i64 @esp_efuse_utility_apply_34_encoding(i64*, i64*, i32) #2

declare dso_local i32 @REG_WRITE(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
