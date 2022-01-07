; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_resize_network.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_resize_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@CONVOLUTIONAL = common dso_local global i64 0, align 8
@CROP = common dso_local global i64 0, align 8
@MAXPOOL = common dso_local global i64 0, align 8
@REGION = common dso_local global i64 0, align 8
@YOLO = common dso_local global i64 0, align 8
@ROUTE = common dso_local global i64 0, align 8
@SHORTCUT = common dso_local global i64 0, align 8
@UPSAMPLE = common dso_local global i64 0, align 8
@REORG = common dso_local global i64 0, align 8
@AVGPOOL = common dso_local global i64 0, align 8
@NORMALIZATION = common dso_local global i64 0, align 8
@COST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Cannot resize this type of layer\00", align 1
@gpu_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resize_network(%struct.TYPE_19__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %186, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %189

24:                                               ; preds = %18
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 13
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i64 %29
  %31 = bitcast %struct.TYPE_20__* %10 to i8*
  %32 = bitcast %struct.TYPE_20__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 40, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CONVOLUTIONAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @resize_convolutional_layer(%struct.TYPE_20__* %10, i32 %38, i32 %39)
  br label %151

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CROP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @resize_crop_layer(%struct.TYPE_20__* %10, i32 %47, i32 %48)
  br label %150

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAXPOOL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @resize_maxpool_layer(%struct.TYPE_20__* %10, i32 %56, i32 %57)
  br label %149

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REGION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @resize_region_layer(%struct.TYPE_20__* %10, i32 %65, i32 %66)
  br label %148

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @YOLO, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @resize_yolo_layer(%struct.TYPE_20__* %10, i32 %74, i32 %75)
  br label %147

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ROUTE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = call i32 @resize_route_layer(%struct.TYPE_20__* %10, %struct.TYPE_19__* %83)
  br label %146

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SHORTCUT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @resize_shortcut_layer(%struct.TYPE_20__* %10, i32 %91, i32 %92)
  br label %145

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @UPSAMPLE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @resize_upsample_layer(%struct.TYPE_20__* %10, i32 %100, i32 %101)
  br label %144

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @REORG, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @resize_reorg_layer(%struct.TYPE_20__* %10, i32 %109, i32 %110)
  br label %143

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AVGPOOL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @resize_avgpool_layer(%struct.TYPE_20__* %10, i32 %118, i32 %119)
  br label %142

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NORMALIZATION, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @resize_normalization_layer(%struct.TYPE_20__* %10, i32 %127, i32 %128)
  br label %141

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @COST, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @resize_cost_layer(%struct.TYPE_20__* %10, i32 %136)
  br label %140

138:                                              ; preds = %130
  %139 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  br label %141

141:                                              ; preds = %140, %126
  br label %142

142:                                              ; preds = %141, %117
  br label %143

143:                                              ; preds = %142, %108
  br label %144

144:                                              ; preds = %143, %99
  br label %145

145:                                              ; preds = %144, %90
  br label %146

146:                                              ; preds = %145, %82
  br label %147

147:                                              ; preds = %146, %73
  br label %148

148:                                              ; preds = %147, %64
  br label %149

149:                                              ; preds = %148, %55
  br label %150

150:                                              ; preds = %149, %46
  br label %151

151:                                              ; preds = %150, %37
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %9, align 8
  br label %159

159:                                              ; preds = %156, %151
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ugt i64 %161, 2000000000
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 @assert(i32 0)
  br label %165

165:                                              ; preds = %163, %159
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %8, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 13
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i64 %172
  %174 = bitcast %struct.TYPE_20__* %173 to i8*
  %175 = bitcast %struct.TYPE_20__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 40, i1 false)
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %5, align 4
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %6, align 4
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AVGPOOL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %165
  br label %189

185:                                              ; preds = %165
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %18

189:                                              ; preds = %184, %18
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  call void @get_network_output_layer(%struct.TYPE_20__* sret %11, %struct.TYPE_19__* %190)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 13
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 13
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %189
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 13
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %221, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %219, %189
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 12
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 10
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @free(i8* %240)
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 8
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @free(i8* %244)
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = mul nsw i32 %248, %251
  %253 = call i8* @calloc(i32 %252, i64 4)
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 10
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = mul nsw i32 %258, %261
  %263 = call i8* @calloc(i32 %262, i64 4)
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 8
  store i8* %263, i8** %265, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 7
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @free(i8* %268)
  %270 = load i64, i64* %9, align 8
  %271 = call i8* @calloc(i32 1, i64 %270)
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 7
  store i8* %271, i8** %273, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @resize_convolutional_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_crop_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_maxpool_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_region_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_yolo_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_route_layer(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @resize_shortcut_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_upsample_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_reorg_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_avgpool_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_normalization_layer(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @resize_cost_layer(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local void @get_network_output_layer(%struct.TYPE_20__* sret, %struct.TYPE_19__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @calloc(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
