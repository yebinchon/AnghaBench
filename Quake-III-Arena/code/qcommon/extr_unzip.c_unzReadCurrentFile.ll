; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzReadCurrentFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzReadCurrentFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64, %struct.TYPE_8__, i32*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32*, i32* }

@UNZ_OK = common dso_local global i32 0, align 4
@UNZ_PARAMERROR = common dso_local global i32 0, align 4
@UNZ_END_OF_LIST_OF_FILE = common dso_local global i32 0, align 4
@UNZ_BUFSIZE = common dso_local global i64 0, align 8
@UNZ_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNZ_ERRNO = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzReadCurrentFile(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @UNZ_OK, align 4
  store i32 %20, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %314

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %11, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = icmp eq %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %314

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @UNZ_END_OF_LIST_OF_FILE, align 4
  store i32 %41, i32* %4, align 4
  br label %314

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %314

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32* %48, i32** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %46
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = zext i32 %65 to i64
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %46
  br label %71

71:                                               ; preds = %304, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %305

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %163

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %163

88:                                               ; preds = %83
  %89 = load i64, i64* @UNZ_BUFSIZE, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i64, i64* %12, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @UNZ_EOF, align 4
  store i32 %103, i32* %4, align 4
  br label %314

104:                                              ; preds = %99
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %104
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load i32, i32* @SEEK_SET, align 4
  %125 = call i64 @fseek(i32 %116, i64 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %128, i32* %4, align 4
  br label %314

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %104
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @fread(i32* %133, i64 %134, i32 1, i32 %137)
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %141, i32* %4, align 4
  br label %314

142:                                              ; preds = %130
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  store i32* %155, i32** %158, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i64 %159, i64* %162, align 8
  br label %163

163:                                              ; preds = %142, %83, %77
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %251

168:                                              ; preds = %163
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %172, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %168
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %13, align 8
  br label %188

183:                                              ; preds = %168
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %13, align 8
  br label %188

188:                                              ; preds = %183, %178
  store i64 0, i64* %14, align 8
  br label %189

189:                                              ; preds = %207, %188
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %13, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %189
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %14, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %14, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %200, i32* %206, align 4
  br label %207

207:                                              ; preds = %193
  %208 = load i64, i64* %14, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %14, align 8
  br label %189

210:                                              ; preds = %189
  %211 = load i64, i64* %13, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = zext i32 %214 to i64
  %216 = sub nsw i64 %215, %211
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 8
  %218 = load i64, i64* %13, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %222, %218
  store i64 %223, i64* %221, align 8
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %228, %224
  store i64 %229, i64* %227, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 %230
  store i32* %235, i32** %233, align 8
  %236 = load i64, i64* %13, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 %236
  store i32* %241, i32** %239, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, %242
  store i64 %247, i64* %245, align 8
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* %9, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* %9, align 8
  br label %304

251:                                              ; preds = %163
  %252 = load i32, i32* @Z_SYNC_FLUSH, align 4
  store i32 %252, i32* %19, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %15, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  store i32* %260, i32** %17, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 5
  %263 = load i32, i32* %19, align 4
  %264 = call i32 @inflate(%struct.TYPE_8__* %262, i32 %263)
  store i32 %264, i32* %8, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %16, align 8
  %269 = load i64, i64* %16, align 8
  %270 = load i64, i64* %15, align 8
  %271 = sub nsw i64 %269, %270
  store i64 %271, i64* %18, align 8
  %272 = load i64, i64* %18, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = zext i32 %275 to i64
  %277 = sub nsw i64 %276, %272
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %274, align 8
  %279 = load i64, i64* %16, align 8
  %280 = load i64, i64* %15, align 8
  %281 = sub nsw i64 %279, %280
  %282 = load i64, i64* %9, align 8
  %283 = add nsw i64 %282, %281
  store i64 %283, i64* %9, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @Z_STREAM_END, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %251
  %288 = load i64, i64* %9, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32, i32* @UNZ_EOF, align 4
  %292 = sext i32 %291 to i64
  br label %295

293:                                              ; preds = %287
  %294 = load i64, i64* %9, align 8
  br label %295

295:                                              ; preds = %293, %290
  %296 = phi i64 [ %292, %290 ], [ %294, %293 ]
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %4, align 4
  br label %314

298:                                              ; preds = %251
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @Z_OK, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %305

303:                                              ; preds = %298
  br label %304

304:                                              ; preds = %303, %210
  br label %71

305:                                              ; preds = %302, %71
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @Z_OK, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %305
  %310 = load i64, i64* %9, align 8
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %4, align 4
  br label %314

312:                                              ; preds = %305
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %4, align 4
  br label %314

314:                                              ; preds = %312, %309, %295, %140, %127, %102, %45, %40, %33, %23
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i64 @fseek(i32, i64, i32) #1

declare dso_local i32 @fread(i32*, i64, i32, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
