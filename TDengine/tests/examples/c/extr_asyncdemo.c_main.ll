; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/c/extr_asyncdemo.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/c/extr_asyncdemo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [53 x i8] c"usage: %s server-ip dbname rowsPerTable numOfTables\0A\00", align 1
@points = common dso_local global i8* null, align 8
@numOfTables = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"success to connect to server\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"drop database %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"create database %s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"asytbl_\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"create table %s%d (ts timestamp, volume bigint)\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"success to create tables, press any key to insert\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"start to insert...\0A\00", align 1
@st = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"insert into %s values(%ld, 0)\00", align 1
@taos_insert_call_back = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"once insert finished, presse any key to query\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"start to query...\0A\00", align 1
@tablesProcessed = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"select * from %s\00", align 1
@taos_select_call_back = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"\0Aonce finished, press any key to exit\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s inserted:%d retrieved:%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"==== async demo end====\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [20 x i8], align 16
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = bitcast [1024 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 1024, i1 false)
  %15 = bitcast [20 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 20, i1 false)
  %16 = bitcast [128 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 128, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @exit(i32 0) #4
  unreachable

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcpy(i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @atoi(i8* %40)
  store i8* %41, i8** @points, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %43, 5
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @atoi(i8* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* @numOfTables, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* @numOfTables, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 40, %53
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i64 @malloc(i64 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %12, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @memset(%struct.TYPE_4__* %58, i32 0, i64 %59)
  %61 = call i32 (...) @taos_init()
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32* @taos_connect(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store i32* %65, i32** %6, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @taos_error(i32* %69)
  br label %71

71:                                               ; preds = %68, %51
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %75 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %78 = call i64 @taos_query(i32* %76, i8* %77)
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %81 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %84 = call i64 @taos_query(i32* %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @taos_error(i32* %87)
  br label %89

89:                                               ; preds = %86, %71
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %92 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %95 = call i64 @taos_query(i32* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @taos_error(i32* %98)
  br label %100

100:                                              ; preds = %97, %89
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %102 = call i32 @strcpy(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %141, %100
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @numOfTables, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  store i32* %114, i32** %119, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %126, i32 %127)
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %130, i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %135 = call i64 @taos_query(i32* %133, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %107
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @taos_error(i32* %138)
  br label %140

140:                                              ; preds = %137, %107
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %103

144:                                              ; preds = %103
  %145 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %163, %144
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @numOfTables, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 1000
  %154 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sdiv i32 %155, 1000
  %157 = add nsw i32 %153, %156
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i32 %157, i32* %162, align 8
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %146

166:                                              ; preds = %146
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %168 = call i32 (...) @getchar()
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %170 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %172, 1000000
  %174 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %173, %175
  store i32 %176, i32* @st, align 4
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %202, %166
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @numOfTables, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %177
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 1546300800000, %190
  %192 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %188, i64 %191)
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %195 = load i32, i32* @taos_insert_call_back, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = bitcast %struct.TYPE_4__* %199 to i8*
  %201 = call i32 @taos_query_a(i32* %193, i8* %194, i32 %195, i8* %200)
  br label %202

202:                                              ; preds = %181
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %177

205:                                              ; preds = %177
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %207 = call i32 (...) @getchar()
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %209 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %210 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %211, 1000000
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %212, %214
  store i32 %215, i32* @st, align 4
  store i64 0, i64* @tablesProcessed, align 8
  store i32 0, i32* %8, align 4
  br label %216

216:                                              ; preds = %238, %205
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @numOfTables, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %241

220:                                              ; preds = %216
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %227)
  %229 = load i32*, i32** %6, align 8
  %230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %231 = load i32, i32* @taos_select_call_back, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 %234
  %236 = bitcast %struct.TYPE_4__* %235 to i8*
  %237 = call i32 @taos_query_a(i32* %229, i8* %230, i32 %231, i8* %236)
  br label %238

238:                                              ; preds = %220
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %216

241:                                              ; preds = %216
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %243 = call i32 (...) @getchar()
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %268, %241
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @numOfTables, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %271

248:                                              ; preds = %244
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %254, i32 %260, i32 %266)
  br label %268

268:                                              ; preds = %248
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %244

271:                                              ; preds = %244
  %272 = call i32 (...) @getchar()
  %273 = load i32*, i32** %6, align 8
  %274 = call i32 @taos_close(i32* %273)
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %276 = call i32 @free(%struct.TYPE_4__* %275)
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i64) #2

declare dso_local i32 @taos_init(...) #2

declare dso_local i32* @taos_connect(i8*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @taos_error(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i64 @taos_query(i32*, i8*) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @getchar(...) #2

declare dso_local i32 @taos_query_a(i32*, i8*, i32, i8*) #2

declare dso_local i32 @taos_close(i32*) #2

declare dso_local i32 @free(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
