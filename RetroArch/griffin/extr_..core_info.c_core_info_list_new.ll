; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_list_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_list_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.string_list = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"display_name\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"display_version\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"corename\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"systemname\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"systemid\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"firmware_count\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"supported_extensions\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"authors\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"permissions\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"notes\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"required_hw_api\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"supports_no_game\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"database_match_archive_member\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i8*, i8*, i32)* @core_info_list_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @core_info_list_new(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %13, align 8
  %22 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %22, %struct.string_list** %14, align 8
  %23 = load %struct.string_list*, %struct.string_list** %14, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dir_list_append(%struct.string_list* %23, i8* %24, i8* %25, i32 0, i32 %26, i32 0, i32 0)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load %struct.string_list*, %struct.string_list** %14, align 8
  %32 = call i32 @string_list_free(%struct.string_list* %31)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %491

33:                                               ; preds = %4
  %34 = load %struct.string_list*, %struct.string_list** %14, align 8
  %35 = icmp ne %struct.string_list* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %491

37:                                               ; preds = %33
  %38 = call i64 @calloc(i32 1, i32 16)
  %39 = inttoptr i64 %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %12, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.string_list*, %struct.string_list** %14, align 8
  %44 = call i32 @string_list_free(%struct.string_list* %43)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %491

45:                                               ; preds = %37
  %46 = load %struct.string_list*, %struct.string_list** %14, align 8
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 @calloc(i32 %49, i32 208)
  %51 = inttoptr i64 %50 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %11, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = call i32 @core_info_list_free(%struct.TYPE_10__* %55)
  %57 = load %struct.string_list*, %struct.string_list** %14, align 8
  %58 = call i32 @string_list_free(%struct.string_list* %57)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %491

59:                                               ; preds = %45
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %62, align 8
  %63 = load %struct.string_list*, %struct.string_list** %14, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %476, %59
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.string_list*, %struct.string_list** %14, align 8
  %72 = getelementptr inbounds %struct.string_list, %struct.string_list* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %479

75:                                               ; preds = %69
  %76 = load %struct.string_list*, %struct.string_list** %14, align 8
  %77 = getelementptr inbounds %struct.string_list, %struct.string_list* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = call i32* @core_info_list_iterate(i8* %83, i8* %84)
  store i32* %85, i32** %17, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %445

88:                                               ; preds = %75
  store i8* null, i8** %18, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i64 @config_get_string(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %18)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i8*, i8** %18, align 8
  %94 = call i32 @string_is_empty(i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %18, align 8
  %98 = call i8* @strdup(i8* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  store i8* %98, i8** %102, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = call i32 @free(i8* %103)
  store i8* null, i8** %18, align 8
  br label %105

105:                                              ; preds = %96, %92, %88
  %106 = load i32*, i32** %17, align 8
  %107 = call i64 @config_get_string(i32* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %18)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 @string_is_empty(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %18, align 8
  %115 = call i8* @strdup(i8* %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 26
  store i8* %115, i8** %119, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @free(i8* %120)
  store i8* null, i8** %18, align 8
  br label %122

122:                                              ; preds = %113, %109, %105
  %123 = load i32*, i32** %17, align 8
  %124 = call i64 @config_get_string(i32* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %18)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i8*, i8** %18, align 8
  %128 = call i32 @string_is_empty(i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %18, align 8
  %132 = call i8* @strdup(i8* %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 25
  store i8* %132, i8** %136, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = call i32 @free(i8* %137)
  store i8* null, i8** %18, align 8
  br label %139

139:                                              ; preds = %130, %126, %122
  %140 = load i32*, i32** %17, align 8
  %141 = call i64 @config_get_string(i32* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %18)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i8*, i8** %18, align 8
  %145 = call i32 @string_is_empty(i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %18, align 8
  %149 = call i8* @strdup(i8* %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 24
  store i8* %149, i8** %153, align 8
  %154 = load i8*, i8** %18, align 8
  %155 = call i32 @free(i8* %154)
  store i8* null, i8** %18, align 8
  br label %156

156:                                              ; preds = %147, %143, %139
  %157 = load i32*, i32** %17, align 8
  %158 = call i64 @config_get_string(i32* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %18)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = load i8*, i8** %18, align 8
  %162 = call i32 @string_is_empty(i8* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %18, align 8
  %166 = call i8* @strdup(i8* %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 23
  store i8* %166, i8** %170, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = call i32 @free(i8* %171)
  store i8* null, i8** %18, align 8
  br label %173

173:                                              ; preds = %164, %160, %156
  %174 = load i32*, i32** %17, align 8
  %175 = call i64 @config_get_string(i32* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %18)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i8*, i8** %18, align 8
  %179 = call i32 @string_is_empty(i8* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %18, align 8
  %183 = call i8* @strdup(i8* %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 22
  store i8* %183, i8** %187, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = call i32 @free(i8* %188)
  store i8* null, i8** %18, align 8
  br label %190

190:                                              ; preds = %181, %177, %173
  store i32 0, i32* %19, align 4
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @config_get_uint(i32* %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %19)
  %193 = load i32, i32* %19, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i32 %193, i32* %197, align 8
  %198 = load i32*, i32** %17, align 8
  %199 = call i64 @config_get_string(i32* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %18)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %190
  %202 = load i8*, i8** %18, align 8
  %203 = call i32 @string_is_empty(i8* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %224, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %18, align 8
  %207 = call i8* @strdup(i8* %206)
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %209 = load i64, i64* %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 20
  store i8* %207, i8** %211, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 20
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @string_split(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %219 = load i64, i64* %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 21
  store i8* %217, i8** %221, align 8
  %222 = load i8*, i8** %18, align 8
  %223 = call i32 @free(i8* %222)
  store i8* null, i8** %18, align 8
  br label %224

224:                                              ; preds = %205, %201, %190
  %225 = load i32*, i32** %17, align 8
  %226 = call i64 @config_get_string(i32* %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %18)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %224
  %229 = load i8*, i8** %18, align 8
  %230 = call i32 @string_is_empty(i8* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %251, label %232

232:                                              ; preds = %228
  %233 = load i8*, i8** %18, align 8
  %234 = call i8* @strdup(i8* %233)
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 18
  store i8* %234, i8** %238, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 18
  %243 = load i8*, i8** %242, align 8
  %244 = call i8* @string_split(i8* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %246 = load i64, i64* %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 19
  store i8* %244, i8** %248, align 8
  %249 = load i8*, i8** %18, align 8
  %250 = call i32 @free(i8* %249)
  store i8* null, i8** %18, align 8
  br label %251

251:                                              ; preds = %232, %228, %224
  %252 = load i32*, i32** %17, align 8
  %253 = call i64 @config_get_string(i32* %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %18)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %278

255:                                              ; preds = %251
  %256 = load i8*, i8** %18, align 8
  %257 = call i32 @string_is_empty(i8* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %278, label %259

259:                                              ; preds = %255
  %260 = load i8*, i8** %18, align 8
  %261 = call i8* @strdup(i8* %260)
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %263 = load i64, i64* %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 16
  store i8* %261, i8** %265, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %267 = load i64, i64* %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 16
  %270 = load i8*, i8** %269, align 8
  %271 = call i8* @string_split(i8* %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %273 = load i64, i64* %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 17
  store i8* %271, i8** %275, align 8
  %276 = load i8*, i8** %18, align 8
  %277 = call i32 @free(i8* %276)
  store i8* null, i8** %18, align 8
  br label %278

278:                                              ; preds = %259, %255, %251
  %279 = load i32*, i32** %17, align 8
  %280 = call i64 @config_get_string(i32* %279, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %18)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %278
  %283 = load i8*, i8** %18, align 8
  %284 = call i32 @string_is_empty(i8* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %305, label %286

286:                                              ; preds = %282
  %287 = load i8*, i8** %18, align 8
  %288 = call i8* @strdup(i8* %287)
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %290 = load i64, i64* %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 14
  store i8* %288, i8** %292, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %294 = load i64, i64* %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 14
  %297 = load i8*, i8** %296, align 8
  %298 = call i8* @string_split(i8* %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %300 = load i64, i64* %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 15
  store i8* %298, i8** %302, align 8
  %303 = load i8*, i8** %18, align 8
  %304 = call i32 @free(i8* %303)
  store i8* null, i8** %18, align 8
  br label %305

305:                                              ; preds = %286, %282, %278
  %306 = load i32*, i32** %17, align 8
  %307 = call i64 @config_get_string(i32* %306, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %18)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %332

309:                                              ; preds = %305
  %310 = load i8*, i8** %18, align 8
  %311 = call i32 @string_is_empty(i8* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %332, label %313

313:                                              ; preds = %309
  %314 = load i8*, i8** %18, align 8
  %315 = call i8* @strdup(i8* %314)
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %317 = load i64, i64* %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 12
  store i8* %315, i8** %319, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %321 = load i64, i64* %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 12
  %324 = load i8*, i8** %323, align 8
  %325 = call i8* @string_split(i8* %324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %327 = load i64, i64* %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 13
  store i8* %325, i8** %329, align 8
  %330 = load i8*, i8** %18, align 8
  %331 = call i32 @free(i8* %330)
  store i8* null, i8** %18, align 8
  br label %332

332:                                              ; preds = %313, %309, %305
  %333 = load i32*, i32** %17, align 8
  %334 = call i64 @config_get_string(i32* %333, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8** %18)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %359

336:                                              ; preds = %332
  %337 = load i8*, i8** %18, align 8
  %338 = call i32 @string_is_empty(i8* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %359, label %340

340:                                              ; preds = %336
  %341 = load i8*, i8** %18, align 8
  %342 = call i8* @strdup(i8* %341)
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %344 = load i64, i64* %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 10
  store i8* %342, i8** %346, align 8
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %348 = load i64, i64* %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 10
  %351 = load i8*, i8** %350, align 8
  %352 = call i8* @string_split(i8* %351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %354 = load i64, i64* %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 11
  store i8* %352, i8** %356, align 8
  %357 = load i8*, i8** %18, align 8
  %358 = call i32 @free(i8* %357)
  store i8* null, i8** %18, align 8
  br label %359

359:                                              ; preds = %340, %336, %332
  %360 = load i32*, i32** %17, align 8
  %361 = call i64 @config_get_string(i32* %360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %18)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %386

363:                                              ; preds = %359
  %364 = load i8*, i8** %18, align 8
  %365 = call i32 @string_is_empty(i8* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %386, label %367

367:                                              ; preds = %363
  %368 = load i8*, i8** %18, align 8
  %369 = call i8* @strdup(i8* %368)
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %371 = load i64, i64* %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 8
  store i8* %369, i8** %373, align 8
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %375 = load i64, i64* %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 8
  %378 = load i8*, i8** %377, align 8
  %379 = call i8* @string_split(i8* %378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %381 = load i64, i64* %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 9
  store i8* %379, i8** %383, align 8
  %384 = load i8*, i8** %18, align 8
  %385 = call i32 @free(i8* %384)
  store i8* null, i8** %18, align 8
  br label %386

386:                                              ; preds = %367, %363, %359
  %387 = load i32*, i32** %17, align 8
  %388 = call i64 @config_get_string(i32* %387, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %18)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %413

390:                                              ; preds = %386
  %391 = load i8*, i8** %18, align 8
  %392 = call i32 @string_is_empty(i8* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %413, label %394

394:                                              ; preds = %390
  %395 = load i8*, i8** %18, align 8
  %396 = call i8* @strdup(i8* %395)
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %398 = load i64, i64* %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 6
  store i8* %396, i8** %400, align 8
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %402 = load i64, i64* %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 6
  %405 = load i8*, i8** %404, align 8
  %406 = call i8* @string_split(i8* %405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %408 = load i64, i64* %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 7
  store i8* %406, i8** %410, align 8
  %411 = load i8*, i8** %18, align 8
  %412 = call i32 @free(i8* %411)
  store i8* null, i8** %18, align 8
  br label %413

413:                                              ; preds = %394, %390, %386
  %414 = load i8*, i8** %18, align 8
  %415 = icmp ne i8* %414, null
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = load i8*, i8** %18, align 8
  %418 = call i32 @free(i8* %417)
  br label %419

419:                                              ; preds = %416, %413
  store i8* null, i8** %18, align 8
  store i32 0, i32* %20, align 4
  %420 = load i32*, i32** %17, align 8
  %421 = call i64 @config_get_bool(i32* %420, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32* %20)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %419
  %424 = load i32, i32* %20, align 4
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %426 = load i64, i64* %10, align 8
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 1
  store i32 %424, i32* %428, align 4
  br label %429

429:                                              ; preds = %423, %419
  %430 = load i32*, i32** %17, align 8
  %431 = call i64 @config_get_bool(i32* %430, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32* %20)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %429
  %434 = load i32, i32* %20, align 4
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %436 = load i64, i64* %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 2
  store i32 %434, i32* %438, align 8
  br label %439

439:                                              ; preds = %433, %429
  %440 = load i32*, i32** %17, align 8
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %442 = load i64, i64* %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 5
  store i32* %440, i32** %444, align 8
  br label %445

445:                                              ; preds = %439, %75
  %446 = load i8*, i8** %16, align 8
  %447 = call i32 @string_is_empty(i8* %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %456, label %449

449:                                              ; preds = %445
  %450 = load i8*, i8** %16, align 8
  %451 = call i8* @strdup(i8* %450)
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %453 = load i64, i64* %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 3
  store i8* %451, i8** %455, align 8
  br label %456

456:                                              ; preds = %449, %445
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %458 = load i64, i64* %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 4
  %461 = load i8*, i8** %460, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %475, label %463

463:                                              ; preds = %456
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %465 = load i64, i64* %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 3
  %468 = load i8*, i8** %467, align 8
  %469 = call i8* @path_basename(i8* %468)
  %470 = call i8* @strdup(i8* %469)
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %472 = load i64, i64* %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 4
  store i8* %470, i8** %474, align 8
  br label %475

475:                                              ; preds = %463, %456
  br label %476

476:                                              ; preds = %475
  %477 = load i64, i64* %10, align 8
  %478 = add i64 %477, 1
  store i64 %478, i64* %10, align 8
  br label %69

479:                                              ; preds = %69
  %480 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %481 = icmp ne %struct.TYPE_10__* %480, null
  br i1 %481, label %482, label %487

482:                                              ; preds = %479
  %483 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %484 = call i32 @core_info_list_resolve_all_extensions(%struct.TYPE_10__* %483)
  %485 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %486 = call i32 @core_info_list_resolve_all_firmware(%struct.TYPE_10__* %485)
  br label %487

487:                                              ; preds = %482, %479
  %488 = load %struct.string_list*, %struct.string_list** %14, align 8
  %489 = call i32 @string_list_free(%struct.string_list* %488)
  %490 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %490, %struct.TYPE_10__** %5, align 8
  br label %491

491:                                              ; preds = %487, %54, %42, %36, %30
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %492
}

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @dir_list_append(%struct.string_list*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @core_info_list_free(%struct.TYPE_10__*) #1

declare dso_local i32* @core_info_list_iterate(i8*, i8*) #1

declare dso_local i64 @config_get_string(i32*, i8*, i8**) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @config_get_uint(i32*, i8*, i32*) #1

declare dso_local i8* @string_split(i8*, i8*) #1

declare dso_local i64 @config_get_bool(i32*, i8*, i32*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @core_info_list_resolve_all_extensions(%struct.TYPE_10__*) #1

declare dso_local i32 @core_info_list_resolve_all_firmware(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
