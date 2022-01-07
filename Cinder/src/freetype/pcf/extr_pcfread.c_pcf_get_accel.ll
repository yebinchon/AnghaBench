; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pcf/extr_pcfread.c_pcf_get_accel.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pcf/extr_pcfread.c_pcf_get_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"pcf_get_accel%s:\0A  format: 0x%lX (%s, %s)\0A\00", align 1
@PCF_BDF_ACCELERATORS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c" (getting BDF accelerators)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSBFirst = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@PCF_ACCEL_W_INKBOUNDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"accelerated\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"not accelerated\00", align 1
@PCF_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@pcf_accel_msb_header = common dso_local global i32 0, align 4
@pcf_accel_header = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [169 x i8] c"  noOverlap=%s, constantMetrics=%s, terminalFont=%s, constantWidth=%s\0A  inkInside=%s, inkMetrics=%s, drawDirection=%s\0A  fontAscent=%ld, fontDescent=%ld, maxOverlap=%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RTL\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"LTR\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"pfc_get_accel: clamping font ascent to value %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"pfc_get_accel: clamping font descent to value %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"  minbounds:\00", align 1
@PCF_FORMAT_MASK = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"  maxbounds:\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"  ink minbounds:\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"  ink maxbounds:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, i64)* @pcf_get_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcf_get_accel(i32 %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @pcf_seek_to_table_type(i32 %13, i32 %17, i32 %21, i64 %22, i64* %7, i64* %8)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %247

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @FT_READ_ULONG_LE(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %247

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PCF_BDF_ACCELERATORS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @PCF_BYTE_ORDER(i64 %39)
  %41 = load i64, i64* @MSBFirst, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @PCF_ACCEL_W_INKBOUNDS, align 4
  %47 = call i64 @PCF_FORMAT_MATCH(i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)
  %51 = call i32 @FT_TRACE4(i8* %50)
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @PCF_DEFAULT_FORMAT, align 4
  %54 = call i64 @PCF_FORMAT_MATCH(i64 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %32
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* @PCF_ACCEL_W_INKBOUNDS, align 4
  %59 = call i64 @PCF_FORMAT_MATCH(i64 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %247

62:                                               ; preds = %56, %32
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @PCF_BYTE_ORDER(i64 %63)
  %65 = load i64, i64* @MSBFirst, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @pcf_accel_msb_header, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = call i64 @FT_STREAM_READ_FIELDS(i32 %68, %struct.TYPE_8__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %247

73:                                               ; preds = %67
  br label %81

74:                                               ; preds = %62
  %75 = load i32, i32* @pcf_accel_header, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = call i64 @FT_STREAM_READ_FIELDS(i32 %75, %struct.TYPE_8__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %247

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %73
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 13
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 12
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 11
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 10
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 9
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @FT_TRACE5(i8* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @FT_ABS(i32 %138)
  %140 = icmp sgt i32 %139, 32767
  br i1 %140, label %141, label %156

141:                                              ; preds = %81
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 -32767, i32 32767
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 @FT_TRACE0(i8* %154)
  br label %156

156:                                              ; preds = %141, %81
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @FT_ABS(i32 %159)
  %161 = icmp sgt i32 %160, 32767
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 -32767, i32 32767
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = call i32 @FT_TRACE0(i8* %175)
  br label %177

177:                                              ; preds = %162, %156
  %178 = call i32 @FT_TRACE5(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %179 = load i32, i32* %4, align 4
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* @PCF_FORMAT_MASK, align 8
  %182 = xor i64 %181, -1
  %183 = and i64 %180, %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 4
  %186 = call i64 @pcf_get_metric(i32 %179, i64 %183, i32* %185)
  store i64 %186, i64* %9, align 8
  %187 = load i64, i64* %9, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %247

190:                                              ; preds = %177
  %191 = call i32 @FT_TRACE5(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %192 = load i32, i32* %4, align 4
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* @PCF_FORMAT_MASK, align 8
  %195 = xor i64 %194, -1
  %196 = and i64 %193, %195
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = call i64 @pcf_get_metric(i32 %192, i64 %196, i32* %198)
  store i64 %199, i64* %9, align 8
  %200 = load i64, i64* %9, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %247

203:                                              ; preds = %190
  %204 = load i64, i64* %7, align 8
  %205 = load i32, i32* @PCF_ACCEL_W_INKBOUNDS, align 4
  %206 = call i64 @PCF_FORMAT_MATCH(i64 %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %235

208:                                              ; preds = %203
  %209 = call i32 @FT_TRACE5(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %210 = load i32, i32* %4, align 4
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* @PCF_FORMAT_MASK, align 8
  %213 = xor i64 %212, -1
  %214 = and i64 %211, %213
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 5
  %217 = call i64 @pcf_get_metric(i32 %210, i64 %214, i32* %216)
  store i64 %217, i64* %9, align 8
  %218 = load i64, i64* %9, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %247

221:                                              ; preds = %208
  %222 = call i32 @FT_TRACE5(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %223 = load i32, i32* %4, align 4
  %224 = load i64, i64* %7, align 8
  %225 = load i64, i64* @PCF_FORMAT_MASK, align 8
  %226 = xor i64 %225, -1
  %227 = and i64 %224, %226
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 3
  %230 = call i64 @pcf_get_metric(i32 %223, i64 %227, i32* %229)
  store i64 %230, i64* %9, align 8
  %231 = load i64, i64* %9, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %247

234:                                              ; preds = %221
  br label %246

235:                                              ; preds = %203
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %235, %234
  br label %247

247:                                              ; preds = %246, %233, %220, %202, %189, %79, %72, %61, %31, %26
  %248 = load i64, i64* %9, align 8
  ret i64 %248
}

declare dso_local i64 @pcf_seek_to_table_type(i32, i32, i32, i64, i64*, i64*) #1

declare dso_local i64 @FT_READ_ULONG_LE(i64) #1

declare dso_local i32 @FT_TRACE4(i8*) #1

declare dso_local i64 @PCF_BYTE_ORDER(i64) #1

declare dso_local i64 @PCF_FORMAT_MATCH(i64, i32) #1

declare dso_local i64 @FT_STREAM_READ_FIELDS(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @FT_TRACE5(i8*) #1

declare dso_local i32 @FT_ABS(i32) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i64 @pcf_get_metric(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
