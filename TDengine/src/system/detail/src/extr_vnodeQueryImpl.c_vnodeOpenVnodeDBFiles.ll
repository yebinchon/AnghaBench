; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeOpenVnodeDBFiles.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeOpenVnodeDBFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@DEFAULT_DATA_FILE_MMAP_WINDOW_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"QInfo:%p failed open header file:%s reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"QInfo:%p failed to map header file:%s, %s\00", align 1
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"QInfo:%p failed to advise kernel the usage of header files, reason:%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%sv%df%d.data\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%sv%df%d.last\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"QInfo:%p failed to open data file:%s, reason:%s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"QInfo:%p failed to open last file:%s, reason:%s\00", align 1
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"QInfo:%p failed to map data file:%s, %s\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"QInfo:%p failed to advise kernel the usage of data file:%s, reason:%s\00", align 1
@fileHandleHashList = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32, i8*, i8*)* @vnodeOpenVnodeDBFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnodeOpenVnodeDBFiles(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @DEFAULT_DATA_FILE_MMAP_WINDOW_SIZE, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %24, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i8* @open(i32 %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VALIDFD(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %6
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %42, i32 %45, i32 %47)
  br label %229

49:                                               ; preds = %6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @stat(i32 %52, %struct.stat* %15)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %7, align 4
  br label %284

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @PROT_READ, align 4
  %65 = load i32, i32* @MAP_SHARED, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @mmap(i32* null, i32 %63, i32 %64, i32 %65, i32 %68, i32 0)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** @MAP_FAILED, align 8
  %77 = icmp eq i32* %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %56
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %79, i32 %82, i32 %84)
  br label %229

86:                                               ; preds = %56
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @MADV_SEQUENTIAL, align 4
  %92 = call i32 @madvise(i32* %89, i32 %90, i32 %91)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @strerror(i32 %96)
  %98 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32* %95, i32 %97)
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %102, i32 256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %109, i32 256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %110, i32 %111, i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @O_RDONLY, align 4
  %118 = call i8* @open(i32 %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @O_RDONLY, align 4
  %126 = call i8* @open(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @VALIDFD(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %99
  %136 = load i32*, i32** %8, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @strerror(i32 %140)
  %142 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32* %136, i32 %139, i32 %141)
  br label %229

143:                                              ; preds = %99
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @VALIDFD(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %143
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 11
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 @strerror(i32 %154)
  %156 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32* %150, i32 %153, i32 %155)
  br label %229

157:                                              ; preds = %143
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @stat(i32 %160, %struct.stat* %15)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 -1, i32* %7, align 4
  br label %284

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 12
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @stat(i32 %171, %struct.stat* %15)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  store i32 -1, i32* %7, align 4
  br label %284

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @PROT_READ, align 4
  %184 = load i32, i32* @MAP_PRIVATE, align 4
  %185 = load i32, i32* @MAP_POPULATE, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @mmap(i32* null, i32 %182, i32 %183, i32 %186, i32 %189, i32 %192)
  %194 = bitcast i8* %193 to i32*
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  store i32* %194, i32** %196, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load i32*, i32** @MAP_FAILED, align 8
  %201 = icmp eq i32* %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %175
  %203 = load i32*, i32** %8, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @errno, align 4
  %208 = call i32 @strerror(i32 %207)
  %209 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32* %203, i32 %206, i32 %208)
  br label %229

210:                                              ; preds = %175
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @MADV_SEQUENTIAL, align 4
  %218 = call i32 @madvise(i32* %213, i32 %216, i32 %217)
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %228

220:                                              ; preds = %210
  %221 = load i32*, i32** %8, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @errno, align 4
  %226 = call i32 @strerror(i32 %225)
  %227 = call i32 (i8*, i32*, i32, ...) @dError(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0), i32* %221, i32 %224, i32 %226)
  br label %228

228:                                              ; preds = %220, %210
  store i32 0, i32* %7, align 4
  br label %284

229:                                              ; preds = %202, %149, %135, %78, %41
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 6
  %232 = load i32*, i32** %231, align 8
  %233 = load i32*, i32** @MAP_FAILED, align 8
  %234 = icmp ne i32* %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %229
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 6
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @munmap(i32* %243, i32 %246)
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 6
  store i32* null, i32** %249, align 8
  br label %250

250:                                              ; preds = %240, %235, %229
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load i32*, i32** @MAP_FAILED, align 8
  %255 = icmp ne i32* %253, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %250
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @munmap(i32* %264, i32 %267)
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 4
  store i32* null, i32** %270, align 8
  br label %271

271:                                              ; preds = %261, %256, %250
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @tclose(i32 %274)
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @tclose(i32 %278)
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @tclose(i32 %282)
  store i32 -1, i32* %7, align 4
  br label %284

284:                                              ; preds = %271, %228, %174, %163, %55
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i8* @open(i32, i32) #1

declare dso_local i32 @VALIDFD(i32) #1

declare dso_local i32 @dError(i8*, i32*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @madvise(i32*, i32, i32) #1

declare dso_local i32 @munmap(i32*, i32) #1

declare dso_local i32 @tclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
