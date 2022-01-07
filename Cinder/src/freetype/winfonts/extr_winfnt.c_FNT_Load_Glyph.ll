; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_FNT_Load_Glyph.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_FNT_Load_Glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_17__, i32, i64, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@Invalid_Face_Handle = common dso_local global i32 0, align 4
@Invalid_Argument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FNT_Load_Glyph: glyph index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid FNT offset\0A\00", align 1
@Invalid_File_Format = common dso_local global i32 0, align 4
@FT_PIXEL_MODE_MONO = common dso_local global i32 0, align 4
@FT_GLYPH_FORMAT_BITMAP = common dso_local global i32 0, align 4
@FT_LOAD_BITMAP_METRICS_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid bitmap width\0A\00", align 1
@FT_GLYPH_OWN_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i32)* @FNT_Load_Glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FNT_Load_Glyph(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @FT_SIZE_FACE(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %9, align 8
  %26 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %14, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @Invalid_Face_Handle, align 4
  %33 = call i32 @FT_THROW(i32 %32)
  store i32 %33, i32* %11, align 4
  br label %300

34:                                               ; preds = %4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %10, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = call %struct.TYPE_18__* @FT_FACE(%struct.TYPE_16__* %42)
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp sge i32 %41, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %34
  %49 = load i32, i32* @Invalid_Argument, align 4
  %50 = call i32 @FT_THROW(i32 %49)
  store i32 %50, i32* %11, align 4
  br label %300

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @FT_TRACE1(i8* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 768
  %72 = zext i1 %71 to i32
  %73 = call i64 @FT_BOOL(i32 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 6, i32 4
  store i32 %77, i32* %13, align 4
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 148, i32 118
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 2
  %92 = load i64, i64* %16, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 4, i32 2
  %96 = sub nsw i32 %91, %95
  %97 = icmp sge i32 %86, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %66
  %99 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @Invalid_File_Format, align 4
  %101 = call i32 @FT_THROW(i32 %100)
  store i32 %101, i32* %11, align 4
  br label %300

102:                                              ; preds = %66
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32* %108, i32** %12, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i8* @FT_NEXT_USHORT_LE(i32* %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %16, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @FT_NEXT_ULONG_LE(i32* %117)
  store i32 %118, i32* %15, align 4
  br label %123

119:                                              ; preds = %102
  %120 = load i32*, i32** %12, align 8
  %121 = call i8* @FT_NEXT_USHORT_LE(i32* %120)
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %124, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @Invalid_File_Format, align 4
  %133 = call i32 @FT_THROW(i32 %132)
  store i32 %133, i32* %11, align 4
  br label %300

134:                                              ; preds = %123
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @FT_PIXEL_MODE_MONO, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @FT_GLYPH_FORMAT_BITMAP, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, 6
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  store i8* %160, i8** %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 6
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 3
  store i8* %169, i8** %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %175, 6
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 6
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 6
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = call i32 @ft_synthesize_vertical_metrics(%struct.TYPE_17__* %193, i8* %199)
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @FT_LOAD_BITMAP_METRICS_ONLY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %134
  br label %300

206:                                              ; preds = %134
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32* %212, i32** %12, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @FT_FACE_MEMORY(i32 %215)
  store i32 %216, i32* %17, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 7
  %221 = ashr i32 %220, 3
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %206
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %18, align 4
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %229, %232
  %234 = add nsw i32 %228, %233
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp sgt i32 %234, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %227, %206
  %241 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %242 = load i32, i32* @Invalid_File_Format, align 4
  %243 = call i32 @FT_THROW(i32 %242)
  store i32 %243, i32* %11, align 4
  br label %300

244:                                              ; preds = %227
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %18, align 4
  %252 = call i64 @FT_ALLOC_MULT(i64 %247, i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %244
  br label %300

255:                                              ; preds = %244
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i32*
  store i32* %259, i32** %19, align 8
  br label %260

260:                                              ; preds = %289, %255
  %261 = load i32, i32* %18, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %294

263:                                              ; preds = %260
  %264 = load i32*, i32** %12, align 8
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  store i32* %269, i32** %21, align 8
  %270 = load i32*, i32** %19, align 8
  store i32* %270, i32** %20, align 8
  br label %271

271:                                              ; preds = %279, %263
  %272 = load i32*, i32** %12, align 8
  %273 = load i32*, i32** %21, align 8
  %274 = icmp ult i32* %272, %273
  br i1 %274, label %275, label %288

275:                                              ; preds = %271
  %276 = load i32*, i32** %12, align 8
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %20, align 8
  store i32 %277, i32* %278, align 4
  br label %279

279:                                              ; preds = %275
  %280 = load i32*, i32** %12, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %12, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32*, i32** %20, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %20, align 8
  br label %271

288:                                              ; preds = %271
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %18, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %18, align 4
  %292 = load i32*, i32** %19, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %19, align 8
  br label %260

294:                                              ; preds = %260
  %295 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  store i32 %295, i32* %299, align 4
  br label %300

300:                                              ; preds = %294, %254, %240, %205, %130, %98, %48, %31
  %301 = load i32, i32* %11, align 4
  ret i32 %301
}

declare dso_local i32 @FT_SIZE_FACE(i32) #1

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local %struct.TYPE_18__* @FT_FACE(%struct.TYPE_16__*) #1

declare dso_local i32 @FT_TRACE1(i8*) #1

declare dso_local i64 @FT_BOOL(i32) #1

declare dso_local i32 @FT_TRACE2(i8*) #1

declare dso_local i8* @FT_NEXT_USHORT_LE(i32*) #1

declare dso_local i32 @FT_NEXT_ULONG_LE(i32*) #1

declare dso_local i32 @ft_synthesize_vertical_metrics(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @FT_FACE_MEMORY(i32) #1

declare dso_local i64 @FT_ALLOC_MULT(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
