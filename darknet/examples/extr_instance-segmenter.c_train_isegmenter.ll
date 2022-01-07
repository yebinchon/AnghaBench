; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_instance-segmenter.c_train_isegmenter.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_instance-segmenter.c_train_isegmenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, double, double, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, %struct.TYPE_41__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_36__, %struct.TYPE_35__ }
%struct.TYPE_36__ = type { i32* }
%struct.TYPE_35__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/backup/\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@ISEG_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Loaded: %lf seconds\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"embed\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"truth\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"%s/%s_%d.weights\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s/%s.backup\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%s/%s.weights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @train_isegmenter(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_37__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_37__*, align 8
  %21 = alloca %struct.TYPE_40__, align 4
  %22 = alloca %struct.TYPE_40__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_39__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_39__*, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_38__, align 8
  %32 = alloca %struct.TYPE_41__, align 8
  %33 = alloca %struct.TYPE_41__, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca float, align 4
  %38 = alloca %struct.TYPE_40__, align 4
  %39 = alloca %struct.TYPE_40__, align 4
  %40 = alloca %struct.TYPE_40__, align 4
  %41 = alloca %struct.TYPE_40__, align 4
  %42 = alloca %struct.TYPE_40__, align 4
  %43 = alloca [256 x i8], align 16
  %44 = alloca [256 x i8], align 16
  %45 = alloca [256 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store float -1.000000e+00, float* %16, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @basecfg(i8* %46)
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.TYPE_37__** @calloc(i32 %52, i32 8)
  store %struct.TYPE_37__** %53, %struct.TYPE_37__*** %18, align 8
  %54 = call i32 @time(i32 0)
  %55 = call i32 @srand(i32 %54)
  %56 = call i32 (...) @rand()
  store i32 %56, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %81, %7
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @srand(i32 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.TYPE_37__* @load_network(i8* %64, i8* %65, i32 %66)
  %68 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %68, i64 %70
  store %struct.TYPE_37__* %67, %struct.TYPE_37__** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %73, i64 %75
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, %72
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %57

84:                                               ; preds = %57
  %85 = call i32 @time(i32 0)
  %86 = call i32 @srand(i32 %85)
  %87 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %87, i64 0
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %88, align 8
  store %struct.TYPE_37__* %89, %struct.TYPE_37__** %20, align 8
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %91 = call { i64, i64 } @get_network_image(%struct.TYPE_37__* %90)
  %92 = bitcast %struct.TYPE_40__* %21 to { i64, i64 }*
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 0
  %94 = extractvalue { i64, i64 } %91, 0
  store i64 %94, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 1
  %96 = extractvalue { i64, i64 } %91, 1
  store i64 %96, i64* %95, align 4
  %97 = bitcast %struct.TYPE_40__* %22 to i8*
  %98 = bitcast %struct.TYPE_40__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 16, i1 false)
  %99 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 0
  store i32 3, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %101, %103
  %105 = mul nsw i32 %104, 80
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %111, %113
  store i32 %114, i32* %23, align 4
  %115 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %23, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %23, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load i32, i32* %12, align 4
  %143 = mul nsw i32 %141, %142
  store i32 %143, i32* %24, align 4
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 5
  %149 = load double, double* %148, align 8
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 6
  %152 = load double, double* %151, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %146, double %149, double %152)
  %154 = load i8*, i8** %8, align 8
  %155 = call %struct.TYPE_39__* @read_data_cfg(i8* %154)
  store %struct.TYPE_39__* %155, %struct.TYPE_39__** %25, align 8
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %157 = call i8* @option_find_str(%struct.TYPE_39__* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %157, i8** %26, align 8
  %158 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  %159 = call i8* @option_find_str(%struct.TYPE_39__* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i8* %159, i8** %27, align 8
  %160 = load i8*, i8** %27, align 8
  %161 = call %struct.TYPE_39__* @get_paths(i8* %160)
  store %struct.TYPE_39__* %161, %struct.TYPE_39__** %28, align 8
  %162 = load %struct.TYPE_39__*, %struct.TYPE_39__** %28, align 8
  %163 = call i64 @list_to_array(%struct.TYPE_39__* %162)
  %164 = inttoptr i64 %163 to i8**
  store i8** %164, i8*** %29, align 8
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %28, align 8
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load %struct.TYPE_39__*, %struct.TYPE_39__** %28, align 8
  %170 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %30, align 4
  %172 = bitcast %struct.TYPE_38__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %172, i8 0, i64 96, i1 false)
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 2
  store i32 32, i32* %181, align 8
  %182 = load i32, i32* %23, align 4
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 3
  store i32 %182, i32* %183, align 4
  %184 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 4
  store i32 90, i32* %184, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 16
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 18
  store i32 %187, i32* %188, align 4
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 17
  store i32 %191, i32* %192, align 8
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 14
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 16
  store i32 %195, i32* %196, align 4
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 13
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 15
  store i32 %199, i32* %200, align 8
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %201, i32 0, i32 12
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 14
  store i32 %203, i32* %204, align 4
  %205 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 13
  store i32 %207, i32* %208, align 8
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 12
  store i32 %211, i32* %212, align 4
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 5
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 6
  store i32 80, i32* %217, align 8
  %218 = load i8**, i8*** %29, align 8
  %219 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 7
  store i8** %218, i8*** %219, align 8
  %220 = load i32, i32* %24, align 4
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 8
  store i32 %220, i32* %221, align 8
  %222 = load i32, i32* %30, align 4
  %223 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 9
  store i32 %222, i32* %223, align 4
  %224 = load i32, i32* @ISEG_DATA, align 4
  %225 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 11
  store i32 %224, i32* %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 10
  store %struct.TYPE_41__* %33, %struct.TYPE_41__** %226, align 8
  %227 = call i32 @load_data(%struct.TYPE_38__* byval(%struct.TYPE_38__) align 8 %31)
  store i32 %227, i32* %34, align 4
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %228, i32 0, i32 7
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %30, align 4
  %233 = sdiv i32 %231, %232
  store i32 %233, i32* %35, align 4
  br label %234

234:                                              ; preds = %492, %84
  %235 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %236 = call i32 @get_current_batch(%struct.TYPE_37__* %235)
  %237 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %246, label %241

241:                                              ; preds = %234
  %242 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 0
  br label %246

246:                                              ; preds = %241, %234
  %247 = phi i1 [ true, %234 ], [ %245, %241 ]
  br i1 %247, label %248, label %493

248:                                              ; preds = %246
  %249 = call double (...) @what_time_is_it_now()
  store double %249, double* %36, align 8
  %250 = load i32, i32* %34, align 4
  %251 = call i32 @pthread_join(i32 %250, i32 0)
  %252 = bitcast %struct.TYPE_41__* %32 to i8*
  %253 = bitcast %struct.TYPE_41__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 16, i1 false)
  %254 = call i32 @load_data(%struct.TYPE_38__* byval(%struct.TYPE_38__) align 8 %31)
  store i32 %254, i32* %34, align 4
  %255 = call double (...) @what_time_is_it_now()
  %256 = load double, double* %36, align 8
  %257 = fsub double %255, %256
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %257)
  %259 = call double (...) @what_time_is_it_now()
  store double %259, double* %36, align 8
  store float 0.000000e+00, float* %37, align 4
  %260 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %261 = bitcast %struct.TYPE_41__* %32 to { i32*, i32* }*
  %262 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %261, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = call float @train_network(%struct.TYPE_37__* %260, i32* %263, i32* %265)
  store float %266, float* %37, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %411

269:                                              ; preds = %248
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %23, align 4
  %274 = sdiv i32 %272, %273
  %275 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %276 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %23, align 4
  %279 = sdiv i32 %277, %278
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %287 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %288, 1
  %290 = mul nsw i32 %285, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %282, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call { i64, i64 } @float_to_image(i32 %274, i32 %279, i32 80, i32 %293)
  %295 = bitcast %struct.TYPE_40__* %38 to { i64, i64 }*
  %296 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 0
  %297 = extractvalue { i64, i64 } %294, 0
  store i64 %297, i64* %296, align 4
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 1
  %299 = extractvalue { i64, i64 } %294, 1
  store i64 %299, i64* %298, align 4
  %300 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %301 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = sub nsw i32 %317, 1
  %319 = mul nsw i32 %314, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %311, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = call { i64, i64 } @float_to_image(i32 %302, i32 %305, i32 %308, i32 %322)
  %324 = bitcast %struct.TYPE_40__* %39 to { i64, i64 }*
  %325 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %324, i32 0, i32 0
  %326 = extractvalue { i64, i64 } %323, 0
  store i64 %326, i64* %325, align 4
  %327 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %324, i32 0, i32 1
  %328 = extractvalue { i64, i64 } %323, 1
  store i64 %328, i64* %327, align 4
  %329 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 0
  store i32 80, i32* %329, align 4
  %330 = bitcast %struct.TYPE_40__* %38 to { i64, i64 }*
  %331 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 4
  %333 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %330, i32 0, i32 1
  %334 = load i64, i64* %333, align 4
  %335 = call { i64, i64 } @mask_to_rgb(i64 %332, i64 %334)
  %336 = bitcast %struct.TYPE_40__* %40 to { i64, i64 }*
  %337 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %336, i32 0, i32 0
  %338 = extractvalue { i64, i64 } %335, 0
  store i64 %338, i64* %337, align 4
  %339 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %336, i32 0, i32 1
  %340 = extractvalue { i64, i64 } %335, 1
  store i64 %340, i64* %339, align 4
  %341 = bitcast %struct.TYPE_40__* %21 to { i64, i64 }*
  %342 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 4
  %344 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %341, i32 0, i32 1
  %345 = load i64, i64* %344, align 4
  %346 = call { i64, i64 } @mask_to_rgb(i64 %343, i64 %345)
  %347 = bitcast %struct.TYPE_40__* %41 to { i64, i64 }*
  %348 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %347, i32 0, i32 0
  %349 = extractvalue { i64, i64 } %346, 0
  store i64 %349, i64* %348, align 4
  %350 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %347, i32 0, i32 1
  %351 = extractvalue { i64, i64 } %346, 1
  store i64 %351, i64* %350, align 4
  %352 = bitcast %struct.TYPE_40__* %22 to { i64, i64 }*
  %353 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 4
  %355 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %352, i32 0, i32 1
  %356 = load i64, i64* %355, align 4
  %357 = call { i64, i64 } @copy_image(i64 %354, i64 %356)
  %358 = bitcast %struct.TYPE_40__* %42 to { i64, i64 }*
  %359 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %358, i32 0, i32 0
  %360 = extractvalue { i64, i64 } %357, 0
  store i64 %360, i64* %359, align 4
  %361 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %358, i32 0, i32 1
  %362 = extractvalue { i64, i64 } %357, 1
  store i64 %362, i64* %361, align 4
  %363 = bitcast %struct.TYPE_40__* %42 to { i64, i64 }*
  %364 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 4
  %366 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %363, i32 0, i32 1
  %367 = load i64, i64* %366, align 4
  %368 = call i32 @normalize_image2(i64 %365, i64 %367)
  %369 = bitcast %struct.TYPE_40__* %42 to { i64, i64 }*
  %370 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 4
  %372 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 1
  %373 = load i64, i64* %372, align 4
  %374 = call i32 @show_image(i64 %371, i64 %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %375 = bitcast %struct.TYPE_40__* %42 to { i64, i64 }*
  %376 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 4
  %378 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %375, i32 0, i32 1
  %379 = load i64, i64* %378, align 4
  %380 = call i32 @free_image(i64 %377, i64 %379)
  %381 = bitcast %struct.TYPE_40__* %39 to { i64, i64 }*
  %382 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 4
  %384 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 1
  %385 = load i64, i64* %384, align 4
  %386 = call i32 @show_image(i64 %383, i64 %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %387 = bitcast %struct.TYPE_40__* %41 to { i64, i64 }*
  %388 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 4
  %390 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 1
  %391 = load i64, i64* %390, align 4
  %392 = call i32 @show_image(i64 %389, i64 %391, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %393 = bitcast %struct.TYPE_40__* %40 to { i64, i64 }*
  %394 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 4
  %396 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %393, i32 0, i32 1
  %397 = load i64, i64* %396, align 4
  %398 = call i32 @show_image(i64 %395, i64 %397, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 100)
  %399 = bitcast %struct.TYPE_40__* %40 to { i64, i64 }*
  %400 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 4
  %402 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %399, i32 0, i32 1
  %403 = load i64, i64* %402, align 4
  %404 = call i32 @free_image(i64 %401, i64 %403)
  %405 = bitcast %struct.TYPE_40__* %41 to { i64, i64 }*
  %406 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 4
  %408 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %405, i32 0, i32 1
  %409 = load i64, i64* %408, align 4
  %410 = call i32 @free_image(i64 %407, i64 %409)
  br label %411

411:                                              ; preds = %269, %248
  %412 = load float, float* %16, align 4
  %413 = fcmp oeq float %412, -1.000000e+00
  br i1 %413, label %414, label %416

414:                                              ; preds = %411
  %415 = load float, float* %37, align 4
  store float %415, float* %16, align 4
  br label %416

416:                                              ; preds = %414, %411
  %417 = load float, float* %16, align 4
  %418 = fpext float %417 to double
  %419 = fmul double %418, 9.000000e-01
  %420 = load float, float* %37, align 4
  %421 = fpext float %420 to double
  %422 = fmul double %421, 1.000000e-01
  %423 = fadd double %419, %422
  %424 = fptrunc double %423 to float
  store float %424, float* %16, align 4
  %425 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %426 = call i32 @get_current_batch(%struct.TYPE_37__* %425)
  %427 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %428 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %427, i32 0, i32 7
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %429, align 4
  %431 = sitofp i32 %430 to float
  %432 = load i32, i32* %30, align 4
  %433 = sitofp i32 %432 to float
  %434 = fdiv float %431, %433
  %435 = fpext float %434 to double
  %436 = load float, float* %37, align 4
  %437 = fpext float %436 to double
  %438 = load float, float* %16, align 4
  %439 = fpext float %438 to double
  %440 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %441 = call i32 @get_current_rate(%struct.TYPE_37__* %440)
  %442 = call double (...) @what_time_is_it_now()
  %443 = load double, double* %36, align 8
  %444 = fsub double %442, %443
  %445 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %446 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %445, i32 0, i32 7
  %447 = load i32*, i32** %446, align 8
  %448 = load i32, i32* %447, align 4
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %426, double %435, double %437, double %439, i32 %441, double %444, i32 %448)
  %450 = bitcast %struct.TYPE_41__* %32 to { i32*, i32* }*
  %451 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %450, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = call i32 @free_data(i32* %452, i32* %454)
  %456 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %457 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %456, i32 0, i32 7
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* %30, align 4
  %461 = sdiv i32 %459, %460
  %462 = load i32, i32* %35, align 4
  %463 = icmp sgt i32 %461, %462
  br i1 %463, label %464, label %479

464:                                              ; preds = %416
  %465 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %466 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %465, i32 0, i32 7
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %30, align 4
  %470 = sdiv i32 %468, %469
  store i32 %470, i32* %35, align 4
  %471 = getelementptr inbounds [256 x i8], [256 x i8]* %43, i64 0, i64 0
  %472 = load i8*, i8** %26, align 8
  %473 = load i8*, i8** %17, align 8
  %474 = load i32, i32* %35, align 4
  %475 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %471, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %472, i8* %473, i32 %474)
  %476 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %477 = getelementptr inbounds [256 x i8], [256 x i8]* %43, i64 0, i64 0
  %478 = call i32 @save_weights(%struct.TYPE_37__* %476, i8* %477)
  br label %479

479:                                              ; preds = %464, %416
  %480 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %481 = call i32 @get_current_batch(%struct.TYPE_37__* %480)
  %482 = srem i32 %481, 100
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %492

484:                                              ; preds = %479
  %485 = getelementptr inbounds [256 x i8], [256 x i8]* %44, i64 0, i64 0
  %486 = load i8*, i8** %26, align 8
  %487 = load i8*, i8** %17, align 8
  %488 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %485, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %486, i8* %487)
  %489 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %490 = getelementptr inbounds [256 x i8], [256 x i8]* %44, i64 0, i64 0
  %491 = call i32 @save_weights(%struct.TYPE_37__* %489, i8* %490)
  br label %492

492:                                              ; preds = %484, %479
  br label %234

493:                                              ; preds = %246
  %494 = getelementptr inbounds [256 x i8], [256 x i8]* %45, i64 0, i64 0
  %495 = load i8*, i8** %26, align 8
  %496 = load i8*, i8** %17, align 8
  %497 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %494, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %495, i8* %496)
  %498 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %499 = getelementptr inbounds [256 x i8], [256 x i8]* %45, i64 0, i64 0
  %500 = call i32 @save_weights(%struct.TYPE_37__* %498, i8* %499)
  %501 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %502 = call i32 @free_network(%struct.TYPE_37__* %501)
  %503 = load i8**, i8*** %29, align 8
  %504 = load %struct.TYPE_39__*, %struct.TYPE_39__** %28, align 8
  %505 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @free_ptrs(i8** %503, i32 %506)
  %508 = load %struct.TYPE_39__*, %struct.TYPE_39__** %28, align 8
  %509 = call i32 @free_list(%struct.TYPE_39__* %508)
  %510 = load i8*, i8** %17, align 8
  %511 = call i32 @free(i8* %510)
  ret void
}

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_37__** @calloc(i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_37__* @load_network(i8*, i8*, i32) #1

declare dso_local { i64, i64 } @get_network_image(%struct.TYPE_37__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_39__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_39__*, i8*, i8*) #1

declare dso_local %struct.TYPE_39__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_39__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_data(%struct.TYPE_38__* byval(%struct.TYPE_38__) align 8) #1

declare dso_local i32 @get_current_batch(%struct.TYPE_37__*) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @pthread_join(i32, i32) #1

declare dso_local float @train_network(%struct.TYPE_37__*, i32*, i32*) #1

declare dso_local { i64, i64 } @float_to_image(i32, i32, i32, i32) #1

declare dso_local { i64, i64 } @mask_to_rgb(i64, i64) #1

declare dso_local { i64, i64 } @copy_image(i64, i64) #1

declare dso_local i32 @normalize_image2(i64, i64) #1

declare dso_local i32 @show_image(i64, i64, i8*, i32) #1

declare dso_local i32 @free_image(i64, i64) #1

declare dso_local i32 @get_current_rate(%struct.TYPE_37__*) #1

declare dso_local i32 @free_data(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @save_weights(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @free_network(%struct.TYPE_37__*) #1

declare dso_local i32 @free_ptrs(i8**, i32) #1

declare dso_local i32 @free_list(%struct.TYPE_39__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
