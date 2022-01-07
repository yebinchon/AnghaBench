; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_thread.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_args = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i8**, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OLD_CLASSIFICATION_DATA = common dso_local global i64 0, align 8
@REGRESSION_DATA = common dso_local global i64 0, align 8
@CLASSIFICATION_DATA = common dso_local global i64 0, align 8
@SUPER_DATA = common dso_local global i64 0, align 8
@WRITING_DATA = common dso_local global i64 0, align 8
@ISEG_DATA = common dso_local global i64 0, align 8
@INSTANCE_DATA = common dso_local global i64 0, align 8
@SEGMENTATION_DATA = common dso_local global i64 0, align 8
@REGION_DATA = common dso_local global i64 0, align 8
@DETECTION_DATA = common dso_local global i64 0, align 8
@SWAG_DATA = common dso_local global i64 0, align 8
@COMPARE_DATA = common dso_local global i64 0, align 8
@IMAGE_DATA = common dso_local global i64 0, align 8
@LETTERBOX_DATA = common dso_local global i64 0, align 8
@TAG_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @load_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.load_args, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.load_args*
  %6 = bitcast %struct.load_args* %3 to i8*
  %7 = bitcast %struct.load_args* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 136, i1 false)
  %8 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OLD_CLASSIFICATION_DATA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 27
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @load_data_old(i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %47 = load i32*, i32** %46, align 8
  store i32 %45, i32* %47, align 4
  br label %468

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REGRESSION_DATA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @load_data_regression(i32 %55, i32 %57, i32 %59, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77)
  %79 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %80 = load i32*, i32** %79, align 8
  store i32 %78, i32* %80, align 4
  br label %467

81:                                               ; preds = %48
  %82 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CLASSIFICATION_DATA, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 27
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 26
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 25
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @load_data_augment(i32 %88, i32 %90, i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106, i32 %108, i32 %110, i32 %112, i32 %114, i32 %116)
  %118 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %119 = load i32*, i32** %118, align 8
  store i32 %117, i32* %119, align 4
  br label %466

120:                                              ; preds = %81
  %121 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SUPER_DATA, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 21
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @load_data_super(i32 %127, i32 %129, i32 %131, i32 %133, i32 %135, i32 %137)
  %139 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %140 = load i32*, i32** %139, align 8
  store i32 %138, i32* %140, align 4
  br label %465

141:                                              ; preds = %120
  %142 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @WRITING_DATA, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 24
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 23
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @load_data_writing(i32 %148, i32 %150, i32 %152, i32 %154, i32 %156, i32 %158, i32 %160)
  %162 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %163 = load i32*, i32** %162, align 8
  store i32 %161, i32* %163, align 4
  br label %464

164:                                              ; preds = %141
  %165 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ISEG_DATA, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 20
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 21
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @load_data_iseg(i32 %171, i32 %173, i32 %175, i32 %177, i32 %179, i32 %181, i32 %183, i32 %185, i32 %187, i32 %189, i32 %191, i32 %193, i32 %195, i32 %197, i32 %199)
  %201 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %202 = load i32*, i32** %201, align 8
  store i32 %200, i32* %202, align 4
  br label %463

203:                                              ; preds = %164
  %204 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @INSTANCE_DATA, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %242

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 20
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 22
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 8
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @load_data_mask(i32 %210, i32 %212, i32 %214, i32 %216, i32 %218, i32 %220, i32 %222, i32 %224, i32 %226, i32 %228, i32 %230, i32 %232, i32 %234, i32 %236, i32 %238)
  %240 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %241 = load i32*, i32** %240, align 8
  store i32 %239, i32* %241, align 4
  br label %462

242:                                              ; preds = %203
  %243 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SEGMENTATION_DATA, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %279

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %257 = load i32, i32* %256, align 8
  %258 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 21
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @load_data_seg(i32 %249, i32 %251, i32 %253, i32 %255, i32 %257, i32 %259, i32 %261, i32 %263, i32 %265, i32 %267, i32 %269, i32 %271, i32 %273, i32 %275)
  %277 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %278 = load i32*, i32** %277, align 8
  store i32 %276, i32* %278, align 4
  br label %461

279:                                              ; preds = %242
  %280 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @REGION_DATA, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %310

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %288 = load i32, i32* %287, align 8
  %289 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %290 = load i32, i32* %289, align 8
  %291 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 20
  %296 = load i32, i32* %295, align 8
  %297 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 19
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @load_data_region(i32 %286, i32 %288, i32 %290, i32 %292, i32 %294, i32 %296, i32 %298, i32 %300, i32 %302, i32 %304, i32 %306)
  %308 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %309 = load i32*, i32** %308, align 8
  store i32 %307, i32* %309, align 4
  br label %460

310:                                              ; preds = %279
  %311 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @DETECTION_DATA, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %341

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %325 = load i32, i32* %324, align 8
  %326 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 20
  %327 = load i32, i32* %326, align 8
  %328 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 19
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @load_data_detection(i32 %317, i32 %319, i32 %321, i32 %323, i32 %325, i32 %327, i32 %329, i32 %331, i32 %333, i32 %335, i32 %337)
  %339 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %340 = load i32*, i32** %339, align 8
  store i32 %338, i32* %340, align 4
  br label %459

341:                                              ; preds = %310
  %342 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @SWAG_DATA, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %358

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %348 = load i32, i32* %347, align 8
  %349 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 19
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @load_data_swag(i32 %348, i32 %350, i32 %352, i32 %354)
  %356 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %357 = load i32*, i32** %356, align 8
  store i32 %355, i32* %357, align 4
  br label %458

358:                                              ; preds = %341
  %359 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @COMPARE_DATA, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %379

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %365 = load i32, i32* %364, align 4
  %366 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %369 = load i32, i32* %368, align 8
  %370 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %373 = load i32, i32* %372, align 4
  %374 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @load_data_compare(i32 %365, i32 %367, i32 %369, i32 %371, i32 %373, i32 %375)
  %377 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %378 = load i32*, i32** %377, align 8
  store i32 %376, i32* %378, align 4
  br label %457

379:                                              ; preds = %358
  %380 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @IMAGE_DATA, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %400

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 18
  %386 = load i32, i32* %385, align 8
  %387 = call i8* @load_image_color(i32 %386, i32 0, i32 0)
  %388 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 16
  %389 = load i8**, i8*** %388, align 8
  store i8* %387, i8** %389, align 8
  %390 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 16
  %391 = load i8**, i8*** %390, align 8
  %392 = load i8*, i8** %391, align 8
  %393 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %394 = load i32, i32* %393, align 4
  %395 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @resize_image(i8* %392, i32 %394, i32 %396)
  %398 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 17
  %399 = load i32*, i32** %398, align 8
  store i32 %397, i32* %399, align 4
  br label %456

400:                                              ; preds = %379
  %401 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @LETTERBOX_DATA, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %421

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 18
  %407 = load i32, i32* %406, align 8
  %408 = call i8* @load_image_color(i32 %407, i32 0, i32 0)
  %409 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 16
  %410 = load i8**, i8*** %409, align 8
  store i8* %408, i8** %410, align 8
  %411 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 16
  %412 = load i8**, i8*** %411, align 8
  %413 = load i8*, i8** %412, align 8
  %414 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 15
  %415 = load i32, i32* %414, align 4
  %416 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 14
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @letterbox_image(i8* %413, i32 %415, i32 %417)
  %419 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 17
  %420 = load i32*, i32** %419, align 8
  store i32 %418, i32* %420, align 4
  br label %455

421:                                              ; preds = %400
  %422 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 3
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @TAG_DATA, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %454

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 12
  %428 = load i32, i32* %427, align 8
  %429 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 11
  %430 = load i32, i32* %429, align 4
  %431 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 10
  %432 = load i32, i32* %431, align 8
  %433 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 9
  %434 = load i32, i32* %433, align 4
  %435 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 8
  %436 = load i32, i32* %435, align 8
  %437 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 7
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 6
  %440 = load i32, i32* %439, align 8
  %441 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 5
  %442 = load i32, i32* %441, align 4
  %443 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @load_data_tag(i32 %428, i32 %430, i32 %432, i32 %434, i32 %436, i32 %438, i32 %440, i32 %442, i32 %444, i32 %446, i32 %448, i32 %450)
  %452 = getelementptr inbounds %struct.load_args, %struct.load_args* %3, i32 0, i32 13
  %453 = load i32*, i32** %452, align 8
  store i32 %451, i32* %453, align 4
  br label %454

454:                                              ; preds = %426, %421
  br label %455

455:                                              ; preds = %454, %405
  br label %456

456:                                              ; preds = %455, %384
  br label %457

457:                                              ; preds = %456, %363
  br label %458

458:                                              ; preds = %457, %346
  br label %459

459:                                              ; preds = %458, %315
  br label %460

460:                                              ; preds = %459, %284
  br label %461

461:                                              ; preds = %460, %247
  br label %462

462:                                              ; preds = %461, %208
  br label %463

463:                                              ; preds = %462, %169
  br label %464

464:                                              ; preds = %463, %146
  br label %465

465:                                              ; preds = %464, %125
  br label %466

466:                                              ; preds = %465, %86
  br label %467

467:                                              ; preds = %466, %53
  br label %468

468:                                              ; preds = %467, %30
  %469 = load i8*, i8** %2, align 8
  %470 = call i32 @free(i8* %469)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @load_data_old(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_regression(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_augment(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_super(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_writing(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_iseg(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_mask(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_seg(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_region(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_detection(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @load_data_swag(i32, i32, i32, i32) #2

declare dso_local i32 @load_data_compare(i32, i32, i32, i32, i32, i32) #2

declare dso_local i8* @load_image_color(i32, i32, i32) #2

declare dso_local i32 @resize_image(i8*, i32, i32) #2

declare dso_local i32 @letterbox_image(i8*, i32, i32) #2

declare dso_local i32 @load_data_tag(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
