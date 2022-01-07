; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_stream_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Found the following PIDS\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"    Video PIDS : \00", align 1
@V = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"      0x%x type %s (0x%x)%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" (PCR)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    Audio PIDS : \00", align 1
@A = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"    Subtitle PIDS : \00", align 1
@S = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"    Other PIDS : \00", align 1
@N = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @hb_ts_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_ts_stream_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %9 = icmp ne %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %43, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  store i32 -1, i32* %42, align 8
  br label %43

43:                                               ; preds = %18
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %11

46:                                               ; preds = %11
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = icmp ne %struct.TYPE_19__* %54, null
  br i1 %55, label %56, label %85

56:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %57

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @malloc(i32 %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = call i64 @hb_ts_stream_find_pids(%struct.TYPE_18__* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store i32 -1, i32* %2, align 4
  br label %431

100:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %131, %100
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %101
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.TYPE_14__* @hb_buffer_init(i32 %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 4
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %120, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %108
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %101

134:                                              ; preds = %101
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = call i32 @hb_ts_resolve_pid_types(%struct.TYPE_18__* %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %407

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %143 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %201, %141
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %204

151:                                              ; preds = %144
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @ts_stream_kind(%struct.TYPE_18__* %152, i32 %153)
  %155 = load i64, i64* @V, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %200

157:                                              ; preds = %151
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i64 %181
  %183 = call i32 @stream_type_name2(%struct.TYPE_18__* %167, %struct.TYPE_19__* %182)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @ts_stream_type(%struct.TYPE_18__* %184, i32 %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %199 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %183, i32 %186, i8* %198)
  br label %200

200:                                              ; preds = %157, %151
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %144

204:                                              ; preds = %144
  %205 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %263, %204
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %207, %211
  br i1 %212, label %213, label %266

213:                                              ; preds = %206
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i64 @ts_stream_kind(%struct.TYPE_18__* %214, i32 %215)
  %217 = load i64, i64* @A, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %262

219:                                              ; preds = %213
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i64 %243
  %245 = call i32 @stream_type_name2(%struct.TYPE_18__* %229, %struct.TYPE_19__* %244)
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @ts_stream_type(%struct.TYPE_18__* %246, i32 %247)
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %261 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %228, i32 %245, i32 %248, i8* %260)
  br label %262

262:                                              ; preds = %219, %213
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %4, align 4
  br label %206

266:                                              ; preds = %206
  %267 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %268

268:                                              ; preds = %325, %266
  %269 = load i32, i32* %4, align 4
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %269, %273
  br i1 %274, label %275, label %328

275:                                              ; preds = %268
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %277 = load i32, i32* %4, align 4
  %278 = call i64 @ts_stream_kind(%struct.TYPE_18__* %276, i32 %277)
  %279 = load i64, i64* @S, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %324

281:                                              ; preds = %275
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %284, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %294, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %298, align 8
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i64 %305
  %307 = call i32 @stream_type_name2(%struct.TYPE_18__* %291, %struct.TYPE_19__* %306)
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %309 = load i32, i32* %4, align 4
  %310 = call i32 @ts_stream_type(%struct.TYPE_18__* %308, i32 %309)
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %323 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %290, i32 %307, i32 %310, i8* %322)
  br label %324

324:                                              ; preds = %281, %275
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %4, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %4, align 4
  br label %268

328:                                              ; preds = %268
  %329 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %330

330:                                              ; preds = %403, %328
  %331 = load i32, i32* %4, align 4
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %331, %335
  br i1 %336, label %337, label %406

337:                                              ; preds = %330
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %339 = load i32, i32* %4, align 4
  %340 = call i64 @ts_stream_kind(%struct.TYPE_18__* %338, i32 %339)
  %341 = load i64, i64* @N, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %345 = load i32, i32* %4, align 4
  %346 = call i64 @ts_stream_kind(%struct.TYPE_18__* %344, i32 %345)
  %347 = load i64, i64* @P, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %392

349:                                              ; preds = %343, %337
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %352, align 8
  %354 = load i32, i32* %4, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %362, align 8
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 2
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = load i32, i32* %4, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i64 %373
  %375 = call i32 @stream_type_name2(%struct.TYPE_18__* %359, %struct.TYPE_19__* %374)
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %377 = load i32, i32* %4, align 4
  %378 = call i32 @ts_stream_type(%struct.TYPE_18__* %376, i32 %377)
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 2
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %381, align 8
  %383 = load i32, i32* %4, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %391 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %358, i32 %375, i32 %378, i8* %390)
  br label %392

392:                                              ; preds = %349, %343
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %394 = load i32, i32* %4, align 4
  %395 = call i64 @ts_stream_kind(%struct.TYPE_18__* %393, i32 %394)
  %396 = load i64, i64* @N, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %392
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %400 = load i32, i32* %4, align 4
  %401 = call i32 @hb_stream_delete_ts_entry(%struct.TYPE_18__* %399, i32 %400)
  br label %402

402:                                              ; preds = %398, %392
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %4, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %4, align 4
  br label %330

406:                                              ; preds = %330
  br label %430

407:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %408

408:                                              ; preds = %426, %407
  %409 = load i32, i32* %4, align 4
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = icmp slt i32 %409, %413
  br i1 %414, label %415, label %429

415:                                              ; preds = %408
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %417 = load i32, i32* %4, align 4
  %418 = call i64 @ts_stream_kind(%struct.TYPE_18__* %416, i32 %417)
  %419 = load i64, i64* @N, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %415
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %423 = load i32, i32* %4, align 4
  %424 = call i32 @hb_stream_delete_ts_entry(%struct.TYPE_18__* %422, i32 %423)
  br label %425

425:                                              ; preds = %421, %415
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %4, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %4, align 4
  br label %408

429:                                              ; preds = %408
  br label %430

430:                                              ; preds = %429, %406
  store i32 0, i32* %2, align 4
  br label %431

431:                                              ; preds = %430, %99
  %432 = load i32, i32* %2, align 4
  ret i32 %432
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i64 @hb_ts_stream_find_pids(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_14__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_ts_resolve_pid_types(%struct.TYPE_18__*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i64 @ts_stream_kind(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @stream_type_name2(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ts_stream_type(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @hb_stream_delete_ts_entry(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
