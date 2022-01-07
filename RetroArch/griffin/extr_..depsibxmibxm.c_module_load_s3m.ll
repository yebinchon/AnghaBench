; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_module_load_s3m.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_module_load_s3m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.pattern*, %struct.instrument*, i32 }
%struct.pattern = type { i32, i32, i8* }
%struct.instrument = type { i32, i32, %struct.sample* }
%struct.sample = type { i32, i32, i32, i32, i32, i16* }
%struct.data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Not an S3M file!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Packed samples not supported!\00", align 1
@FP_SHIFT = common dso_local global i32 0, align 4
@FP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.module* (%struct.data*, i8*)* @module_load_s3m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.module* @module_load_s3m(%struct.data* %0, i8* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.data*, align 8
  %5 = alloca i8*, align 8
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
  %16 = alloca [32 x i32], align 16
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
  %32 = alloca i8*, align 8
  %33 = alloca %struct.instrument*, align 8
  %34 = alloca %struct.sample*, align 8
  %35 = alloca %struct.module*, align 8
  store %struct.data* %0, %struct.data** %4, align 8
  store i8* %1, i8** %5, align 8
  %36 = call i64 @calloc(i32 1, i32 80)
  %37 = inttoptr i64 %36 to %struct.module*
  store %struct.module* %37, %struct.module** %35, align 8
  %38 = load %struct.module*, %struct.module** %35, align 8
  %39 = icmp ne %struct.module* %38, null
  br i1 %39, label %40, label %730

40:                                               ; preds = %2
  %41 = load %struct.data*, %struct.data** %4, align 8
  %42 = load %struct.module*, %struct.module** %35, align 8
  %43 = getelementptr inbounds %struct.module, %struct.module* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @data_ascii(%struct.data* %41, i32 0, i32 28, i32 %44)
  %46 = load %struct.data*, %struct.data** %4, align 8
  %47 = call i32 @data_u16le(%struct.data* %46, i32 32)
  %48 = load %struct.module*, %struct.module** %35, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.data*, %struct.data** %4, align 8
  %51 = call i32 @data_u16le(%struct.data* %50, i32 34)
  %52 = load %struct.module*, %struct.module** %35, align 8
  %53 = getelementptr inbounds %struct.module, %struct.module* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.data*, %struct.data** %4, align 8
  %55 = call i32 @data_u16le(%struct.data* %54, i32 36)
  %56 = load %struct.module*, %struct.module** %35, align 8
  %57 = getelementptr inbounds %struct.module, %struct.module* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.data*, %struct.data** %4, align 8
  %59 = call i32 @data_u16le(%struct.data* %58, i32 38)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.data*, %struct.data** %4, align 8
  %61 = call i32 @data_u16le(%struct.data* %60, i32 40)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 64
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %68, label %65

65:                                               ; preds = %40
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 4864
  br label %68

68:                                               ; preds = %65, %40
  %69 = phi i1 [ true, %40 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = load %struct.module*, %struct.module** %35, align 8
  %72 = getelementptr inbounds %struct.module, %struct.module* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.data*, %struct.data** %4, align 8
  %74 = call i32 @data_u16le(%struct.data* %73, i32 42)
  %75 = icmp eq i32 %74, 1
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load %struct.data*, %struct.data** %4, align 8
  %78 = call i32 @data_u32le(%struct.data* %77, i32 44)
  %79 = icmp ne i32 %78, 1297236819
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcpy(i8* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.module*, %struct.module** %35, align 8
  %84 = call i32 @dispose_module(%struct.module* %83)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

85:                                               ; preds = %68
  %86 = load %struct.data*, %struct.data** %4, align 8
  %87 = call i32 @data_u8(%struct.data* %86, i32 48)
  %88 = load %struct.module*, %struct.module** %35, align 8
  %89 = getelementptr inbounds %struct.module, %struct.module* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.data*, %struct.data** %4, align 8
  %91 = call i32 @data_u8(%struct.data* %90, i32 49)
  %92 = load %struct.module*, %struct.module** %35, align 8
  %93 = getelementptr inbounds %struct.module, %struct.module* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.data*, %struct.data** %4, align 8
  %95 = call i32 @data_u8(%struct.data* %94, i32 50)
  %96 = load %struct.module*, %struct.module** %35, align 8
  %97 = getelementptr inbounds %struct.module, %struct.module* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.module*, %struct.module** %35, align 8
  %99 = getelementptr inbounds %struct.module, %struct.module* %98, i32 0, i32 7
  store i32 8363, i32* %99, align 4
  %100 = load %struct.data*, %struct.data** %4, align 8
  %101 = call i32 @data_u8(%struct.data* %100, i32 51)
  %102 = and i32 %101, 127
  %103 = load %struct.module*, %struct.module** %35, align 8
  %104 = getelementptr inbounds %struct.module, %struct.module* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load %struct.data*, %struct.data** %4, align 8
  %106 = call i32 @data_u8(%struct.data* %105, i32 51)
  %107 = and i32 %106, 128
  %108 = icmp eq i32 %107, 128
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %14, align 4
  %110 = load %struct.data*, %struct.data** %4, align 8
  %111 = call i32 @data_u8(%struct.data* %110, i32 53)
  %112 = icmp eq i32 %111, 252
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %135, %85
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 32
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %119
  store i32 -1, i32* %120, align 4
  %121 = load %struct.data*, %struct.data** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 64, %122
  %124 = call i32 @data_u8(%struct.data* %121, i32 %123)
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load %struct.module*, %struct.module** %35, align 8
  %128 = getelementptr inbounds %struct.module, %struct.module* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %117
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %114

138:                                              ; preds = %114
  %139 = load %struct.module*, %struct.module** %35, align 8
  %140 = getelementptr inbounds %struct.module, %struct.module* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @calloc(i32 %141, i32 1)
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.module*, %struct.module** %35, align 8
  %145 = getelementptr inbounds %struct.module, %struct.module* %144, i32 0, i32 10
  store i8* %143, i8** %145, align 8
  %146 = load %struct.module*, %struct.module** %35, align 8
  %147 = getelementptr inbounds %struct.module, %struct.module* %146, i32 0, i32 10
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %138
  %151 = load %struct.module*, %struct.module** %35, align 8
  %152 = call i32 @dispose_module(%struct.module* %151)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

153:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %172, %153
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.module*, %struct.module** %35, align 8
  %157 = getelementptr inbounds %struct.module, %struct.module* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %154
  %161 = load %struct.data*, %struct.data** %4, align 8
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 96, %162
  %164 = call i32 @data_u8(%struct.data* %161, i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = load %struct.module*, %struct.module** %35, align 8
  %167 = getelementptr inbounds %struct.module, %struct.module* %166, i32 0, i32 10
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 %165, i8* %171, align 1
  br label %172

172:                                              ; preds = %160
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %154

175:                                              ; preds = %154
  %176 = load %struct.module*, %struct.module** %35, align 8
  %177 = getelementptr inbounds %struct.module, %struct.module* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 96, %178
  store i32 %179, i32* %7, align 4
  %180 = load %struct.module*, %struct.module** %35, align 8
  %181 = getelementptr inbounds %struct.module, %struct.module* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = call i64 @calloc(i32 %183, i32 16)
  %185 = inttoptr i64 %184 to %struct.instrument*
  %186 = load %struct.module*, %struct.module** %35, align 8
  %187 = getelementptr inbounds %struct.module, %struct.module* %186, i32 0, i32 13
  store %struct.instrument* %185, %struct.instrument** %187, align 8
  %188 = load %struct.module*, %struct.module** %35, align 8
  %189 = getelementptr inbounds %struct.module, %struct.module* %188, i32 0, i32 13
  %190 = load %struct.instrument*, %struct.instrument** %189, align 8
  %191 = icmp ne %struct.instrument* %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %175
  %193 = load %struct.module*, %struct.module** %35, align 8
  %194 = call i32 @dispose_module(%struct.module* %193)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

195:                                              ; preds = %175
  %196 = load %struct.module*, %struct.module** %35, align 8
  %197 = getelementptr inbounds %struct.module, %struct.module* %196, i32 0, i32 13
  %198 = load %struct.instrument*, %struct.instrument** %197, align 8
  %199 = getelementptr inbounds %struct.instrument, %struct.instrument* %198, i64 0
  store %struct.instrument* %199, %struct.instrument** %33, align 8
  %200 = load %struct.instrument*, %struct.instrument** %33, align 8
  %201 = getelementptr inbounds %struct.instrument, %struct.instrument* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  %202 = call i64 @calloc(i32 1, i32 32)
  %203 = inttoptr i64 %202 to %struct.sample*
  %204 = load %struct.instrument*, %struct.instrument** %33, align 8
  %205 = getelementptr inbounds %struct.instrument, %struct.instrument* %204, i32 0, i32 2
  store %struct.sample* %203, %struct.sample** %205, align 8
  %206 = load %struct.instrument*, %struct.instrument** %33, align 8
  %207 = getelementptr inbounds %struct.instrument, %struct.instrument* %206, i32 0, i32 2
  %208 = load %struct.sample*, %struct.sample** %207, align 8
  %209 = icmp ne %struct.sample* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %195
  %211 = load %struct.module*, %struct.module** %35, align 8
  %212 = call i32 @dispose_module(%struct.module* %211)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

213:                                              ; preds = %195
  store i32 1, i32* %27, align 4
  br label %214

214:                                              ; preds = %448, %213
  %215 = load i32, i32* %27, align 4
  %216 = load %struct.module*, %struct.module** %35, align 8
  %217 = getelementptr inbounds %struct.module, %struct.module* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sle i32 %215, %218
  br i1 %219, label %220, label %451

220:                                              ; preds = %214
  %221 = load %struct.module*, %struct.module** %35, align 8
  %222 = getelementptr inbounds %struct.module, %struct.module* %221, i32 0, i32 13
  %223 = load %struct.instrument*, %struct.instrument** %222, align 8
  %224 = load i32, i32* %27, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.instrument, %struct.instrument* %223, i64 %225
  store %struct.instrument* %226, %struct.instrument** %33, align 8
  %227 = load %struct.instrument*, %struct.instrument** %33, align 8
  %228 = getelementptr inbounds %struct.instrument, %struct.instrument* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = call i64 @calloc(i32 1, i32 32)
  %230 = inttoptr i64 %229 to %struct.sample*
  %231 = load %struct.instrument*, %struct.instrument** %33, align 8
  %232 = getelementptr inbounds %struct.instrument, %struct.instrument* %231, i32 0, i32 2
  store %struct.sample* %230, %struct.sample** %232, align 8
  %233 = load %struct.instrument*, %struct.instrument** %33, align 8
  %234 = getelementptr inbounds %struct.instrument, %struct.instrument* %233, i32 0, i32 2
  %235 = load %struct.sample*, %struct.sample** %234, align 8
  %236 = icmp ne %struct.sample* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %220
  %238 = load %struct.module*, %struct.module** %35, align 8
  %239 = call i32 @dispose_module(%struct.module* %238)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

240:                                              ; preds = %220
  %241 = load %struct.instrument*, %struct.instrument** %33, align 8
  %242 = getelementptr inbounds %struct.instrument, %struct.instrument* %241, i32 0, i32 2
  %243 = load %struct.sample*, %struct.sample** %242, align 8
  %244 = getelementptr inbounds %struct.sample, %struct.sample* %243, i64 0
  store %struct.sample* %244, %struct.sample** %34, align 8
  %245 = load %struct.data*, %struct.data** %4, align 8
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @data_u16le(%struct.data* %245, i32 %246)
  %248 = shl i32 %247, 4
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %7, align 4
  %250 = add nsw i32 %249, 2
  store i32 %250, i32* %7, align 4
  %251 = load %struct.data*, %struct.data** %4, align 8
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 48
  %254 = load %struct.instrument*, %struct.instrument** %33, align 8
  %255 = getelementptr inbounds %struct.instrument, %struct.instrument* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @data_ascii(%struct.data* %251, i32 %253, i32 28, i32 %256)
  %258 = load %struct.data*, %struct.data** %4, align 8
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @data_u8(%struct.data* %258, i32 %259)
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %447

262:                                              ; preds = %240
  %263 = load %struct.data*, %struct.data** %4, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 76
  %266 = call i32 @data_u16le(%struct.data* %263, i32 %265)
  %267 = icmp eq i32 %266, 17235
  br i1 %267, label %268, label %447

268:                                              ; preds = %262
  %269 = load %struct.data*, %struct.data** %4, align 8
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 13
  %272 = call i32 @data_u8(%struct.data* %269, i32 %271)
  %273 = shl i32 %272, 20
  %274 = load %struct.data*, %struct.data** %4, align 8
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 14
  %277 = call i32 @data_u16le(%struct.data* %274, i32 %276)
  %278 = shl i32 %277, 4
  %279 = add nsw i32 %273, %278
  store i32 %279, i32* %17, align 4
  %280 = load %struct.data*, %struct.data** %4, align 8
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 16
  %283 = call i32 @data_u32le(%struct.data* %280, i32 %282)
  store i32 %283, i32* %18, align 4
  %284 = load %struct.data*, %struct.data** %4, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 20
  %287 = call i32 @data_u32le(%struct.data* %284, i32 %286)
  store i32 %287, i32* %19, align 4
  %288 = load %struct.data*, %struct.data** %4, align 8
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 24
  %291 = call i32 @data_u32le(%struct.data* %288, i32 %290)
  %292 = load i32, i32* %19, align 4
  %293 = sub nsw i32 %291, %292
  store i32 %293, i32* %20, align 4
  %294 = load %struct.data*, %struct.data** %4, align 8
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 28
  %297 = call i32 @data_u8(%struct.data* %294, i32 %296)
  %298 = load %struct.sample*, %struct.sample** %34, align 8
  %299 = getelementptr inbounds %struct.sample, %struct.sample* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  %300 = load %struct.data*, %struct.data** %4, align 8
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 30
  %303 = call i32 @data_u8(%struct.data* %300, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %268
  %306 = load i8*, i8** %5, align 8
  %307 = call i32 @strcpy(i8* %306, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %308 = load %struct.module*, %struct.module** %35, align 8
  %309 = call i32 @dispose_module(%struct.module* %308)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

310:                                              ; preds = %268
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %20, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %18, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load i32, i32* %18, align 4
  %318 = load i32, i32* %19, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %20, align 4
  br label %320

320:                                              ; preds = %316, %310
  %321 = load i32, i32* %20, align 4
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %330, label %323

323:                                              ; preds = %320
  %324 = load %struct.data*, %struct.data** %4, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 31
  %327 = call i32 @data_u8(%struct.data* %324, i32 %326)
  %328 = and i32 %327, 1
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %323, %320
  %331 = load i32, i32* %18, align 4
  store i32 %331, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %332

332:                                              ; preds = %330, %323
  %333 = load i32, i32* %19, align 4
  %334 = load %struct.sample*, %struct.sample** %34, align 8
  %335 = getelementptr inbounds %struct.sample, %struct.sample* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  %336 = load i32, i32* %20, align 4
  %337 = load %struct.sample*, %struct.sample** %34, align 8
  %338 = getelementptr inbounds %struct.sample, %struct.sample* %337, i32 0, i32 2
  store i32 %336, i32* %338, align 8
  %339 = load %struct.data*, %struct.data** %4, align 8
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 31
  %342 = call i32 @data_u8(%struct.data* %339, i32 %341)
  %343 = and i32 %342, 4
  store i32 %343, i32* %11, align 4
  %344 = load %struct.data*, %struct.data** %4, align 8
  %345 = load i32, i32* %8, align 4
  %346 = add nsw i32 %345, 32
  %347 = call i32 @data_u32le(%struct.data* %344, i32 %346)
  %348 = call i32 @log_2(i32 %347)
  %349 = load %struct.module*, %struct.module** %35, align 8
  %350 = getelementptr inbounds %struct.module, %struct.module* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @log_2(i32 %351)
  %353 = sub nsw i32 %348, %352
  %354 = mul nsw i32 %353, 12
  store i32 %354, i32* %12, align 4
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* @FP_SHIFT, align 4
  %357 = ashr i32 %355, %356
  %358 = load %struct.sample*, %struct.sample** %34, align 8
  %359 = getelementptr inbounds %struct.sample, %struct.sample* %358, i32 0, i32 3
  store i32 %357, i32* %359, align 4
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* @FP_MASK, align 4
  %362 = and i32 %360, %361
  %363 = load i32, i32* @FP_SHIFT, align 4
  %364 = sub nsw i32 %363, 7
  %365 = ashr i32 %362, %364
  %366 = load %struct.sample*, %struct.sample** %34, align 8
  %367 = getelementptr inbounds %struct.sample, %struct.sample* %366, i32 0, i32 4
  store i32 %365, i32* %367, align 8
  %368 = load i32, i32* %18, align 4
  %369 = add nsw i32 %368, 1
  %370 = call i64 @calloc(i32 %369, i32 2)
  %371 = inttoptr i64 %370 to i16*
  %372 = load %struct.sample*, %struct.sample** %34, align 8
  %373 = getelementptr inbounds %struct.sample, %struct.sample* %372, i32 0, i32 5
  store i16* %371, i16** %373, align 8
  %374 = load %struct.sample*, %struct.sample** %34, align 8
  %375 = getelementptr inbounds %struct.sample, %struct.sample* %374, i32 0, i32 5
  %376 = load i16*, i16** %375, align 8
  %377 = icmp ne i16* %376, null
  br i1 %377, label %378, label %443

378:                                              ; preds = %332
  %379 = load i32, i32* %11, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %378
  %382 = load %struct.data*, %struct.data** %4, align 8
  %383 = load i32, i32* %17, align 4
  %384 = load i32, i32* %18, align 4
  %385 = load %struct.sample*, %struct.sample** %34, align 8
  %386 = getelementptr inbounds %struct.sample, %struct.sample* %385, i32 0, i32 5
  %387 = load i16*, i16** %386, align 8
  %388 = call i32 @data_sam_s16le(%struct.data* %382, i32 %383, i32 %384, i16* %387)
  br label %397

389:                                              ; preds = %378
  %390 = load %struct.data*, %struct.data** %4, align 8
  %391 = load i32, i32* %17, align 4
  %392 = load i32, i32* %18, align 4
  %393 = load %struct.sample*, %struct.sample** %34, align 8
  %394 = getelementptr inbounds %struct.sample, %struct.sample* %393, i32 0, i32 5
  %395 = load i16*, i16** %394, align 8
  %396 = call i32 @data_sam_s8(%struct.data* %390, i32 %391, i32 %392, i16* %395)
  br label %397

397:                                              ; preds = %389, %381
  %398 = load i32, i32* %13, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %427, label %400

400:                                              ; preds = %397
  store i32 0, i32* %6, align 4
  br label %401

401:                                              ; preds = %423, %400
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* %18, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %426

405:                                              ; preds = %401
  %406 = load %struct.sample*, %struct.sample** %34, align 8
  %407 = getelementptr inbounds %struct.sample, %struct.sample* %406, i32 0, i32 5
  %408 = load i16*, i16** %407, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i16, i16* %408, i64 %410
  %412 = load i16, i16* %411, align 2
  %413 = sext i16 %412 to i32
  %414 = and i32 %413, 65535
  %415 = sub nsw i32 %414, 32768
  %416 = trunc i32 %415 to i16
  %417 = load %struct.sample*, %struct.sample** %34, align 8
  %418 = getelementptr inbounds %struct.sample, %struct.sample* %417, i32 0, i32 5
  %419 = load i16*, i16** %418, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i16, i16* %419, i64 %421
  store i16 %416, i16* %422, align 2
  br label %423

423:                                              ; preds = %405
  %424 = load i32, i32* %6, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %6, align 4
  br label %401

426:                                              ; preds = %401
  br label %427

427:                                              ; preds = %426, %397
  %428 = load %struct.sample*, %struct.sample** %34, align 8
  %429 = getelementptr inbounds %struct.sample, %struct.sample* %428, i32 0, i32 5
  %430 = load i16*, i16** %429, align 8
  %431 = load i32, i32* %19, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i16, i16* %430, i64 %432
  %434 = load i16, i16* %433, align 2
  %435 = load %struct.sample*, %struct.sample** %34, align 8
  %436 = getelementptr inbounds %struct.sample, %struct.sample* %435, i32 0, i32 5
  %437 = load i16*, i16** %436, align 8
  %438 = load i32, i32* %19, align 4
  %439 = load i32, i32* %20, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i16, i16* %437, i64 %441
  store i16 %434, i16* %442, align 2
  br label %446

443:                                              ; preds = %332
  %444 = load %struct.module*, %struct.module** %35, align 8
  %445 = call i32 @dispose_module(%struct.module* %444)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

446:                                              ; preds = %427
  br label %447

447:                                              ; preds = %446, %262, %240
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %27, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %27, align 4
  br label %214

451:                                              ; preds = %214
  %452 = load %struct.module*, %struct.module** %35, align 8
  %453 = getelementptr inbounds %struct.module, %struct.module* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = call i64 @calloc(i32 %454, i32 16)
  %456 = inttoptr i64 %455 to %struct.pattern*
  %457 = load %struct.module*, %struct.module** %35, align 8
  %458 = getelementptr inbounds %struct.module, %struct.module* %457, i32 0, i32 12
  store %struct.pattern* %456, %struct.pattern** %458, align 8
  %459 = load %struct.module*, %struct.module** %35, align 8
  %460 = getelementptr inbounds %struct.module, %struct.module* %459, i32 0, i32 12
  %461 = load %struct.pattern*, %struct.pattern** %460, align 8
  %462 = icmp ne %struct.pattern* %461, null
  br i1 %462, label %466, label %463

463:                                              ; preds = %451
  %464 = load %struct.module*, %struct.module** %35, align 8
  %465 = call i32 @dispose_module(%struct.module* %464)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

466:                                              ; preds = %451
  store i32 0, i32* %6, align 4
  br label %467

467:                                              ; preds = %656, %466
  %468 = load i32, i32* %6, align 4
  %469 = load %struct.module*, %struct.module** %35, align 8
  %470 = getelementptr inbounds %struct.module, %struct.module* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %659

473:                                              ; preds = %467
  %474 = load %struct.module*, %struct.module** %35, align 8
  %475 = getelementptr inbounds %struct.module, %struct.module* %474, i32 0, i32 9
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.module*, %struct.module** %35, align 8
  %478 = getelementptr inbounds %struct.module, %struct.module* %477, i32 0, i32 12
  %479 = load %struct.pattern*, %struct.pattern** %478, align 8
  %480 = load i32, i32* %6, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.pattern, %struct.pattern* %479, i64 %481
  %483 = getelementptr inbounds %struct.pattern, %struct.pattern* %482, i32 0, i32 0
  store i32 %476, i32* %483, align 8
  %484 = load %struct.module*, %struct.module** %35, align 8
  %485 = getelementptr inbounds %struct.module, %struct.module* %484, i32 0, i32 12
  %486 = load %struct.pattern*, %struct.pattern** %485, align 8
  %487 = load i32, i32* %6, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.pattern, %struct.pattern* %486, i64 %488
  %490 = getelementptr inbounds %struct.pattern, %struct.pattern* %489, i32 0, i32 1
  store i32 64, i32* %490, align 4
  %491 = load %struct.module*, %struct.module** %35, align 8
  %492 = getelementptr inbounds %struct.module, %struct.module* %491, i32 0, i32 9
  %493 = load i32, i32* %492, align 4
  %494 = mul nsw i32 %493, 64
  %495 = call i64 @calloc(i32 %494, i32 5)
  %496 = inttoptr i64 %495 to i8*
  store i8* %496, i8** %32, align 8
  %497 = load i8*, i8** %32, align 8
  %498 = icmp ne i8* %497, null
  br i1 %498, label %502, label %499

499:                                              ; preds = %473
  %500 = load %struct.module*, %struct.module** %35, align 8
  %501 = call i32 @dispose_module(%struct.module* %500)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

502:                                              ; preds = %473
  %503 = load i8*, i8** %32, align 8
  %504 = load %struct.module*, %struct.module** %35, align 8
  %505 = getelementptr inbounds %struct.module, %struct.module* %504, i32 0, i32 12
  %506 = load %struct.pattern*, %struct.pattern** %505, align 8
  %507 = load i32, i32* %6, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.pattern, %struct.pattern* %506, i64 %508
  %510 = getelementptr inbounds %struct.pattern, %struct.pattern* %509, i32 0, i32 2
  store i8* %503, i8** %510, align 8
  %511 = load %struct.data*, %struct.data** %4, align 8
  %512 = load i32, i32* %7, align 4
  %513 = call i32 @data_u16le(%struct.data* %511, i32 %512)
  %514 = shl i32 %513, 4
  %515 = add nsw i32 %514, 2
  store i32 %515, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %516

516:                                              ; preds = %652, %502
  %517 = load i32, i32* %23, align 4
  %518 = icmp slt i32 %517, 64
  br i1 %518, label %519, label %653

519:                                              ; preds = %516
  %520 = load %struct.data*, %struct.data** %4, align 8
  %521 = load i32, i32* %21, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %21, align 4
  %523 = call i32 @data_u8(%struct.data* %520, i32 %521)
  store i32 %523, i32* %25, align 4
  %524 = load i32, i32* %25, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %649

526:                                              ; preds = %519
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %527 = load i32, i32* %25, align 4
  %528 = and i32 %527, 32
  %529 = icmp eq i32 %528, 32
  br i1 %529, label %530, label %555

530:                                              ; preds = %526
  %531 = load %struct.data*, %struct.data** %4, align 8
  %532 = load i32, i32* %21, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %21, align 4
  %534 = call i32 @data_u8(%struct.data* %531, i32 %532)
  store i32 %534, i32* %26, align 4
  %535 = load %struct.data*, %struct.data** %4, align 8
  %536 = load i32, i32* %21, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %21, align 4
  %538 = call i32 @data_u8(%struct.data* %535, i32 %536)
  store i32 %538, i32* %27, align 4
  %539 = load i32, i32* %26, align 4
  %540 = icmp slt i32 %539, 254
  br i1 %540, label %541, label %549

541:                                              ; preds = %530
  %542 = load i32, i32* %26, align 4
  %543 = ashr i32 %542, 4
  %544 = mul nsw i32 %543, 12
  %545 = load i32, i32* %26, align 4
  %546 = and i32 %545, 15
  %547 = add nsw i32 %544, %546
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %26, align 4
  br label %554

549:                                              ; preds = %530
  %550 = load i32, i32* %26, align 4
  %551 = icmp eq i32 %550, 255
  br i1 %551, label %552, label %553

552:                                              ; preds = %549
  store i32 0, i32* %26, align 4
  br label %553

553:                                              ; preds = %552, %549
  br label %554

554:                                              ; preds = %553, %541
  br label %555

555:                                              ; preds = %554, %526
  store i32 0, i32* %28, align 4
  %556 = load i32, i32* %25, align 4
  %557 = and i32 %556, 64
  %558 = icmp eq i32 %557, 64
  br i1 %558, label %559, label %570

559:                                              ; preds = %555
  %560 = load %struct.data*, %struct.data** %4, align 8
  %561 = load i32, i32* %21, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %21, align 4
  %563 = call i32 @data_u8(%struct.data* %560, i32 %561)
  %564 = and i32 %563, 127
  %565 = add nsw i32 %564, 16
  store i32 %565, i32* %28, align 4
  %566 = load i32, i32* %28, align 4
  %567 = icmp sgt i32 %566, 80
  br i1 %567, label %568, label %569

568:                                              ; preds = %559
  store i32 0, i32* %28, align 4
  br label %569

569:                                              ; preds = %568, %559
  br label %570

570:                                              ; preds = %569, %555
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  %571 = load i32, i32* %25, align 4
  %572 = and i32 %571, 128
  %573 = icmp eq i32 %572, 128
  br i1 %573, label %574, label %597

574:                                              ; preds = %570
  %575 = load %struct.data*, %struct.data** %4, align 8
  %576 = load i32, i32* %21, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %21, align 4
  %578 = call i32 @data_u8(%struct.data* %575, i32 %576)
  store i32 %578, i32* %29, align 4
  %579 = load %struct.data*, %struct.data** %4, align 8
  %580 = load i32, i32* %21, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %21, align 4
  %582 = call i32 @data_u8(%struct.data* %579, i32 %580)
  store i32 %582, i32* %30, align 4
  %583 = load i32, i32* %29, align 4
  %584 = icmp slt i32 %583, 1
  br i1 %584, label %588, label %585

585:                                              ; preds = %574
  %586 = load i32, i32* %29, align 4
  %587 = icmp sge i32 %586, 64
  br i1 %587, label %588, label %589

588:                                              ; preds = %585, %574
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %596

589:                                              ; preds = %585
  %590 = load i32, i32* %29, align 4
  %591 = icmp sgt i32 %590, 0
  br i1 %591, label %592, label %595

592:                                              ; preds = %589
  %593 = load i32, i32* %29, align 4
  %594 = add nsw i32 %593, 128
  store i32 %594, i32* %29, align 4
  br label %595

595:                                              ; preds = %592, %589
  br label %596

596:                                              ; preds = %595, %588
  br label %597

597:                                              ; preds = %596, %570
  %598 = load i32, i32* %25, align 4
  %599 = and i32 %598, 31
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  store i32 %602, i32* %24, align 4
  %603 = load i32, i32* %24, align 4
  %604 = icmp sge i32 %603, 0
  br i1 %604, label %605, label %648

605:                                              ; preds = %597
  %606 = load i32, i32* %23, align 4
  %607 = load %struct.module*, %struct.module** %35, align 8
  %608 = getelementptr inbounds %struct.module, %struct.module* %607, i32 0, i32 9
  %609 = load i32, i32* %608, align 4
  %610 = mul nsw i32 %606, %609
  %611 = load i32, i32* %24, align 4
  %612 = add nsw i32 %610, %611
  %613 = mul nsw i32 %612, 5
  store i32 %613, i32* %22, align 4
  %614 = load i32, i32* %26, align 4
  %615 = trunc i32 %614 to i8
  %616 = load i8*, i8** %32, align 8
  %617 = load i32, i32* %22, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, i8* %616, i64 %618
  store i8 %615, i8* %619, align 1
  %620 = load i32, i32* %27, align 4
  %621 = trunc i32 %620 to i8
  %622 = load i8*, i8** %32, align 8
  %623 = load i32, i32* %22, align 4
  %624 = add nsw i32 %623, 1
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i8, i8* %622, i64 %625
  store i8 %621, i8* %626, align 1
  %627 = load i32, i32* %28, align 4
  %628 = trunc i32 %627 to i8
  %629 = load i8*, i8** %32, align 8
  %630 = load i32, i32* %22, align 4
  %631 = add nsw i32 %630, 2
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i8, i8* %629, i64 %632
  store i8 %628, i8* %633, align 1
  %634 = load i32, i32* %29, align 4
  %635 = trunc i32 %634 to i8
  %636 = load i8*, i8** %32, align 8
  %637 = load i32, i32* %22, align 4
  %638 = add nsw i32 %637, 3
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %636, i64 %639
  store i8 %635, i8* %640, align 1
  %641 = load i32, i32* %30, align 4
  %642 = trunc i32 %641 to i8
  %643 = load i8*, i8** %32, align 8
  %644 = load i32, i32* %22, align 4
  %645 = add nsw i32 %644, 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i8, i8* %643, i64 %646
  store i8 %642, i8* %647, align 1
  br label %648

648:                                              ; preds = %605, %597
  br label %652

649:                                              ; preds = %519
  %650 = load i32, i32* %23, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %23, align 4
  br label %652

652:                                              ; preds = %649, %648
  br label %516

653:                                              ; preds = %516
  %654 = load i32, i32* %7, align 4
  %655 = add nsw i32 %654, 2
  store i32 %655, i32* %7, align 4
  br label %656

656:                                              ; preds = %653
  %657 = load i32, i32* %6, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %6, align 4
  br label %467

659:                                              ; preds = %467
  %660 = load %struct.module*, %struct.module** %35, align 8
  %661 = getelementptr inbounds %struct.module, %struct.module* %660, i32 0, i32 9
  %662 = load i32, i32* %661, align 4
  %663 = call i64 @calloc(i32 %662, i32 1)
  %664 = inttoptr i64 %663 to i8*
  %665 = load %struct.module*, %struct.module** %35, align 8
  %666 = getelementptr inbounds %struct.module, %struct.module* %665, i32 0, i32 11
  store i8* %664, i8** %666, align 8
  %667 = load %struct.module*, %struct.module** %35, align 8
  %668 = getelementptr inbounds %struct.module, %struct.module* %667, i32 0, i32 11
  %669 = load i8*, i8** %668, align 8
  %670 = icmp ne i8* %669, null
  br i1 %670, label %671, label %726

671:                                              ; preds = %659
  store i32 0, i32* %24, align 4
  br label %672

672:                                              ; preds = %722, %671
  %673 = load i32, i32* %24, align 4
  %674 = icmp slt i32 %673, 32
  br i1 %674, label %675, label %725

675:                                              ; preds = %672
  %676 = load i32, i32* %24, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %677
  %679 = load i32, i32* %678, align 4
  %680 = icmp sge i32 %679, 0
  br i1 %680, label %681, label %721

681:                                              ; preds = %675
  store i32 7, i32* %31, align 4
  %682 = load i32, i32* %14, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %692

684:                                              ; preds = %681
  store i32 12, i32* %31, align 4
  %685 = load %struct.data*, %struct.data** %4, align 8
  %686 = load i32, i32* %24, align 4
  %687 = add nsw i32 64, %686
  %688 = call i32 @data_u8(%struct.data* %685, i32 %687)
  %689 = icmp slt i32 %688, 8
  br i1 %689, label %690, label %691

690:                                              ; preds = %684
  store i32 3, i32* %31, align 4
  br label %691

691:                                              ; preds = %690, %684
  br label %692

692:                                              ; preds = %691, %681
  %693 = load i32, i32* %15, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %708

695:                                              ; preds = %692
  %696 = load %struct.data*, %struct.data** %4, align 8
  %697 = load i32, i32* %7, align 4
  %698 = load i32, i32* %24, align 4
  %699 = add nsw i32 %697, %698
  %700 = call i32 @data_u8(%struct.data* %696, i32 %699)
  store i32 %700, i32* %9, align 4
  %701 = load i32, i32* %9, align 4
  %702 = and i32 %701, 32
  %703 = icmp eq i32 %702, 32
  br i1 %703, label %704, label %707

704:                                              ; preds = %695
  %705 = load i32, i32* %9, align 4
  %706 = and i32 %705, 15
  store i32 %706, i32* %31, align 4
  br label %707

707:                                              ; preds = %704, %695
  br label %708

708:                                              ; preds = %707, %692
  %709 = load i32, i32* %31, align 4
  %710 = mul nsw i32 %709, 17
  %711 = trunc i32 %710 to i8
  %712 = load %struct.module*, %struct.module** %35, align 8
  %713 = getelementptr inbounds %struct.module, %struct.module* %712, i32 0, i32 11
  %714 = load i8*, i8** %713, align 8
  %715 = load i32, i32* %24, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %716
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i8, i8* %714, i64 %719
  store i8 %711, i8* %720, align 1
  br label %721

721:                                              ; preds = %708, %675
  br label %722

722:                                              ; preds = %721
  %723 = load i32, i32* %24, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %24, align 4
  br label %672

725:                                              ; preds = %672
  br label %729

726:                                              ; preds = %659
  %727 = load %struct.module*, %struct.module** %35, align 8
  %728 = call i32 @dispose_module(%struct.module* %727)
  store %struct.module* null, %struct.module** %3, align 8
  br label %732

729:                                              ; preds = %725
  br label %730

730:                                              ; preds = %729, %2
  %731 = load %struct.module*, %struct.module** %35, align 8
  store %struct.module* %731, %struct.module** %3, align 8
  br label %732

732:                                              ; preds = %730, %726, %499, %463, %443, %305, %237, %210, %192, %150, %80
  %733 = load %struct.module*, %struct.module** %3, align 8
  ret %struct.module* %733
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @data_ascii(%struct.data*, i32, i32, i32) #1

declare dso_local i32 @data_u16le(%struct.data*, i32) #1

declare dso_local i32 @data_u32le(%struct.data*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @dispose_module(%struct.module*) #1

declare dso_local i32 @data_u8(%struct.data*, i32) #1

declare dso_local i32 @log_2(i32) #1

declare dso_local i32 @data_sam_s16le(%struct.data*, i32, i32, i16*) #1

declare dso_local i32 @data_sam_s8(%struct.data*, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
