; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_read.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, %struct.TYPE_45__*, %struct.TYPE_43__, %struct.TYPE_37__* }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32, %struct.TYPE_42__, i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__, %struct.TYPE_40__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_34__, i64, i64, %struct.TYPE_48__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_33__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__, %struct.TYPE_46__ }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_46__ = type { i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@__const.ccv_convnet_read.layer_params_qs = private unnamed_addr constant [326 x i8] c"SELECT type, input_matrix_rows, input_matrix_cols, input_matrix_channels, input_matrix_partition, input_node_count, output_rows, output_cols, output_channels, output_partition, output_count, output_strides, output_border, output_size, output_kappa, output_alpha, output_beta, output_relu FROM layer_params ORDER BY layer ASC;\00", align 16
@SQLITE_ROW = common dso_local global i64 0, align 8
@__const.ccv_convnet_read.convnet_params_input_qs = private unnamed_addr constant [72 x i8] c"SELECT input_height, input_width FROM convnet_params WHERE convnet = 0;\00", align 16
@__const.ccv_convnet_read.layer_data_qs = private unnamed_addr constant [60 x i8] c"SELECT layer, weight, bias, half_precision FROM layer_data;\00", align 16
@__const.ccv_convnet_read.convnet_params_mean_activity_qs = private unnamed_addr constant [60 x i8] c"SELECT mean_activity FROM convnet_params WHERE convnet = 0;\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_36__* @ccv_convnet_read(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [326 x i8], align 16
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_38__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [72 x i8], align 16
  %14 = alloca %struct.TYPE_35__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [60 x i8], align 16
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca float*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca [60 x i8], align 16
  %27 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %28 = load i64, i64* @SQLITE_OK, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @sqlite3_open(i8* %29, i32** %6)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %492

32:                                               ; preds = %2
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %7, align 8
  store i32* null, i32** %8, align 8
  %33 = bitcast [326 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 getelementptr inbounds ([326 x i8], [326 x i8]* @__const.ccv_convnet_read.layer_params_qs, i32 0, i32 0), i64 326, i1 false)
  %34 = load i64, i64* @SQLITE_OK, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %37 = call i64 @sqlite3_prepare_v2(i32* %35, i8* %36, i32 326, i32** %8, i32 0)
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %488

39:                                               ; preds = %32
  %40 = call %struct.TYPE_39__* @ccv_array_new(i32 128, i32 3, i32 0)
  store %struct.TYPE_39__* %40, %struct.TYPE_39__** %10, align 8
  br label %41

41:                                               ; preds = %163, %39
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @sqlite3_step(i32* %42)
  %44 = load i64, i64* @SQLITE_ROW, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %166

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @sqlite3_column_int(i32* %47, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @sqlite3_column_int(i32* %50, i32 1)
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @sqlite3_column_int(i32* %55, i32 2)
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @sqlite3_column_int(i32* %60, i32 3)
  %62 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @sqlite3_column_int(i32* %65, i32 4)
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @sqlite3_column_int(i32* %70, i32 5)
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %163 [
    i32 131, label %79
    i32 130, label %115
    i32 128, label %126
    i32 132, label %126
    i32 129, label %142
  ]

79:                                               ; preds = %46
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @sqlite3_column_int(i32* %80, i32 6)
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @sqlite3_column_int(i32* %85, i32 7)
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @sqlite3_column_int(i32* %90, i32 8)
  %92 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @sqlite3_column_int(i32* %95, i32 9)
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @sqlite3_column_int(i32* %100, i32 10)
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @sqlite3_column_int(i32* %105, i32 11)
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 5
  store i32 %106, i32* %109, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @sqlite3_column_int(i32* %110, i32 12)
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 6
  store i32 %111, i32* %114, align 4
  br label %163

115:                                              ; preds = %46
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @sqlite3_column_int(i32* %116, i32 10)
  %118 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @sqlite3_column_int(i32* %121, i32 17)
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  br label %163

126:                                              ; preds = %46, %46
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @sqlite3_column_int(i32* %127, i32 11)
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @sqlite3_column_int(i32* %132, i32 12)
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @sqlite3_column_int(i32* %137, i32 13)
  %139 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  br label %163

142:                                              ; preds = %46
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @sqlite3_column_int(i32* %143, i32 13)
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i8* @sqlite3_column_double(i32* %148, i32 14)
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 3
  store i8* %149, i8** %152, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i8* @sqlite3_column_double(i32* %153, i32 15)
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 2
  store i8* %154, i8** %157, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = call i8* @sqlite3_column_double(i32* %158, i32 16)
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  br label %163

163:                                              ; preds = %46, %142, %126, %115, %79
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %165 = call i32 @ccv_array_push(%struct.TYPE_39__* %164, %struct.TYPE_38__* %11)
  br label %41

166:                                              ; preds = %41
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @sqlite3_finalize(i32* %167)
  store i32* null, i32** %12, align 8
  %169 = bitcast [72 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %169, i8* align 16 getelementptr inbounds ([72 x i8], [72 x i8]* @__const.ccv_convnet_read.convnet_params_input_qs, i32 0, i32 0), i64 72, i1 false)
  %170 = call i64 @ccv_size(i32 0, i32 0)
  %171 = bitcast %struct.TYPE_35__* %14 to i64*
  store i64 %170, i64* %171, align 4
  %172 = load i64, i64* @SQLITE_OK, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds [72 x i8], [72 x i8]* %13, i64 0, i64 0
  %175 = call i64 @sqlite3_prepare_v2(i32* %173, i8* %174, i32 72, i32** %12, i32 0)
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %166
  %178 = load i32*, i32** %12, align 8
  %179 = call i64 @sqlite3_step(i32* %178)
  %180 = load i64, i64* @SQLITE_ROW, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @sqlite3_column_int(i32* %183, i32 0)
  %185 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  store i32 %184, i32* %185, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = call i32 @sqlite3_column_int(i32* %186, i32 1)
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %182, %177
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @sqlite3_finalize(i32* %190)
  br label %192

192:                                              ; preds = %189, %166
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br label %200

200:                                              ; preds = %196, %192
  %201 = phi i1 [ false, %192 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load i32, i32* %4, align 4
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %206 = call i64 @ccv_array_get(%struct.TYPE_39__* %205, i32 0)
  %207 = inttoptr i64 %206 to %struct.TYPE_38__*
  %208 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = bitcast %struct.TYPE_35__* %14 to i64*
  %212 = load i64, i64* %211, align 4
  %213 = call %struct.TYPE_36__* @ccv_convnet_new(i32 %204, i64 %212, %struct.TYPE_38__* %207, i32 %210)
  store %struct.TYPE_36__* %213, %struct.TYPE_36__** %7, align 8
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %215 = call i32 @ccv_array_free(%struct.TYPE_39__* %214)
  store i32* null, i32** %15, align 8
  %216 = bitcast [60 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %216, i8* align 16 getelementptr inbounds ([60 x i8], [60 x i8]* @__const.ccv_convnet_read.layer_data_qs, i32 0, i32 0), i64 60, i1 false)
  %217 = load i64, i64* @SQLITE_OK, align 8
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %220 = call i64 @sqlite3_prepare_v2(i32* %218, i8* %219, i32 60, i32** %15, i32 0)
  %221 = icmp eq i64 %217, %220
  br i1 %221, label %222, label %436

222:                                              ; preds = %200
  br label %223

223:                                              ; preds = %432, %222
  %224 = load i32*, i32** %15, align 8
  %225 = call i64 @sqlite3_step(i32* %224)
  %226 = load i64, i64* @SQLITE_ROW, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %433

228:                                              ; preds = %223
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %230, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = call i32 @sqlite3_column_int(i32* %232, i32 0)
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %231, i64 %234
  store %struct.TYPE_37__* %235, %struct.TYPE_37__** %17, align 8
  %236 = load i32*, i32** %15, align 8
  %237 = call i32 @sqlite3_column_int(i32* %236, i32 3)
  store i32 %237, i32* %18, align 4
  %238 = load i32*, i32** %15, align 8
  %239 = call i32 @sqlite3_column_bytes(i32* %238, i32 1)
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i64 4, i64 4
  %245 = udiv i64 %240, %244
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %19, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %310

252:                                              ; preds = %228
  %253 = load i32*, i32** %15, align 8
  %254 = call i8* @sqlite3_column_blob(i32* %253, i32 1)
  store i8* %254, i8** %20, align 8
  %255 = load i32, i32* %18, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %252
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = mul i64 4, %261
  %263 = trunc i64 %262 to i32
  %264 = call i64 @ccmalloc(i32 %263)
  %265 = inttoptr i64 %264 to float*
  store float* %265, float** %21, align 8
  %266 = load i8*, i8** %20, align 8
  %267 = bitcast i8* %266 to i32*
  %268 = load float*, float** %21, align 8
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ccv_half_precision_to_float(i32* %267, float* %268, i32 %271)
  %273 = load float*, float** %21, align 8
  %274 = bitcast float* %273 to i8*
  store i8* %274, i8** %20, align 8
  br label %275

275:                                              ; preds = %257, %252
  %276 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  switch i32 %278, label %303 [
    i32 131, label %279
    i32 130, label %291
  ]

279:                                              ; preds = %275
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = load i8*, i8** %20, align 8
  %284 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = mul i64 4, %287
  %289 = trunc i64 %288 to i32
  %290 = call i32 @memcpy(i32 %282, i8* %283, i32 %289)
  br label %303

291:                                              ; preds = %275
  %292 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = load i8*, i8** %20, align 8
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = mul i64 4, %299
  %301 = trunc i64 %300 to i32
  %302 = call i32 @memcpy(i32 %294, i8* %295, i32 %301)
  br label %303

303:                                              ; preds = %275, %291, %279
  %304 = load i32, i32* %18, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i8*, i8** %20, align 8
  %308 = call i32 @ccfree(i8* %307)
  br label %309

309:                                              ; preds = %306, %303
  br label %310

310:                                              ; preds = %309, %228
  %311 = load i32*, i32** %15, align 8
  %312 = call i32 @sqlite3_column_bytes(i32* %311, i32 2)
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %18, align 4
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i64 4, i64 4
  %318 = udiv i64 %313, %317
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %22, align 4
  %320 = load i32, i32* %22, align 4
  %321 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, 131
  br i1 %324, label %325, label %331

325:                                              ; preds = %310
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  br label %337

331:                                              ; preds = %310
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  br label %337

337:                                              ; preds = %331, %325
  %338 = phi i32 [ %330, %325 ], [ %336, %331 ]
  %339 = icmp eq i32 %320, %338
  br i1 %339, label %340, label %432

340:                                              ; preds = %337
  %341 = load i32*, i32** %15, align 8
  %342 = call i8* @sqlite3_column_blob(i32* %341, i32 2)
  store i8* %342, i8** %23, align 8
  %343 = load i32, i32* %18, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %393

345:                                              ; preds = %340
  %346 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 131
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  br label %362

356:                                              ; preds = %345
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  br label %362

362:                                              ; preds = %356, %350
  %363 = phi i32 [ %355, %350 ], [ %361, %356 ]
  %364 = sext i32 %363 to i64
  %365 = mul i64 4, %364
  %366 = trunc i64 %365 to i32
  %367 = call i64 @ccmalloc(i32 %366)
  %368 = inttoptr i64 %367 to float*
  store float* %368, float** %24, align 8
  %369 = load i8*, i8** %23, align 8
  %370 = bitcast i8* %369 to i32*
  %371 = load float*, float** %24, align 8
  %372 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %373 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = icmp eq i32 %374, 131
  br i1 %375, label %376, label %382

376:                                              ; preds = %362
  %377 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %378 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  br label %388

382:                                              ; preds = %362
  %383 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  br label %388

388:                                              ; preds = %382, %376
  %389 = phi i32 [ %381, %376 ], [ %387, %382 ]
  %390 = call i32 @ccv_half_precision_to_float(i32* %370, float* %371, i32 %389)
  %391 = load float*, float** %24, align 8
  %392 = bitcast float* %391 to i8*
  store i8* %392, i8** %23, align 8
  br label %393

393:                                              ; preds = %388, %340
  %394 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %395 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  switch i32 %396, label %425 [
    i32 131, label %397
    i32 130, label %411
  ]

397:                                              ; preds = %393
  %398 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %399 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = load i8*, i8** %23, align 8
  %402 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %403 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = mul i64 4, %407
  %409 = trunc i64 %408 to i32
  %410 = call i32 @memcpy(i32 %400, i8* %401, i32 %409)
  br label %425

411:                                              ; preds = %393
  %412 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %413 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = load i8*, i8** %23, align 8
  %416 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %417 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = mul i64 4, %421
  %423 = trunc i64 %422 to i32
  %424 = call i32 @memcpy(i32 %414, i8* %415, i32 %423)
  br label %425

425:                                              ; preds = %393, %411, %397
  %426 = load i32, i32* %18, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %425
  %429 = load i8*, i8** %23, align 8
  %430 = call i32 @ccfree(i8* %429)
  br label %431

431:                                              ; preds = %428, %425
  br label %432

432:                                              ; preds = %431, %337
  br label %223

433:                                              ; preds = %223
  %434 = load i32*, i32** %15, align 8
  %435 = call i32 @sqlite3_finalize(i32* %434)
  br label %436

436:                                              ; preds = %433, %200
  store i32* null, i32** %25, align 8
  %437 = bitcast [60 x i8]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %437, i8* align 16 getelementptr inbounds ([60 x i8], [60 x i8]* @__const.ccv_convnet_read.convnet_params_mean_activity_qs, i32 0, i32 0), i64 60, i1 false)
  %438 = load i64, i64* @SQLITE_OK, align 8
  %439 = load i32*, i32** %6, align 8
  %440 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i64 0, i64 0
  %441 = call i64 @sqlite3_prepare_v2(i32* %439, i8* %440, i32 60, i32** %25, i32 0)
  %442 = icmp eq i64 %438, %441
  br i1 %442, label %443, label %487

443:                                              ; preds = %436
  %444 = load i32*, i32** %25, align 8
  %445 = call i64 @sqlite3_step(i32* %444)
  %446 = load i64, i64* @SQLITE_ROW, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %484

448:                                              ; preds = %443
  %449 = load i32*, i32** %25, align 8
  %450 = call i32 @sqlite3_column_bytes(i32* %449, i32 0)
  %451 = sext i32 %450 to i64
  %452 = udiv i64 %451, 4
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %27, align 4
  %454 = load i32, i32* %27, align 4
  %455 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = mul nsw i32 %458, %462
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = mul nsw i32 %463, %466
  %468 = icmp eq i32 %454, %467
  br i1 %468, label %469, label %483

469:                                              ; preds = %448
  %470 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_45__*, %struct.TYPE_45__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = load i32*, i32** %25, align 8
  %477 = call i8* @sqlite3_column_blob(i32* %476, i32 0)
  %478 = load i32, i32* %27, align 4
  %479 = sext i32 %478 to i64
  %480 = mul i64 4, %479
  %481 = trunc i64 %480 to i32
  %482 = call i32 @memcpy(i32 %475, i8* %477, i32 %481)
  br label %483

483:                                              ; preds = %469, %448
  br label %484

484:                                              ; preds = %483, %443
  %485 = load i32*, i32** %25, align 8
  %486 = call i32 @sqlite3_finalize(i32* %485)
  br label %487

487:                                              ; preds = %484, %436
  br label %488

488:                                              ; preds = %487, %32
  %489 = load i32*, i32** %6, align 8
  %490 = call i32 @sqlite3_close(i32* %489)
  %491 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  store %struct.TYPE_36__* %491, %struct.TYPE_36__** %3, align 8
  br label %493

492:                                              ; preds = %2
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %493

493:                                              ; preds = %492, %488
  %494 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  ret %struct.TYPE_36__* %494
}

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local %struct.TYPE_39__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @ccv_size(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_36__* @ccv_convnet_new(i32, i64, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_half_precision_to_float(i32*, float*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ccfree(i8*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
