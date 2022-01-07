; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip_stream.c_zip2gz.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip_stream.c_zip2gz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32* }
%struct.zipent = type { i32, i64, i64, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i8, i8*, %struct.TYPE_9__, i32*, i64, i32*, i32*, i32, i32, i64, i64, i64, i32* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32*, i64, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Wrong uncompressed size in store compression\00", align 1
@ERROR_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Version too new\00", align 1
@ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"OS not supported\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Cannot span disks\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Compression method unsupported\00", align 1
@Z_NULL = common dso_local global i32* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@Z_BUFSIZE = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@Z_ERRNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zip2gz(%struct.TYPE_8__* %0, %struct.zipent* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.zipent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.zipent* %1, %struct.zipent** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.zipent*, %struct.zipent** %5, align 8
  %15 = icmp ne %struct.zipent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i32* null, i32** %3, align 8
  br label %280

17:                                               ; preds = %13
  %18 = load %struct.zipent*, %struct.zipent** %5, align 8
  %19 = getelementptr inbounds %struct.zipent, %struct.zipent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.zipent*, %struct.zipent** %5, align 8
  %24 = getelementptr inbounds %struct.zipent, %struct.zipent* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.zipent*, %struct.zipent** %5, align 8
  %27 = getelementptr inbounds %struct.zipent, %struct.zipent* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @ERROR_CORRUPT, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @errormsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %34)
  store i32* null, i32** %3, align 8
  br label %280

36:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %86

37:                                               ; preds = %17
  %38 = load %struct.zipent*, %struct.zipent** %5, align 8
  %39 = getelementptr inbounds %struct.zipent, %struct.zipent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %79

42:                                               ; preds = %37
  %43 = load %struct.zipent*, %struct.zipent** %5, align 8
  %44 = getelementptr inbounds %struct.zipent, %struct.zipent* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 20
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @errormsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %51)
  store i32* null, i32** %3, align 8
  br label %280

53:                                               ; preds = %42
  %54 = load %struct.zipent*, %struct.zipent** %5, align 8
  %55 = getelementptr inbounds %struct.zipent, %struct.zipent* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @errormsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %59, i8* %62)
  store i32* null, i32** %3, align 8
  br label %280

64:                                               ; preds = %53
  %65 = load %struct.zipent*, %struct.zipent** %5, align 8
  %66 = getelementptr inbounds %struct.zipent, %struct.zipent* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @errormsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %73, i8* %76)
  store i32* null, i32** %3, align 8
  br label %280

78:                                               ; preds = %64
  br label %85

79:                                               ; preds = %37
  %80 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @errormsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %80, i8* %83)
  store i32* null, i32** %3, align 8
  br label %280

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %36
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = load %struct.zipent*, %struct.zipent** %5, align 8
  %89 = call i64 @seekcompresszip(%struct.TYPE_8__* %87, %struct.zipent* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32* null, i32** %3, align 8
  br label %280

92:                                               ; preds = %86
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %8, align 8
  %96 = call i64 @ALLOC(i32 144)
  %97 = inttoptr i64 %96 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %7, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = icmp ne %struct.TYPE_7__* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = load i32*, i32** @Z_NULL, align 8
  store i32* %101, i32** %3, align 8
  br label %280

102:                                              ; preds = %92
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load i32*, i32** @Z_NULL, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 7
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i32* %112, i32** %117, align 8
  %118 = load i32*, i32** @Z_NULL, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 14
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store i32* %118, i32** %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 5
  store i32* null, i32** %131, align 8
  %132 = load i32, i32* @Z_OK, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 13
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 12
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 11
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @EOF, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 10
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** @Z_NULL, align 8
  %145 = call i32 @crc32(i64 0, i32* %144, i32 0)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 9
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 8
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  store i8 114, i8* %154, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = add nsw i32 %156, 1
  %158 = call i64 @ALLOC(i32 %157)
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %102
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = call i32* @destroy(%struct.TYPE_7__* %167)
  %169 = load i32*, i32** @Z_NULL, align 8
  store i32* %169, i32** %3, align 8
  br label %280

170:                                              ; preds = %102
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 @strcpy(i8* %173, i8* %174)
  %176 = load i32, i32* @Z_BUFSIZE, align 4
  %177 = call i64 @ALLOC(i32 %176)
  %178 = inttoptr i64 %177 to i32*
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 7
  store i32* %178, i32** %180, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  store i32* %178, i32** %183, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  %186 = load i32, i32* @MAX_WBITS, align 4
  %187 = sub nsw i32 0, %186
  %188 = call i32 @inflateInit2(%struct.TYPE_9__* %185, i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @Z_OK, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %170
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 7
  %195 = load i32*, i32** %194, align 8
  %196 = load i32*, i32** @Z_NULL, align 8
  %197 = icmp eq i32* %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192, %170
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %200 = call i32* @destroy(%struct.TYPE_7__* %199)
  %201 = load i32*, i32** @Z_NULL, align 8
  store i32* %201, i32** %3, align 8
  br label %280

202:                                              ; preds = %192
  %203 = load i32, i32* @Z_BUFSIZE, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  store i64 0, i64* @errno, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 5
  store i32* %209, i32** %211, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %202
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %218 = call i32* @destroy(%struct.TYPE_7__* %217)
  %219 = load i32*, i32** @Z_NULL, align 8
  store i32* %219, i32** %3, align 8
  br label %280

220:                                              ; preds = %202
  store i64 0, i64* @errno, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 7
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @Z_BUFSIZE, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = call i64 @fread(i32* %223, i32 1, i32 %224, i32* %227)
  store i64 %228, i64* %10, align 8
  %229 = load i64, i64* %10, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %220
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = call i64 @ferror(i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i32, i32* @Z_ERRNO, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %237, %231, %220
  %242 = load i64, i64* %10, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %242
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 7
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  store i32* %252, i32** %255, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %261, label %265

261:                                              ; preds = %241
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %263 = call i32* @destroy(%struct.TYPE_7__* %262)
  %264 = load i32*, i32** @Z_NULL, align 8
  store i32* %264, i32** %3, align 8
  br label %280

265:                                              ; preds = %241
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = call i64 @ftell(i32* %268)
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = sub nsw i64 %269, %274
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 6
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %279 = bitcast %struct.TYPE_7__* %278 to i32*
  store i32* %279, i32** %3, align 8
  br label %280

280:                                              ; preds = %265, %261, %216, %198, %166, %100, %91, %79, %72, %58, %47, %30, %16
  %281 = load i32*, i32** %3, align 8
  ret i32* %281
}

declare dso_local i32 @errormsg(i8*, i32, i8*) #1

declare dso_local i64 @seekcompresszip(%struct.TYPE_8__*, %struct.zipent*) #1

declare dso_local i64 @ALLOC(i32) #1

declare dso_local i32 @crc32(i64, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @ftell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
