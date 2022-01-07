; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_write.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_24__, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_18__, i32*, i32*, %struct.TYPE_27__ }
%struct.TYPE_18__ = type { %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_17__, %struct.TYPE_30__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@__const.ccv_convnet_write.layer_create_table_qs = private unnamed_addr constant [747 x i8] c"CREATE TABLE IF NOT EXISTS layer_params (layer INTEGER PRIMARY KEY ASC, type INTEGER, input_matrix_rows INTEGER, input_matrix_cols INTEGER, input_matrix_channels INTEGER, input_matrix_partition INTEGER, input_node_count INTEGER, output_rows INTEGER, output_cols INTEGER, output_channels INTEGER, output_partition INTEGER, output_count INTEGER, output_strides INTEGER, output_border INTEGER, output_size INTEGER, output_kappa REAL, output_alpha REAL, output_beta REAL, output_relu INTEGER);CREATE TABLE IF NOT EXISTS convnet_params (convnet INTEGER PRIMARY KEY ASC, input_height INTEGER, input_width INTEGER, mean_activity BLOB);CREATE TABLE IF NOT EXISTS layer_data (layer INTEGER PRIMARY KEY ASC, weight BLOB, bias BLOB, half_precision INTEGER);\00", align 16
@__const.ccv_convnet_write.layer_params_insert_qs = private unnamed_addr constant [633 x i8] c"REPLACE INTO layer_params (layer, type, input_matrix_rows, input_matrix_cols, input_matrix_channels, input_matrix_partition, input_node_count, output_rows, output_cols, output_channels, output_partition, output_count, output_strides, output_border, output_size, output_kappa, output_alpha, output_beta, output_relu) VALUES ($layer, $type, $input_matrix_rows, $input_matrix_cols, $input_matrix_channels, $input_matrix_partition, $input_node_count, $output_rows, $output_cols, $output_channels, $output_partition, $output_count, $output_strides, $output_border, $output_size, $output_kappa, $output_alpha, $output_beta, $output_relu);\00", align 16
@__const.ccv_convnet_write.layer_data_insert_qs = private unnamed_addr constant [112 x i8] c"REPLACE INTO layer_data (layer, weight, bias, half_precision) VALUES ($layer, $weight, $bias, $half_precision);\00", align 16
@SQLITE_DONE = common dso_local global i64 0, align 8
@ccfree = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@__const.ccv_convnet_write.convnet_params_insert_qs = private unnamed_addr constant [137 x i8] c"REPLACE INTO convnet_params (convnet, mean_activity, input_height, input_width) VALUES (0, $mean_activity, $input_height, $input_width);\00", align 16
@CCV_32F = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_convnet_write(%struct.TYPE_20__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [747 x i8], align 16
  %9 = alloca [633 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca [112 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [137 x i8], align 16
  %18 = alloca i32*, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  store i32 %2, i32* %19, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %20 = load i64, i64* @SQLITE_OK, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @sqlite3_open(i8* %21, i32** %7)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %520

24:                                               ; preds = %3
  %25 = bitcast [747 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 getelementptr inbounds ([747 x i8], [747 x i8]* @__const.ccv_convnet_write.layer_create_table_qs, i32 0, i32 0), i64 747, i1 false)
  %26 = load i64, i64* @SQLITE_OK, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds [747 x i8], [747 x i8]* %8, i64 0, i64 0
  %29 = call i64 @sqlite3_exec(i32* %27, i8* %28, i32 0, i32 0, i32 0)
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = bitcast [633 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 getelementptr inbounds ([633 x i8], [633 x i8]* @__const.ccv_convnet_write.layer_params_insert_qs, i32 0, i32 0), i64 633, i1 false)
  store i32* null, i32** %10, align 8
  %34 = load i64, i64* @SQLITE_OK, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds [633 x i8], [633 x i8]* %9, i64 0, i64 0
  %37 = call i64 @sqlite3_prepare_v2(i32* %35, i8* %36, i32 633, i32** %10, i32 0)
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = bitcast [112 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 getelementptr inbounds ([112 x i8], [112 x i8]* @__const.ccv_convnet_write.layer_data_insert_qs, i32 0, i32 0), i64 112, i1 false)
  store i32* null, i32** %12, align 8
  %42 = load i64, i64* @SQLITE_OK, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds [112 x i8], [112 x i8]* %11, i64 0, i64 0
  %45 = call i64 @sqlite3_prepare_v2(i32* %43, i8* %44, i32 112, i32** %12, i32 0)
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %405, %24
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %408

55:                                               ; preds = %49
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i64 %60
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %14, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @sqlite3_bind_int(i32* %62, i32 1, i32 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sqlite3_bind_int(i32* %65, i32 2, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sqlite3_bind_int(i32* %70, i32 3, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sqlite3_bind_int(i32* %77, i32 4, i32 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sqlite3_bind_int(i32* %84, i32 5, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sqlite3_bind_int(i32* %91, i32 6, i32 %96)
  %98 = load i32*, i32** %10, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @sqlite3_bind_int(i32* %98, i32 7, i32 %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %224 [
    i32 131, label %108
    i32 130, label %158
    i32 128, label %173
    i32 132, label %173
    i32 129, label %195
  ]

108:                                              ; preds = %55
  %109 = load i32*, i32** %10, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @sqlite3_bind_int(i32* %109, i32 8, i32 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sqlite3_bind_int(i32* %116, i32 9, i32 %121)
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @sqlite3_bind_int(i32* %123, i32 10, i32 %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @sqlite3_bind_int(i32* %130, i32 11, i32 %135)
  %137 = load i32*, i32** %10, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @sqlite3_bind_int(i32* %137, i32 12, i32 %142)
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @sqlite3_bind_int(i32* %144, i32 13, i32 %149)
  %151 = load i32*, i32** %10, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @sqlite3_bind_int(i32* %151, i32 14, i32 %156)
  br label %224

158:                                              ; preds = %55
  %159 = load i32*, i32** %10, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @sqlite3_bind_int(i32* %159, i32 12, i32 %164)
  %166 = load i32*, i32** %10, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @sqlite3_bind_int(i32* %166, i32 19, i32 %171)
  br label %224

173:                                              ; preds = %55, %55
  %174 = load i32*, i32** %10, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @sqlite3_bind_int(i32* %174, i32 13, i32 %179)
  %181 = load i32*, i32** %10, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @sqlite3_bind_int(i32* %181, i32 14, i32 %186)
  %188 = load i32*, i32** %10, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @sqlite3_bind_int(i32* %188, i32 15, i32 %193)
  br label %224

195:                                              ; preds = %55
  %196 = load i32*, i32** %10, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @sqlite3_bind_int(i32* %196, i32 15, i32 %201)
  %203 = load i32*, i32** %10, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @sqlite3_bind_double(i32* %203, i32 16, i32 %208)
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @sqlite3_bind_double(i32* %210, i32 17, i32 %215)
  %217 = load i32*, i32** %10, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @sqlite3_bind_double(i32* %217, i32 18, i32 %222)
  br label %224

224:                                              ; preds = %55, %195, %173, %158, %108
  %225 = load i64, i64* @SQLITE_DONE, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = call i64 @sqlite3_step(i32* %226)
  %228 = icmp eq i64 %225, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load i32*, i32** %10, align 8
  %232 = call i32 @sqlite3_reset(i32* %231)
  %233 = load i32*, i32** %10, align 8
  %234 = call i32 @sqlite3_clear_bindings(i32* %233)
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 131
  br i1 %238, label %244, label %239

239:                                              ; preds = %224
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 130
  br i1 %243, label %244, label %404

244:                                              ; preds = %239, %224
  %245 = load i32*, i32** %12, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @sqlite3_bind_int(i32* %245, i32 1, i32 %246)
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %349

251:                                              ; preds = %244
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 4, %255
  %257 = trunc i64 %256 to i32
  %258 = call i64 @ccmalloc(i32 %257)
  %259 = inttoptr i64 %258 to i32*
  store i32* %259, i32** %15, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = load i32*, i32** %15, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ccv_float_to_half_precision(i32* %262, i32* %263, i32 %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 131
  br i1 %271, label %272, label %278

272:                                              ; preds = %251
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  br label %284

278:                                              ; preds = %251
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  br label %284

284:                                              ; preds = %278, %272
  %285 = phi i32 [ %277, %272 ], [ %283, %278 ]
  %286 = sext i32 %285 to i64
  %287 = mul i64 4, %286
  %288 = trunc i64 %287 to i32
  %289 = call i64 @ccmalloc(i32 %288)
  %290 = inttoptr i64 %289 to i32*
  store i32* %290, i32** %16, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i32*, i32** %16, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 131
  br i1 %298, label %299, label %305

299:                                              ; preds = %284
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  br label %311

305:                                              ; preds = %284
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  br label %311

311:                                              ; preds = %305, %299
  %312 = phi i32 [ %304, %299 ], [ %310, %305 ]
  %313 = call i32 @ccv_float_to_half_precision(i32* %293, i32* %294, i32 %312)
  %314 = load i32*, i32** %12, align 8
  %315 = load i32*, i32** %15, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = mul i64 4, %319
  %321 = trunc i64 %320 to i32
  %322 = load i32, i32* @ccfree, align 4
  %323 = call i32 @sqlite3_bind_blob(i32* %314, i32 2, i32* %315, i32 %321, i32 %322)
  %324 = load i32*, i32** %12, align 8
  %325 = load i32*, i32** %16, align 8
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 131
  br i1 %329, label %330, label %336

330:                                              ; preds = %311
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  br label %342

336:                                              ; preds = %311
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  br label %342

342:                                              ; preds = %336, %330
  %343 = phi i32 [ %335, %330 ], [ %341, %336 ]
  %344 = sext i32 %343 to i64
  %345 = mul i64 4, %344
  %346 = trunc i64 %345 to i32
  %347 = load i32, i32* @ccfree, align 4
  %348 = call i32 @sqlite3_bind_blob(i32* %324, i32 3, i32* %325, i32 %346, i32 %347)
  br label %389

349:                                              ; preds = %244
  %350 = load i32*, i32** %12, align 8
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 4
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = mul i64 4, %357
  %359 = trunc i64 %358 to i32
  %360 = load i32, i32* @SQLITE_STATIC, align 4
  %361 = call i32 @sqlite3_bind_blob(i32* %350, i32 2, i32* %353, i32 %359, i32 %360)
  %362 = load i32*, i32** %12, align 8
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 3
  %365 = load i32*, i32** %364, align 8
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp eq i32 %368, 131
  br i1 %369, label %370, label %376

370:                                              ; preds = %349
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  br label %382

376:                                              ; preds = %349
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  br label %382

382:                                              ; preds = %376, %370
  %383 = phi i32 [ %375, %370 ], [ %381, %376 ]
  %384 = sext i32 %383 to i64
  %385 = mul i64 4, %384
  %386 = trunc i64 %385 to i32
  %387 = load i32, i32* @SQLITE_STATIC, align 4
  %388 = call i32 @sqlite3_bind_blob(i32* %362, i32 3, i32* %365, i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %382, %342
  %390 = load i32*, i32** %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @sqlite3_bind_int(i32* %390, i32 4, i32 %392)
  %394 = load i64, i64* @SQLITE_DONE, align 8
  %395 = load i32*, i32** %12, align 8
  %396 = call i64 @sqlite3_step(i32* %395)
  %397 = icmp eq i64 %394, %396
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert(i32 %398)
  %400 = load i32*, i32** %12, align 8
  %401 = call i32 @sqlite3_reset(i32* %400)
  %402 = load i32*, i32** %12, align 8
  %403 = call i32 @sqlite3_clear_bindings(i32* %402)
  br label %404

404:                                              ; preds = %389, %239
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %13, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %13, align 4
  br label %49

408:                                              ; preds = %49
  %409 = bitcast [137 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %409, i8* align 16 getelementptr inbounds ([137 x i8], [137 x i8]* @__const.ccv_convnet_write.convnet_params_insert_qs, i32 0, i32 0), i64 137, i1 false)
  store i32* null, i32** %18, align 8
  %410 = load i64, i64* @SQLITE_OK, align 8
  %411 = load i32*, i32** %7, align 8
  %412 = getelementptr inbounds [137 x i8], [137 x i8]* %17, i64 0, i64 0
  %413 = call i64 @sqlite3_prepare_v2(i32* %411, i8* %412, i32 137, i32** %18, i32 0)
  %414 = icmp eq i64 %410, %413
  %415 = zext i1 %414 to i32
  %416 = call i32 @assert(i32 %415)
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_23__*, %struct.TYPE_23__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp eq i32 %421, %425
  %427 = zext i1 %426 to i32
  %428 = call i32 @assert(i32 %427)
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 3
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %433, %437
  %439 = zext i1 %438 to i32
  %440 = call i32 @assert(i32 %439)
  %441 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @CCV_GET_CHANNEL(i32 %445)
  %447 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %446, %449
  %451 = zext i1 %450 to i32
  %452 = call i32 @assert(i32 %451)
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 3
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = call i64 @CCV_GET_DATA_TYPE(i32 %457)
  %459 = load i64, i64* @CCV_32F, align 8
  %460 = icmp eq i64 %458, %459
  %461 = zext i1 %460 to i32
  %462 = call i32 @assert(i32 %461)
  %463 = load i32*, i32** %18, align 8
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 3
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = sext i32 %473 to i64
  %475 = mul i64 4, %474
  %476 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  %481 = mul i64 %475, %480
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  %486 = mul i64 %481, %485
  %487 = trunc i64 %486 to i32
  %488 = load i32, i32* @SQLITE_STATIC, align 4
  %489 = call i32 @sqlite3_bind_blob(i32* %463, i32 1, i32* %469, i32 %487, i32 %488)
  %490 = load i32*, i32** %18, align 8
  %491 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @sqlite3_bind_int(i32* %490, i32 2, i32 %494)
  %496 = load i32*, i32** %18, align 8
  %497 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @sqlite3_bind_int(i32* %496, i32 3, i32 %500)
  %502 = load i64, i64* @SQLITE_DONE, align 8
  %503 = load i32*, i32** %18, align 8
  %504 = call i64 @sqlite3_step(i32* %503)
  %505 = icmp eq i64 %502, %504
  %506 = zext i1 %505 to i32
  %507 = call i32 @assert(i32 %506)
  %508 = load i32*, i32** %18, align 8
  %509 = call i32 @sqlite3_reset(i32* %508)
  %510 = load i32*, i32** %18, align 8
  %511 = call i32 @sqlite3_clear_bindings(i32* %510)
  %512 = load i32*, i32** %10, align 8
  %513 = call i32 @sqlite3_finalize(i32* %512)
  %514 = load i32*, i32** %12, align 8
  %515 = call i32 @sqlite3_finalize(i32* %514)
  %516 = load i32*, i32** %18, align 8
  %517 = call i32 @sqlite3_finalize(i32* %516)
  %518 = load i32*, i32** %7, align 8
  %519 = call i32 @sqlite3_close(i32* %518)
  br label %520

520:                                              ; preds = %408, %3
  ret void
}

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_double(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_float_to_half_precision(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
