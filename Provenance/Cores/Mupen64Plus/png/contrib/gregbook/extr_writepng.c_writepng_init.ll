; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_writepng.c_writepng_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_writepng.c_writepng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, double, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i8* }

@writepng_error_handler = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4
@PNG_INTERLACE_ADAM7 = common dso_local global i32 0, align 4
@PNG_INTERLACE_NONE = common dso_local global i32 0, align 4
@PNG_COMPRESSION_TYPE_DEFAULT = common dso_local global i32 0, align 4
@PNG_FILTER_TYPE_DEFAULT = common dso_local global i32 0, align 4
@TEXT_TITLE = common dso_local global i32 0, align 4
@PNG_TEXT_COMPRESSION_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@TEXT_AUTHOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@TEXT_DESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@TEXT_COPY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@TEXT_EMAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"E-mail\00", align 1
@TEXT_URL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"URL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writepng_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x %struct.TYPE_8__], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @png_get_libpng_ver(i32* null)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load i32, i32* @writepng_error_handler, align 4
  %15 = call i64 @png_create_write_struct(i32 %12, %struct.TYPE_10__* %13, i32 %14, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %318

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @png_create_info_struct(i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @png_destroy_write_struct(i64* %4, i64* null)
  store i32 4, i32* %2, align 4
  br label %318

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 22
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @setjmp(i32 %29) #3
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @png_destroy_write_struct(i64* %4, i64* %5)
  store i32 2, i32* %2, align 4
  br label %318

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 21
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @png_init_io(i64 %35, i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %42 = call i32 @png_set_compression_level(i64 %40, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  store i32 %48, i32* %6, align 4
  br label %67

49:                                               ; preds = %34
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  store i32 %55, i32* %6, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  store i32 %62, i32* %6, align 4
  br label %65

63:                                               ; preds = %56
  %64 = call i32 @png_destroy_write_struct(i64* %4, i64* %5)
  store i32 11, i32* %2, align 4
  br label %318

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 20
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @PNG_INTERLACE_ADAM7, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %7, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 19
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 18
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 17
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PNG_COMPRESSION_TYPE_DEFAULT, align 4
  %92 = load i32, i32* @PNG_FILTER_TYPE_DEFAULT, align 4
  %93 = call i32 @png_set_IHDR(i64 %78, i64 %79, i32 %82, i32 %85, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = fcmp ogt double %96, 0.000000e+00
  br i1 %97, label %98, label %105

98:                                               ; preds = %76
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = call i32 @png_set_gAMA(i64 %99, i64 %100, double %103)
  br label %105

105:                                              ; preds = %98, %76
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 16
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 13
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @png_set_bKGD(i64 %123, i64 %124, %struct.TYPE_9__* %8)
  br label %126

126:                                              ; preds = %110, %105
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 12
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @png_convert_from_time_t(i32* %9, i32 %134)
  %136 = load i64, i64* %4, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @png_set_tIME(i64 %136, i64 %137, i32* %9)
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %306

144:                                              ; preds = %139
  store i32 0, i32* %11, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TEXT_TITLE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = load i8*, i8** @PNG_TEXT_COMPRESSION_NONE, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  store i8* %152, i8** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 8
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %151, %144
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @TEXT_AUTHOR, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %170
  %178 = load i8*, i8** @PNG_TEXT_COMPRESSION_NONE, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  store i8* %178, i8** %182, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %186, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  store i32 %189, i32* %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %177, %170
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @TEXT_DESC, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %222

203:                                              ; preds = %196
  %204 = load i8*, i8** @PNG_TEXT_COMPRESSION_NONE, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  store i8* %204, i8** %208, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %212, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  store i32 %215, i32* %219, align 8
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %203, %196
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @TEXT_COPY, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %222
  %230 = load i8*, i8** @PNG_TEXT_COMPRESSION_NONE, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  store i8* %230, i8** %234, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %238, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  store i32 %241, i32* %245, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %229, %222
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @TEXT_EMAIL, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %274

255:                                              ; preds = %248
  %256 = load i8*, i8** @PNG_TEXT_COMPRESSION_NONE, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  store i8* %256, i8** %260, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  store i32 %267, i32* %271, align 8
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  br label %274

274:                                              ; preds = %255, %248
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @TEXT_URL, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %300

281:                                              ; preds = %274
  %282 = load i8*, i8** @PNG_TEXT_COMPRESSION_NONE, align 8
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  store i8* %282, i8** %286, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %290, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  store i32 %293, i32* %297, align 8
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %281, %274
  %301 = load i64, i64* %4, align 8
  %302 = load i64, i64* %5, align 8
  %303 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %10, i64 0, i64 0
  %304 = load i32, i32* %11, align 4
  %305 = call i32 @png_set_text(i64 %301, i64 %302, %struct.TYPE_8__* %303, i32 %304)
  br label %306

306:                                              ; preds = %300, %139
  %307 = load i64, i64* %4, align 8
  %308 = load i64, i64* %5, align 8
  %309 = call i32 @png_write_info(i64 %307, i64 %308)
  %310 = load i64, i64* %4, align 8
  %311 = call i32 @png_set_packing(i64 %310)
  %312 = load i64, i64* %4, align 8
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 4
  store i64 %312, i64* %314, align 8
  %315 = load i64, i64* %5, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 3
  store i64 %315, i64* %317, align 8
  store i32 0, i32* %2, align 4
  br label %318

318:                                              ; preds = %306, %63, %32, %24, %18
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local i64 @png_create_write_struct(i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @png_get_libpng_ver(i32*) #1

declare dso_local i64 @png_create_info_struct(i64) #1

declare dso_local i32 @png_destroy_write_struct(i64*, i64*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_init_io(i64, i32) #1

declare dso_local i32 @png_set_compression_level(i64, i32) #1

declare dso_local i32 @png_set_IHDR(i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @png_set_gAMA(i64, i64, double) #1

declare dso_local i32 @png_set_bKGD(i64, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @png_convert_from_time_t(i32*, i32) #1

declare dso_local i32 @png_set_tIME(i64, i64, i32*) #1

declare dso_local i32 @png_set_text(i64, i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @png_write_info(i64, i64) #1

declare dso_local i32 @png_set_packing(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
