; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_deint_12_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_deint_12_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"decomb\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"PictureDeinterlacePreset\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"PictureCombDetectPreset\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceCustom\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"spatial-metric\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"motion-thresh\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"spatial-thresh\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"filter-mode\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"block-thresh\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"block-width\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"block-height\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"magnitude-thresh\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"variance-thresh\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"laplacian-thresh\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"dilation-thresh\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"erosion-thresh\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"noise-thresh\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"search-distance\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"postproc\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str.26 = private unnamed_addr constant [123 x i8] c"mode=%d:spatial-metric=%d:motion-thresh=%d:spatial-thresh=%d:filter-mode=%d:block-thresh=%d:block-width=%d:block-height=%d\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"PictureCombDetectCustom\00", align 1
@.str.28 = private unnamed_addr constant [161 x i8] c"mode=%d:magnitude-thresh=%d:variance-thresh=%d:laplacian-thresh=%d:dilation-thresh=%d:erosion-thresh=%d:noise-thresh=%d:search-distance=%d:postproc=%d:parity=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_deint_12_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_deint_12_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @hb_dict_get(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %264

40:                                               ; preds = %1
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @hb_value_get_string(i32* %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %264

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %264

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call i32* @hb_dict_get(i32* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @hb_dict_set(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %264

60:                                               ; preds = %51
  %61 = load i32*, i32** %3, align 8
  %62 = call i8* @hb_value_get_string(i32* %61)
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %264

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @strcasecmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @hb_value_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i32 @hb_dict_set(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @hb_dict_set(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %264

77:                                               ; preds = %66
  %78 = load i8*, i8** %4, align 8
  %79 = call i64 @strcasecmp(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @strcasecmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %77
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @hb_dict_set(i32* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %264

89:                                               ; preds = %81
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strcasecmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 @hb_dict_set(i32* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 @hb_dict_set(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %264

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  %103 = load i32*, i32** %2, align 8
  %104 = call i32* @hb_dict_get(i32* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32* %104, i32** %3, align 8
  %105 = load i32*, i32** %3, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i32 @hb_dict_set(i32* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %264

111:                                              ; preds = %102
  %112 = load i32*, i32** %3, align 8
  %113 = call i8* @hb_value_get_string(i32* %112)
  store i8* %113, i8** %4, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %264

117:                                              ; preds = %111
  %118 = load i8*, i8** %4, align 8
  %119 = call i32* @hb_parse_filter_settings(i8* %118)
  store i32* %119, i32** %5, align 8
  store i32 7, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 3, i32* %19, align 4
  store i32 3, i32* %20, align 4
  store i32 2, i32* %21, align 4
  store i32 40, i32* %22, align 4
  store i32 16, i32* %23, align 4
  store i32 16, i32* %24, align 4
  store i32 10, i32* %25, align 4
  store i32 20, i32* %26, align 4
  store i32 20, i32* %27, align 4
  store i32 4, i32* %28, align 4
  store i32 2, i32* %29, align 4
  store i32 50, i32* %30, align 4
  store i32 24, i32* %31, align 4
  store i32 1, i32* %32, align 4
  store i32 -1, i32* %33, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @hb_dict_extract_int(i32* %17, i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @hb_dict_extract_int(i32* %18, i32* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @hb_dict_extract_int(i32* %19, i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @hb_dict_extract_int(i32* %20, i32* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @hb_dict_extract_int(i32* %21, i32* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @hb_dict_extract_int(i32* %22, i32* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @hb_dict_extract_int(i32* %23, i32* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @hb_dict_extract_int(i32* %24, i32* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @hb_dict_extract_int(i32* %25, i32* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @hb_dict_extract_int(i32* %26, i32* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @hb_dict_extract_int(i32* %27, i32* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @hb_dict_extract_int(i32* %28, i32* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @hb_dict_extract_int(i32* %29, i32* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @hb_dict_extract_int(i32* %30, i32* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @hb_dict_extract_int(i32* %31, i32* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @hb_dict_extract_int(i32* %32, i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @hb_dict_extract_int(i32* %33, i32* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %154 = call i32 @hb_value_free(i32** %5)
  %155 = load i32, i32* %17, align 4
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %17, align 4
  %162 = and i32 %161, 2
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %17, align 4
  %168 = and i32 %167, 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %17, align 4
  %174 = and i32 %173, 8
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %17, align 4
  %180 = and i32 %179, 32
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %17, align 4
  %186 = and i32 %185, 64
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %17, align 4
  %192 = and i32 %191, 128
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %17, align 4
  %198 = and i32 %197, 256
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %17, align 4
  %204 = and i32 %203, 512
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = mul nsw i32 %210, 2
  %212 = add nsw i32 %209, %211
  %213 = load i32, i32* %10, align 4
  %214 = mul nsw i32 %213, 4
  %215 = add nsw i32 %212, %214
  %216 = load i32, i32* %14, align 4
  %217 = mul nsw i32 %216, 8
  %218 = add nsw i32 %215, %217
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %7, align 4
  %221 = mul nsw i32 %220, 2
  %222 = add nsw i32 %219, %221
  %223 = load i32, i32* %8, align 4
  %224 = mul nsw i32 %223, 4
  %225 = add nsw i32 %222, %224
  %226 = load i32, i32* %9, align 4
  %227 = mul nsw i32 %226, 8
  %228 = add nsw i32 %225, %227
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 %229, 16
  %231 = add nsw i32 %228, %230
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %21, align 4
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* %23, align 4
  %239 = load i32, i32* %24, align 4
  %240 = call i8* (i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @hb_strdup_printf(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.26, i64 0, i64 0), i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  store i8* %240, i8** %34, align 8
  %241 = load i32*, i32** %2, align 8
  %242 = load i8*, i8** %34, align 8
  %243 = call i32 @hb_value_string(i8* %242)
  %244 = call i32 @hb_dict_set(i32* %241, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 %243)
  %245 = load i8*, i8** %34, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %25, align 4
  %249 = load i32, i32* %26, align 4
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %28, align 4
  %252 = load i32, i32* %29, align 4
  %253 = load i32, i32* %30, align 4
  %254 = load i32, i32* %31, align 4
  %255 = load i32, i32* %32, align 4
  %256 = load i32, i32* %33, align 4
  %257 = call i8* (i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @hb_strdup_printf(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.28, i64 0, i64 0), i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  store i8* %257, i8** %34, align 8
  %258 = load i32*, i32** %2, align 8
  %259 = load i8*, i8** %34, align 8
  %260 = call i32 @hb_value_string(i8* %259)
  %261 = call i32 @hb_dict_set(i32* %258, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %260)
  %262 = load i8*, i8** %34, align 8
  %263 = call i32 @free(i8* %262)
  br label %264

264:                                              ; preds = %117, %116, %107, %93, %85, %70, %65, %56, %50, %45, %39
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32* @hb_parse_filter_settings(i8*) #1

declare dso_local i32 @hb_dict_extract_int(i32*, i32*, i8*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
