; ModuleID = '/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_read.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i8*, %struct.TYPE_12__, i64, i32, i32, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Could not read header (expected %zu, but read %zd bytes)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hash_part\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HashHeader\00", align 1
@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@PyExc_OverflowError = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@PyBUF_SIMPLE = common dso_local global i32 0, align 4
@MAGIC = common dso_local global i32 0, align 4
@MAGIC_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Unknown MAGIC in header\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Incorrect file length (expected %zd, got %zd)\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Could not read buckets (expected %zd, got %zd)\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Failed to rebuild table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32)* @hashindex_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @hashindex_read(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* (i32*, i8*, i8*, ...) @PyObject_CallMethod(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 20)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = call i64 (...) @PyErr_Occurred()
  %21 = call i32 @assert(i64 %20)
  br label %265

22:                                               ; preds = %2
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @PyBytes_Size(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = call i64 (...) @PyErr_Occurred()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %262

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 20
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @PyExc_ValueError, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 20, i32 %34)
  br label %262

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* (i32*, i8*, i8*, ...) @PyObject_CallMethod(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @Py_XDECREF(i32* %39)
  %41 = call i64 (...) @PyErr_Occurred()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* @PyExc_AttributeError, align 4
  %45 = call i64 @PyErr_ExceptionMatches(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (...) @PyErr_Clear()
  br label %50

49:                                               ; preds = %43
  br label %262

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @SEEK_END, align 4
  %54 = call i32* (i32*, i8*, i8*, ...) @PyObject_CallMethod(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %53)
  store i32* %54, i32** %10, align 8
  %55 = call i64 (...) @PyErr_Occurred()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %262

58:                                               ; preds = %51
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @PyExc_OverflowError, align 4
  %61 = call i32 @PyNumber_AsSsize_t(i32* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @Py_DECREF(i32* %62)
  %64 = call i64 (...) @PyErr_Occurred()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %262

67:                                               ; preds = %58
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32* (i32*, i8*, i8*, ...) @PyObject_CallMethod(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 20, i32 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @Py_XDECREF(i32* %71)
  %73 = call i64 (...) @PyErr_Occurred()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %262

76:                                               ; preds = %67
  %77 = call %struct.TYPE_13__* @malloc(i32 72)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %14, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i32 (...) @PyErr_NoMemory()
  br label %262

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @PyBUF_SIMPLE, align 4
  %84 = call i32 @PyObject_GetBuffer(i32* %82, %struct.TYPE_12__* %8, i32 %83)
  %85 = call i64 (...) @PyErr_Occurred()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %255

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %13, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MAGIC, align 4
  %96 = load i32, i32* @MAGIC_LEN, align 4
  %97 = call i64 @memcmp(i32 %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* @PyExc_ValueError, align 4
  %101 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %253

102:                                              ; preds = %88
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @_le32toh(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = mul nsw i32 %107, %114
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 20, %117
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %102
  %121 = load i32, i32* @PyExc_ValueError, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 20, %123
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %124, i32 %125)
  br label %253

127:                                              ; preds = %102
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @_le32toh(i32 %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 10
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @_le32toh(i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 5
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @get_lower_limit(i8* %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @get_upper_limit(i8* %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 8
  %171 = load i32*, i32** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32* (i32*, i8*, i8*, ...) @PyObject_CallMethod(i32* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  store i32* %173, i32** %11, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %127
  %177 = call i64 (...) @PyErr_Occurred()
  %178 = call i32 @assert(i64 %177)
  br label %253

179:                                              ; preds = %127
  %180 = load i32*, i32** %11, align 8
  %181 = call i32 @PyBytes_Size(i32* %180)
  store i32 %181, i32* %7, align 4
  %182 = call i64 (...) @PyErr_Occurred()
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %250

185:                                              ; preds = %179
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i32, i32* @PyExc_ValueError, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %191, i32 %192)
  br label %250

194:                                              ; preds = %185
  %195 = load i32*, i32** %11, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 6
  %198 = load i32, i32* @PyBUF_SIMPLE, align 4
  %199 = call i32 @PyObject_GetBuffer(i32* %195, %struct.TYPE_12__* %197, i32 %198)
  %200 = call i64 (...) @PyErr_Occurred()
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %250

203:                                              ; preds = %194
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 7
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %242, label %212

212:                                              ; preds = %203
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 5
  %215 = load i8*, i8** %214, align 8
  %216 = call i64 @get_min_empty(i8* %215)
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %220 = call i64 @count_empty(%struct.TYPE_13__* %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 4
  store i64 %220, i64* %222, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp slt i64 %225, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %212
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 5
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @hashindex_resize(%struct.TYPE_13__* %231, i8* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %230
  %238 = load i32, i32* @PyExc_ValueError, align 4
  %239 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %238, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %243

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %240, %212
  br label %242

242:                                              ; preds = %241, %203
  br label %243

243:                                              ; preds = %242, %237
  %244 = call i64 (...) @PyErr_Occurred()
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %248 = call i32 @hashindex_free_buckets(%struct.TYPE_13__* %247)
  br label %249

249:                                              ; preds = %246, %243
  br label %250

250:                                              ; preds = %249, %202, %189, %184
  %251 = load i32*, i32** %11, align 8
  %252 = call i32 @Py_DECREF(i32* %251)
  br label %253

253:                                              ; preds = %250, %176, %120, %99
  %254 = call i32 @PyBuffer_Release(%struct.TYPE_12__* %8)
  br label %255

255:                                              ; preds = %253, %87
  %256 = call i64 (...) @PyErr_Occurred()
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %260 = call i32 @free(%struct.TYPE_13__* %259)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  br label %261

261:                                              ; preds = %258, %255
  br label %262

262:                                              ; preds = %261, %79, %75, %66, %57, %49, %32, %27
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @Py_DECREF(i32* %263)
  br label %265

265:                                              ; preds = %262, %19
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  ret %struct.TYPE_13__* %266
}

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, ...) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @PyBytes_Size(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, ...) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @PyErr_ExceptionMatches(i32) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PyNumber_AsSsize_t(i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @PyObject_GetBuffer(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i8* @_le32toh(i32) #1

declare dso_local i32 @get_lower_limit(i8*) #1

declare dso_local i32 @get_upper_limit(i8*) #1

declare dso_local i64 @get_min_empty(i8*) #1

declare dso_local i64 @count_empty(%struct.TYPE_13__*) #1

declare dso_local i32 @hashindex_resize(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @hashindex_free_buckets(%struct.TYPE_13__*) #1

declare dso_local i32 @PyBuffer_Release(%struct.TYPE_12__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
