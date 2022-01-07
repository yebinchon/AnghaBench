; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Found the following streams\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"    Video Streams : \00", align 1
@V = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"      0x%x-0x%x type %s (0x%x)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"    Audio Streams : \00", align 1
@A = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"    Subtitle Streams : \00", align 1
@S = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"    Other Streams : \00", align 1
@N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @hb_ps_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_ps_stream_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = call i32 @hb_ps_stream_find_streams(%struct.TYPE_10__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = call i32 @hb_ps_resolve_stream_types(%struct.TYPE_10__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %307

50:                                               ; preds = %38
  %51 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %111, %50
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @V, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %60
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = call i32 @stream_type_name2(%struct.TYPE_10__* %91, %struct.TYPE_11__* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %90, i32 %99, i32 %108)
  br label %110

110:                                              ; preds = %72, %60
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %53

114:                                              ; preds = %53
  %115 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %174, %114
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %177

123:                                              ; preds = %116
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @A, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %173

135:                                              ; preds = %123
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = call i32 @stream_type_name2(%struct.TYPE_10__* %154, %struct.TYPE_11__* %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %153, i32 %162, i32 %171)
  br label %173

173:                                              ; preds = %135, %123
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %3, align 4
  br label %116

177:                                              ; preds = %116
  %178 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %237, %177
  %180 = load i32, i32* %3, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %240

186:                                              ; preds = %179
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @S, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %236

198:                                              ; preds = %186
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = call i32 @stream_type_name2(%struct.TYPE_10__* %217, %struct.TYPE_11__* %224)
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %216, i32 %225, i32 %234)
  br label %236

236:                                              ; preds = %198, %186
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %3, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %3, align 4
  br label %179

240:                                              ; preds = %179
  %241 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %303, %240
  %243 = load i32, i32* %3, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %243, %247
  br i1 %248, label %249, label %306

249:                                              ; preds = %242
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @N, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %302

261:                                              ; preds = %249
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = load i32, i32* %3, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i64 %286
  %288 = call i32 @stream_type_name2(%struct.TYPE_10__* %280, %struct.TYPE_11__* %287)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %270, i32 %279, i32 %288, i32 %297)
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @hb_stream_delete_ps_entry(%struct.TYPE_10__* %299, i32 %300)
  br label %302

302:                                              ; preds = %261, %249
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %3, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %3, align 4
  br label %242

306:                                              ; preds = %242
  br label %336

307:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  br label %308

308:                                              ; preds = %332, %307
  %309 = load i32, i32* %3, align 4
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %309, %313
  br i1 %314, label %315, label %335

315:                                              ; preds = %308
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = load i32, i32* %3, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @N, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %315
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %329 = load i32, i32* %3, align 4
  %330 = call i32 @hb_stream_delete_ps_entry(%struct.TYPE_10__* %328, i32 %329)
  br label %331

331:                                              ; preds = %327, %315
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %3, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %3, align 4
  br label %308

335:                                              ; preds = %308
  br label %336

336:                                              ; preds = %335, %306
  ret void
}

declare dso_local i32 @hb_ps_stream_find_streams(%struct.TYPE_10__*) #1

declare dso_local i32 @hb_ps_resolve_stream_types(%struct.TYPE_10__*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @stream_type_name2(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @hb_stream_delete_ps_entry(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
