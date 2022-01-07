; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_table.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invocation = type { i32, %struct.argument*, i32 }
%struct.argument = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.buffer = type { i64, i64* }

@QUERY_MAX_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@RDT_STRING = common dso_local global i32 0, align 4
@AT_VALUE = common dso_local global i32 0, align 4
@query_func_all_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64* } (i64, i64*, %struct.invocation*, i8**)* @query_parse_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64* } @query_parse_table(i64 %0, i64* %1, %struct.invocation* %2, i8** %3) #0 {
  %5 = alloca %struct.buffer, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.invocation*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer, align 8
  %16 = alloca %struct.buffer, align 8
  %17 = alloca %struct.buffer, align 8
  %18 = alloca %struct.buffer, align 8
  %19 = alloca %struct.buffer, align 8
  %20 = alloca %struct.buffer, align 8
  %21 = alloca %struct.buffer, align 8
  %22 = alloca %struct.buffer, align 8
  %23 = alloca %struct.buffer, align 8
  %24 = alloca %struct.buffer, align 8
  %25 = alloca %struct.buffer, align 8
  %26 = alloca %struct.buffer, align 8
  %27 = alloca %struct.buffer, align 8
  %28 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %29 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %28, i32 0, i32 0
  store i64 %0, i64* %29, align 8
  %30 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %28, i32 0, i32 1
  store i64* %1, i64** %30, align 8
  store %struct.invocation* %2, %struct.invocation** %7, align 8
  store i8** %3, i8*** %8, align 8
  %31 = load i32, i32* @QUERY_MAX_ARGS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %11, align 8
  %34 = alloca %struct.argument, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %35 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %36 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %35, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = call { i64, i64* } @query_chomp(i64 %37, i64* %39)
  %41 = bitcast %struct.buffer* %15 to { i64, i64* }*
  %42 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %41, i32 0, i32 0
  %43 = extractvalue { i64, i64* } %40, 0
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %41, i32 0, i32 1
  %45 = extractvalue { i64, i64* } %40, 1
  store i64* %45, i64** %44, align 8
  %46 = bitcast %struct.buffer* %6 to i8*
  %47 = bitcast %struct.buffer* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load i8**, i8*** %8, align 8
  %49 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %50 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %49, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = call { i64, i64* } @query_expect_char(i64 %51, i64* %53, i8 signext 123, i8** %48)
  %55 = bitcast %struct.buffer* %16 to { i64, i64* }*
  %56 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %55, i32 0, i32 0
  %57 = extractvalue { i64, i64* } %54, 0
  store i64 %57, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %55, i32 0, i32 1
  %59 = extractvalue { i64, i64* } %54, 1
  store i64* %59, i64** %58, align 8
  %60 = bitcast %struct.buffer* %6 to i8*
  %61 = bitcast %struct.buffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load i8**, i8*** %8, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %4
  br label %383

66:                                               ; preds = %4
  %67 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %68 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %67, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = call { i64, i64* } @query_chomp(i64 %69, i64* %71)
  %73 = bitcast %struct.buffer* %17 to { i64, i64* }*
  %74 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %73, i32 0, i32 0
  %75 = extractvalue { i64, i64* } %72, 0
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %73, i32 0, i32 1
  %77 = extractvalue { i64, i64* } %72, 1
  store i64* %77, i64** %76, align 8
  %78 = bitcast %struct.buffer* %6 to i8*
  %79 = bitcast %struct.buffer* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %80

80:                                               ; preds = %319, %66
  %81 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %82 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %81, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = call i32 @query_peek(i64 %83, i64* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %333

89:                                               ; preds = %80
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @QUERY_MAX_ARGS, align 4
  %92 = icmp uge i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8**, i8*** %8, align 8
  %95 = call i32 @query_raise_too_many_arguments(i8** %94)
  br label %383

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @isalpha(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %178

106:                                              ; preds = %96
  %107 = load i8**, i8*** %8, align 8
  %108 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %109 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %108, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = call { i64, i64* } @query_get_ident(i64 %110, i64* %112, i8** %13, i64* %10, i8** %107)
  %114 = bitcast %struct.buffer* %18 to { i64, i64* }*
  %115 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %114, i32 0, i32 0
  %116 = extractvalue { i64, i64* } %113, 0
  store i64 %116, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %114, i32 0, i32 1
  %118 = extractvalue { i64, i64* } %113, 1
  store i64* %118, i64** %117, align 8
  %119 = bitcast %struct.buffer* %6 to i8*
  %120 = bitcast %struct.buffer* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = load i8**, i8*** %8, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %177, label %124

124:                                              ; preds = %106
  %125 = load i32, i32* @RDT_STRING, align 4
  %126 = load i32, i32* %14, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %127
  %129 = getelementptr inbounds %struct.argument, %struct.argument* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 %125, i32* %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i32, i32* %14, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %134
  %136 = getelementptr inbounds %struct.argument, %struct.argument* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i64 %132, i64* %140, align 8
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  %143 = call i64 @calloc(i64 %142, i32 1)
  %144 = inttoptr i64 %143 to i8*
  %145 = load i32, i32* %14, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %146
  %148 = getelementptr inbounds %struct.argument, %struct.argument* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i8* %144, i8** %152, align 8
  %153 = load i32, i32* %14, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %154
  %156 = getelementptr inbounds %struct.argument, %struct.argument* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %124
  br label %383

164:                                              ; preds = %124
  %165 = load i32, i32* %14, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %166
  %168 = getelementptr inbounds %struct.argument, %struct.argument* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i32 @strncpy(i8* %173, i8* %174, i64 %175)
  br label %177

177:                                              ; preds = %164, %106
  br label %198

178:                                              ; preds = %96
  %179 = load i32, i32* %14, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %180
  %182 = getelementptr inbounds %struct.argument, %struct.argument* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i8**, i8*** %8, align 8
  %185 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %186 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %185, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = call { i64, i64* } @query_parse_string(i64 %187, i64* %189, %struct.TYPE_8__* %183, i8** %184)
  %191 = bitcast %struct.buffer* %19 to { i64, i64* }*
  %192 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %191, i32 0, i32 0
  %193 = extractvalue { i64, i64* } %190, 0
  store i64 %193, i64* %192, align 8
  %194 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %191, i32 0, i32 1
  %195 = extractvalue { i64, i64* } %190, 1
  store i64* %195, i64** %194, align 8
  %196 = bitcast %struct.buffer* %6 to i8*
  %197 = bitcast %struct.buffer* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 16, i1 false)
  br label %198

198:                                              ; preds = %178, %177
  %199 = load i8**, i8*** %8, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %383

203:                                              ; preds = %198
  %204 = load i32, i32* @AT_VALUE, align 4
  %205 = load i32, i32* %14, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %206
  %208 = getelementptr inbounds %struct.argument, %struct.argument* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 16
  %209 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %210 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %209, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = call { i64, i64* } @query_chomp(i64 %211, i64* %213)
  %215 = bitcast %struct.buffer* %20 to { i64, i64* }*
  %216 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %215, i32 0, i32 0
  %217 = extractvalue { i64, i64* } %214, 0
  store i64 %217, i64* %216, align 8
  %218 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %215, i32 0, i32 1
  %219 = extractvalue { i64, i64* } %214, 1
  store i64* %219, i64** %218, align 8
  %220 = bitcast %struct.buffer* %6 to i8*
  %221 = bitcast %struct.buffer* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 %221, i64 16, i1 false)
  %222 = load i32, i32* %14, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %14, align 4
  %224 = load i8**, i8*** %8, align 8
  %225 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %226 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %225, i32 0, i32 1
  %229 = load i64*, i64** %228, align 8
  %230 = call { i64, i64* } @query_expect_char(i64 %227, i64* %229, i8 signext 58, i8** %224)
  %231 = bitcast %struct.buffer* %21 to { i64, i64* }*
  %232 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %231, i32 0, i32 0
  %233 = extractvalue { i64, i64* } %230, 0
  store i64 %233, i64* %232, align 8
  %234 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %231, i32 0, i32 1
  %235 = extractvalue { i64, i64* } %230, 1
  store i64* %235, i64** %234, align 8
  %236 = bitcast %struct.buffer* %6 to i8*
  %237 = bitcast %struct.buffer* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 8 %237, i64 16, i1 false)
  %238 = load i8**, i8*** %8, align 8
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %203
  br label %383

242:                                              ; preds = %203
  %243 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %244 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %243, i32 0, i32 1
  %247 = load i64*, i64** %246, align 8
  %248 = call { i64, i64* } @query_chomp(i64 %245, i64* %247)
  %249 = bitcast %struct.buffer* %22 to { i64, i64* }*
  %250 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %249, i32 0, i32 0
  %251 = extractvalue { i64, i64* } %248, 0
  store i64 %251, i64* %250, align 8
  %252 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %249, i32 0, i32 1
  %253 = extractvalue { i64, i64* } %248, 1
  store i64* %253, i64** %252, align 8
  %254 = bitcast %struct.buffer* %6 to i8*
  %255 = bitcast %struct.buffer* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 16, i1 false)
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* @QUERY_MAX_ARGS, align 4
  %258 = icmp uge i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %242
  %260 = load i8**, i8*** %8, align 8
  %261 = call i32 @query_raise_too_many_arguments(i8** %260)
  br label %383

262:                                              ; preds = %242
  %263 = load i32, i32* %14, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %264
  %266 = load i8**, i8*** %8, align 8
  %267 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %268 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %267, i32 0, i32 1
  %271 = load i64*, i64** %270, align 8
  %272 = call { i64, i64* } @query_parse_argument(i64 %269, i64* %271, %struct.argument* %265, i8** %266)
  %273 = bitcast %struct.buffer* %23 to { i64, i64* }*
  %274 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %273, i32 0, i32 0
  %275 = extractvalue { i64, i64* } %272, 0
  store i64 %275, i64* %274, align 8
  %276 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %273, i32 0, i32 1
  %277 = extractvalue { i64, i64* } %272, 1
  store i64* %277, i64** %276, align 8
  %278 = bitcast %struct.buffer* %6 to i8*
  %279 = bitcast %struct.buffer* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 %279, i64 16, i1 false)
  %280 = load i8**, i8*** %8, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %262
  br label %383

284:                                              ; preds = %262
  %285 = load i32, i32* %14, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %14, align 4
  %287 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %288 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %287, i32 0, i32 1
  %291 = load i64*, i64** %290, align 8
  %292 = call { i64, i64* } @query_chomp(i64 %289, i64* %291)
  %293 = bitcast %struct.buffer* %24 to { i64, i64* }*
  %294 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %293, i32 0, i32 0
  %295 = extractvalue { i64, i64* } %292, 0
  store i64 %295, i64* %294, align 8
  %296 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %293, i32 0, i32 1
  %297 = extractvalue { i64, i64* } %292, 1
  store i64* %297, i64** %296, align 8
  %298 = bitcast %struct.buffer* %6 to i8*
  %299 = bitcast %struct.buffer* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %298, i8* align 8 %299, i64 16, i1 false)
  %300 = load i8**, i8*** %8, align 8
  %301 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %302 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %301, i32 0, i32 1
  %305 = load i64*, i64** %304, align 8
  %306 = call { i64, i64* } @query_expect_char(i64 %303, i64* %305, i8 signext 44, i8** %300)
  %307 = bitcast %struct.buffer* %25 to { i64, i64* }*
  %308 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %307, i32 0, i32 0
  %309 = extractvalue { i64, i64* } %306, 0
  store i64 %309, i64* %308, align 8
  %310 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %307, i32 0, i32 1
  %311 = extractvalue { i64, i64* } %306, 1
  store i64* %311, i64** %310, align 8
  %312 = bitcast %struct.buffer* %6 to i8*
  %313 = bitcast %struct.buffer* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %312, i8* align 8 %313, i64 16, i1 false)
  %314 = load i8**, i8*** %8, align 8
  %315 = load i8*, i8** %314, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %284
  %318 = load i8**, i8*** %8, align 8
  store i8* null, i8** %318, align 8
  br label %333

319:                                              ; preds = %284
  %320 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %321 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %320, i32 0, i32 1
  %324 = load i64*, i64** %323, align 8
  %325 = call { i64, i64* } @query_chomp(i64 %322, i64* %324)
  %326 = bitcast %struct.buffer* %26 to { i64, i64* }*
  %327 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %326, i32 0, i32 0
  %328 = extractvalue { i64, i64* } %325, 0
  store i64 %328, i64* %327, align 8
  %329 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %326, i32 0, i32 1
  %330 = extractvalue { i64, i64* } %325, 1
  store i64* %330, i64** %329, align 8
  %331 = bitcast %struct.buffer* %6 to i8*
  %332 = bitcast %struct.buffer* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %331, i8* align 8 %332, i64 16, i1 false)
  br label %80

333:                                              ; preds = %317, %80
  %334 = load i8**, i8*** %8, align 8
  %335 = bitcast %struct.buffer* %6 to { i64, i64* }*
  %336 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %335, i32 0, i32 1
  %339 = load i64*, i64** %338, align 8
  %340 = call { i64, i64* } @query_expect_char(i64 %337, i64* %339, i8 signext 125, i8** %334)
  %341 = bitcast %struct.buffer* %27 to { i64, i64* }*
  %342 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %341, i32 0, i32 0
  %343 = extractvalue { i64, i64* } %340, 0
  store i64 %343, i64* %342, align 8
  %344 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %341, i32 0, i32 1
  %345 = extractvalue { i64, i64* } %340, 1
  store i64* %345, i64** %344, align 8
  %346 = bitcast %struct.buffer* %6 to i8*
  %347 = bitcast %struct.buffer* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %346, i8* align 8 %347, i64 16, i1 false)
  %348 = load i8**, i8*** %8, align 8
  %349 = load i8*, i8** %348, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %352

351:                                              ; preds = %333
  br label %383

352:                                              ; preds = %333
  %353 = load i32, i32* @query_func_all_map, align 4
  %354 = load %struct.invocation*, %struct.invocation** %7, align 8
  %355 = getelementptr inbounds %struct.invocation, %struct.invocation* %354, i32 0, i32 2
  store i32 %353, i32* %355, align 8
  %356 = load i32, i32* %14, align 4
  %357 = load %struct.invocation*, %struct.invocation** %7, align 8
  %358 = getelementptr inbounds %struct.invocation, %struct.invocation* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 8
  %359 = load i32, i32* %14, align 4
  %360 = zext i32 %359 to i64
  %361 = mul i64 32, %360
  %362 = trunc i64 %361 to i32
  %363 = call i64 @malloc(i32 %362)
  %364 = inttoptr i64 %363 to %struct.argument*
  %365 = load %struct.invocation*, %struct.invocation** %7, align 8
  %366 = getelementptr inbounds %struct.invocation, %struct.invocation* %365, i32 0, i32 1
  store %struct.argument* %364, %struct.argument** %366, align 8
  %367 = load %struct.invocation*, %struct.invocation** %7, align 8
  %368 = getelementptr inbounds %struct.invocation, %struct.invocation* %367, i32 0, i32 1
  %369 = load %struct.argument*, %struct.argument** %368, align 8
  %370 = icmp ne %struct.argument* %369, null
  br i1 %370, label %374, label %371

371:                                              ; preds = %352
  %372 = load i8**, i8*** %8, align 8
  %373 = call i32 @query_raise_enomem(i8** %372)
  br label %383

374:                                              ; preds = %352
  %375 = load %struct.invocation*, %struct.invocation** %7, align 8
  %376 = getelementptr inbounds %struct.invocation, %struct.invocation* %375, i32 0, i32 1
  %377 = load %struct.argument*, %struct.argument** %376, align 8
  %378 = load i32, i32* %14, align 4
  %379 = zext i32 %378 to i64
  %380 = mul i64 32, %379
  %381 = trunc i64 %380 to i32
  %382 = call i32 @memcpy(%struct.argument* %377, %struct.argument* %34, i32 %381)
  br label %397

383:                                              ; preds = %371, %351, %283, %259, %241, %202, %163, %93, %65
  store i32 0, i32* %9, align 4
  br label %384

384:                                              ; preds = %393, %383
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* %14, align 4
  %387 = icmp ult i32 %385, %386
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load i32, i32* %9, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.argument, %struct.argument* %34, i64 %390
  %392 = call i32 @query_argument_free(%struct.argument* %391)
  br label %393

393:                                              ; preds = %388
  %394 = load i32, i32* %9, align 4
  %395 = add i32 %394, 1
  store i32 %395, i32* %9, align 4
  br label %384

396:                                              ; preds = %384
  br label %397

397:                                              ; preds = %396, %374
  %398 = bitcast %struct.buffer* %5 to i8*
  %399 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %398, i8* align 8 %399, i64 16, i1 false)
  %400 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %400)
  %401 = bitcast %struct.buffer* %5 to { i64, i64* }*
  %402 = load { i64, i64* }, { i64, i64* }* %401, align 8
  ret { i64, i64* } %402
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local { i64, i64* } @query_chomp(i64, i64*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local { i64, i64* } @query_expect_char(i64, i64*, i8 signext, i8**) #2

declare dso_local i32 @query_peek(i64, i64*, i8*) #2

declare dso_local i32 @query_raise_too_many_arguments(i8**) #2

declare dso_local i64 @isalpha(i32) #2

declare dso_local { i64, i64* } @query_get_ident(i64, i64*, i8**, i64*, i8**) #2

declare dso_local i64 @calloc(i64, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local { i64, i64* } @query_parse_string(i64, i64*, %struct.TYPE_8__*, i8**) #2

declare dso_local { i64, i64* } @query_parse_argument(i64, i64*, %struct.argument*, i8**) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @query_raise_enomem(i8**) #2

declare dso_local i32 @memcpy(%struct.argument*, %struct.argument*, i32) #2

declare dso_local i32 @query_argument_free(%struct.argument*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
