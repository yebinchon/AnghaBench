; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_esds.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_esds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"descriptor %x, size %i\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"es_id\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"object_type_indication\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"stream_type\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"buffer_size_db\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"avg_bitrate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @mp4_write_box_esds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_esds(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %21
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %6, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 2097052
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED, align 4
  store i32 %31, i32* %2, align 4
  br label %332

32:                                               ; preds = %1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %41 [
    i32 128, label %38
    i32 130, label %39
    i32 129, label %40
  ]

38:                                               ; preds = %32
  store i32 4, i32* %9, align 4
  br label %43

39:                                               ; preds = %32
  store i32 5, i32* %9, align 4
  br label %43

40:                                               ; preds = %32
  store i32 32, i32* %9, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED, align 4
  store i32 %42, i32* %2, align 4
  br label %332

43:                                               ; preds = %40, %39, %38
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %66 [
    i32 132, label %49
    i32 135, label %50
    i32 134, label %51
    i32 136, label %52
    i32 133, label %53
    i32 131, label %54
  ]

49:                                               ; preds = %43
  store i32 32, i32* %10, align 4
  br label %68

50:                                               ; preds = %43
  store i32 107, i32* %10, align 4
  br label %68

51:                                               ; preds = %43
  store i32 96, i32* %10, align 4
  br label %68

52:                                               ; preds = %43
  store i32 108, i32* %10, align 4
  br label %68

53:                                               ; preds = %43
  store i32 64, i32* %10, align 4
  br label %68

54:                                               ; preds = %43
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 32000
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 105, i32 107
  store i32 %65, i32* %10, align 4
  br label %68

66:                                               ; preds = %43
  %67 = load i32, i32* @VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED, align 4
  store i32 %67, i32* %2, align 4
  br label %332

68:                                               ; preds = %54, %53, %52, %51, %50, %49
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 128
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 2, %80
  br label %105

82:                                               ; preds = %68
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 16384
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 3, %94
  br label %103

96:                                               ; preds = %82
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 4, %101
  br label %103

103:                                              ; preds = %96, %89
  %104 = phi i32 [ %95, %89 ], [ %102, %96 ]
  br label %105

105:                                              ; preds = %103, %75
  %106 = phi i32 [ %81, %75 ], [ %104, %103 ]
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add i32 13, %107
  %109 = icmp ult i32 %108, 128
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = add i32 13, %111
  %113 = add i32 2, %112
  br label %128

114:                                              ; preds = %105
  %115 = load i32, i32* %6, align 4
  %116 = add i32 13, %115
  %117 = icmp ult i32 %116, 16384
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = add i32 13, %119
  %121 = add i32 3, %120
  br label %126

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = add i32 13, %123
  %125 = add i32 4, %124
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i32 [ %121, %118 ], [ %125, %122 ]
  br label %128

128:                                              ; preds = %126, %110
  %129 = phi i32 [ %113, %110 ], [ %127, %126 ]
  store i32 %129, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = call i32 @WRITE_U8(%struct.TYPE_20__* %130, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = call i32 @WRITE_U24(%struct.TYPE_20__* %132, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add i32 3, %135
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %136, %137
  %139 = call i32 (%struct.TYPE_20__*, i8*, i32, i32, ...) bitcast (i32 (...)* @LOG_FORMAT to i32 (%struct.TYPE_20__*, i8*, i32, i32, ...)*)(%struct.TYPE_20__* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %140, i32 3)
  %142 = load i32, i32* %7, align 4
  %143 = add i32 3, %142
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %143, %144
  %146 = icmp uge i32 %145, 16384
  br i1 %146, label %147, label %157

147:                                              ; preds = %128
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add i32 3, %149
  %151 = load i32, i32* %8, align 4
  %152 = add i32 %150, %151
  %153 = lshr i32 %152, 14
  %154 = and i32 %153, 127
  %155 = or i32 %154, 128
  %156 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %148, i32 %155)
  br label %157

157:                                              ; preds = %147, %128
  %158 = load i32, i32* %7, align 4
  %159 = add i32 3, %158
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %159, %160
  %162 = icmp uge i32 %161, 128
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add i32 3, %165
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %166, %167
  %169 = lshr i32 %168, 7
  %170 = and i32 %169, 127
  %171 = or i32 %170, 128
  %172 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %164, i32 %171)
  br label %173

173:                                              ; preds = %163, %157
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = load i32, i32* %7, align 4
  %176 = add i32 3, %175
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %176, %177
  %179 = and i32 %178, 127
  %180 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %174, i32 %179)
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  %186 = trunc i64 %185 to i32
  %187 = call i32 @WRITE_U16(%struct.TYPE_20__* %181, i32 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %189 = call i32 @WRITE_U8(%struct.TYPE_20__* %188, i32 31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = load i32, i32* %6, align 4
  %192 = add i32 13, %191
  %193 = call i32 (%struct.TYPE_20__*, i8*, i32, i32, ...) bitcast (i32 (...)* @LOG_FORMAT to i32 (%struct.TYPE_20__*, i8*, i32, i32, ...)*)(%struct.TYPE_20__* %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %195 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %194, i32 4)
  %196 = load i32, i32* %6, align 4
  %197 = add i32 13, %196
  %198 = icmp uge i32 %197, 16384
  br i1 %198, label %199, label %207

199:                                              ; preds = %173
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %201 = load i32, i32* %6, align 4
  %202 = add i32 13, %201
  %203 = lshr i32 %202, 14
  %204 = and i32 %203, 127
  %205 = or i32 %204, 128
  %206 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %200, i32 %205)
  br label %207

207:                                              ; preds = %199, %173
  %208 = load i32, i32* %6, align 4
  %209 = add i32 13, %208
  %210 = icmp uge i32 %209, 128
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %213 = load i32, i32* %6, align 4
  %214 = add i32 13, %213
  %215 = lshr i32 %214, 7
  %216 = and i32 %215, 127
  %217 = or i32 %216, 128
  %218 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %212, i32 %217)
  br label %219

219:                                              ; preds = %211, %207
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %221 = load i32, i32* %6, align 4
  %222 = add i32 13, %221
  %223 = and i32 %222, 127
  %224 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %220, i32 %223)
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @WRITE_U8(%struct.TYPE_20__* %225, i32 %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %229 = load i32, i32* %9, align 4
  %230 = shl i32 %229, 2
  %231 = or i32 %230, 1
  %232 = call i32 @WRITE_U8(%struct.TYPE_20__* %228, i32 %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %234 = call i32 @WRITE_U24(%struct.TYPE_20__* %233, i32 8000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @WRITE_U32(%struct.TYPE_20__* %235, i32 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @WRITE_U32(%struct.TYPE_20__* %242, i32 %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %321

255:                                              ; preds = %219
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (%struct.TYPE_20__*, i8*, i32, i32, ...) bitcast (i32 (...)* @LOG_FORMAT to i32 (%struct.TYPE_20__*, i8*, i32, i32, ...)*)(%struct.TYPE_20__* %256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 5, i32 %261)
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %264 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %263, i32 5)
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp sge i32 %269, 16384
  br i1 %270, label %271, label %282

271:                                              ; preds = %255
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = ashr i32 %277, 14
  %279 = and i32 %278, 127
  %280 = or i32 %279, 128
  %281 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %272, i32 %280)
  br label %282

282:                                              ; preds = %271, %255
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp sge i32 %287, 128
  br i1 %288, label %289, label %300

289:                                              ; preds = %282
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = ashr i32 %295, 7
  %297 = and i32 %296, 127
  %298 = or i32 %297, 128
  %299 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %290, i32 %298)
  br label %300

300:                                              ; preds = %289, %282
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = and i32 %306, 127
  %308 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %301, i32 %307)
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @WRITE_BYTES(%struct.TYPE_20__* %309, i32 %314, i32 %319)
  br label %321

321:                                              ; preds = %300, %219
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %323 = call i32 (%struct.TYPE_20__*, i8*, i32, i32, ...) bitcast (i32 (...)* @LOG_FORMAT to i32 (%struct.TYPE_20__*, i8*, i32, i32, ...)*)(%struct.TYPE_20__* %322, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 6, i32 1)
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %325 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %324, i32 6)
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %327 = call i32 (%struct.TYPE_20__*, i32, ...) bitcast (i32 (...)* @_WRITE_U8 to i32 (%struct.TYPE_20__*, i32, ...)*)(%struct.TYPE_20__* %326, i32 1)
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %329 = call i32 @WRITE_U8(%struct.TYPE_20__* %328, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %331 = call i32 @STREAM_STATUS(%struct.TYPE_20__* %330)
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %321, %66, %41, %30
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @LOG_FORMAT(...) #1

declare dso_local i32 @_WRITE_U8(...) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
