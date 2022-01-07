; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend.c_network_backends_save.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend.c_network_backends_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i64, i8* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@G_KEY_FILE_KEEP_COMMENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: g_key_file_load_from_file: %s\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@BACKEND_TYPE_RW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@BACKEND_TYPE_RO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"mysql-proxy\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"proxy-backend-addresses\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"proxy-read-only-backend-addresses\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"client-ips\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pwds\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%s: g_file_set_contents: %s\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: saving config file succeed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_backends_save(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %18 = call i32* (...) @g_key_file_new()
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @g_key_file_set_list_separator(i32* %19, i8 signext 44)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @G_KEY_FILE_KEEP_COMMENTS, align 4
  %27 = call i64 @g_key_file_load_from_file(i32* %22, i32 %25, i32 %26, %struct.TYPE_24__** %5)
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @G_STRLOC, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @g_critical(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = call i32 @g_error_free(%struct.TYPE_24__* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @g_key_file_free(i32* %37)
  store i32 -1, i32* %2, align 4
  br label %251

39:                                               ; preds = %1
  %40 = call %struct.TYPE_22__* @g_string_new(i32* null)
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %6, align 8
  %41 = call %struct.TYPE_22__* @g_string_new(i32* null)
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %7, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %9, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @g_mutex_lock(i32 %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %94, %39
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %52
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i8* @g_ptr_array_index(%struct.TYPE_23__* %57, i64 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %11, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BACKEND_TYPE_RW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @g_string_append_printf(%struct.TYPE_22__* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %74)
  br label %93

76:                                               ; preds = %56
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BACKEND_TYPE_RO, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @g_string_append_printf(%struct.TYPE_22__* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %90)
  br label %92

92:                                               ; preds = %82, %76
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %52

97:                                               ; preds = %52
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @g_mutex_unlock(i32 %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call i32 @g_key_file_set_value(i32* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %116

113:                                              ; preds = %97
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @g_key_file_set_value(i32* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i32 @g_key_file_set_value(i32* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  br label %131

128:                                              ; preds = %116
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @g_key_file_set_value(i32* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %133 = load i32, i32* @TRUE, align 4
  %134 = call i32 @g_string_free(%struct.TYPE_22__* %132, i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @g_string_free(%struct.TYPE_22__* %135, i32 %136)
  %138 = call %struct.TYPE_22__* @g_string_new(i32* null)
  store %struct.TYPE_22__* %138, %struct.TYPE_22__** %12, align 8
  store i64 0, i64* %8, align 8
  br label %139

139:                                              ; preds = %157, %131
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %140, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %139
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i8* @g_ptr_array_index(%struct.TYPE_23__* %150, i64 %151)
  %153 = bitcast i8* %152 to i32*
  store i32* %153, i32** %13, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @g_string_append_printf(%struct.TYPE_22__* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %155)
  br label %157

157:                                              ; preds = %147
  %158 = load i64, i64* %8, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %8, align 8
  br label %139

160:                                              ; preds = %139
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32*, i32** %4, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = call i32 @g_key_file_set_value(i32* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  br label %175

172:                                              ; preds = %160
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @g_key_file_set_value(i32* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %165
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %177 = load i32, i32* @TRUE, align 4
  %178 = call i32 @g_string_free(%struct.TYPE_22__* %176, i32 %177)
  %179 = call %struct.TYPE_22__* @g_string_new(i32* null)
  store %struct.TYPE_22__* %179, %struct.TYPE_22__** %14, align 8
  store i64 0, i64* %8, align 8
  br label %180

180:                                              ; preds = %200, %175
  %181 = load i64, i64* %8, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp slt i64 %181, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %180
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %190 = call i32 @g_string_append_c(%struct.TYPE_22__* %189, i8 signext 44)
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = call i8* @g_ptr_array_index(%struct.TYPE_23__* %193, i64 %194)
  %196 = bitcast i8* %195 to i32*
  store i32* %196, i32** %15, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @g_string_append(%struct.TYPE_22__* %197, i32* %198)
  br label %200

200:                                              ; preds = %188
  %201 = load i64, i64* %8, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %8, align 8
  br label %180

203:                                              ; preds = %180
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load i32*, i32** %4, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = call i32 @g_key_file_set_value(i32* %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %213)
  br label %218

215:                                              ; preds = %203
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @g_key_file_set_value(i32* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %208
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %220 = load i32, i32* @TRUE, align 4
  %221 = call i32 @g_string_free(%struct.TYPE_22__* %219, i32 %220)
  store i32 0, i32* %16, align 4
  %222 = load i32*, i32** %4, align 8
  %223 = call i32* @g_key_file_to_data(i32* %222, i32* %16, i32* null)
  store i32* %223, i32** %17, align 8
  %224 = load i64, i64* @FALSE, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %17, align 8
  %229 = load i32, i32* %16, align 4
  %230 = call i64 @g_file_set_contents(i32 %227, i32* %228, i32 %229, %struct.TYPE_24__** %5)
  %231 = icmp eq i64 %224, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %218
  %233 = load i32, i32* @G_STRLOC, align 4
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @g_critical(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %233, i32 %236)
  %238 = load i32*, i32** %17, align 8
  %239 = call i32 @g_free(i32* %238)
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %241 = call i32 @g_error_free(%struct.TYPE_24__* %240)
  %242 = load i32*, i32** %4, align 8
  %243 = call i32 @g_key_file_free(i32* %242)
  store i32 -1, i32* %2, align 4
  br label %251

244:                                              ; preds = %218
  %245 = load i32, i32* @G_STRLOC, align 4
  %246 = call i32 @g_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %245)
  %247 = load i32*, i32** %17, align 8
  %248 = call i32 @g_free(i32* %247)
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @g_key_file_free(i32* %249)
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %244, %232, %29
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32* @g_key_file_new(...) #1

declare dso_local i32 @g_key_file_set_list_separator(i32*, i8 signext) #1

declare dso_local i64 @g_key_file_load_from_file(i32*, i32, i32, %struct.TYPE_24__**) #1

declare dso_local i32 @g_critical(i8*, i32, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_24__*) #1

declare dso_local i32 @g_key_file_free(i32*) #1

declare dso_local %struct.TYPE_22__* @g_string_new(i32*) #1

declare dso_local i32 @g_mutex_lock(i32) #1

declare dso_local i8* @g_ptr_array_index(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_22__*, i8*, i32*) #1

declare dso_local i32 @g_mutex_unlock(i32) #1

declare dso_local i32 @g_key_file_set_value(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @g_string_append_c(%struct.TYPE_22__*, i8 signext) #1

declare dso_local i32 @g_string_append(%struct.TYPE_22__*, i32*) #1

declare dso_local i32* @g_key_file_to_data(i32*, i32*, i32*) #1

declare dso_local i64 @g_file_set_contents(i32, i32*, i32, %struct.TYPE_24__**) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_message(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
