; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_format_commit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_format_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__**, i32 }
%struct.TYPE_15__ = type { {}*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"invalid port (%p/%p)\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: port format has been overwritten, resetting %p to %p\00", align 1
@MMAL_EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"<NO-FORMAT>\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%4.4s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s(%i:%i) port %p format %i:%s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: no component implementation\00", align 1
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_port_format_commit(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = icmp ne %struct.TYPE_17__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi %struct.TYPE_15__* [ %22, %19 ], [ null, %23 ]
  %26 = call i32 (i8*, %struct.TYPE_17__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %16, %struct.TYPE_15__* %25)
  %27 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %252

28:                                               ; preds = %10
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = icmp ne %struct.TYPE_14__* %31, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %28
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_17__*
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = call i32 (i8*, %struct.TYPE_17__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %45, %struct.TYPE_14__* %48, %struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %65, align 8
  %66 = load i32, i32* @MMAL_EFAULT, align 4
  store i32 %66, i32* %2, align 4
  br label %252

67:                                               ; preds = %28
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %76 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %75, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %85

77:                                               ; preds = %67
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = bitcast i64* %82 to i8*
  %84 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %77, %74
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %107 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %94, i32 %98, %struct.TYPE_17__* %99, i32 %105, i8* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = bitcast {}** %111 to i32 (%struct.TYPE_17__*)**
  %113 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %112, align 8
  %114 = icmp ne i32 (%struct.TYPE_17__*)* %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %85
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.TYPE_17__*
  %121 = call i32 (i8*, %struct.TYPE_17__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_17__* %120)
  %122 = load i32, i32* @MMAL_ENOSYS, align 4
  store i32 %122, i32* %2, align 4
  br label %252

123:                                              ; preds = %85
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = call i32 @LOCK_PORT(%struct.TYPE_17__* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = bitcast {}** %129 to i32 (%struct.TYPE_17__*)**
  %131 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = call i32 %131(%struct.TYPE_17__* %132)
  store i32 %133, i32* %4, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %135 = call i32 @mmal_port_name_update(%struct.TYPE_17__* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %123
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %143, %123
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %157, %149
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %248

169:                                              ; preds = %163
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %173, align 8
  store %struct.TYPE_17__** %174, %struct.TYPE_17__*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %244, %169
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ult i32 %176, %181
  br i1 %182, label %183, label %247

183:                                              ; preds = %175
  %184 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %185 = load i32, i32* %7, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %184, i64 %186
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %191, i64 %193
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp slt i64 %190, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %183
  %200 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %201 = load i32, i32* %7, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %200, i64 %202
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %208 = load i32, i32* %7, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %207, i64 %209
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  store i64 %206, i64* %212, align 8
  br label %213

213:                                              ; preds = %199, %183
  %214 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %215 = load i32, i32* %7, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %214, i64 %216
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %222 = load i32, i32* %7, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %221, i64 %223
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %220, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %213
  %230 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %231 = load i32, i32* %7, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %230, i64 %232
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %238 = load i32, i32* %7, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %237, i64 %239
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 3
  store i64 %236, i64* %242, align 8
  br label %243

243:                                              ; preds = %229, %213
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %7, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %175

247:                                              ; preds = %175
  br label %248

248:                                              ; preds = %247, %163
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %250 = call i32 @UNLOCK_PORT(%struct.TYPE_17__* %249)
  %251 = load i32, i32* %4, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %248, %115, %40, %24
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @LOG_ERROR(i8*, %struct.TYPE_17__*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @LOCK_PORT(%struct.TYPE_17__*) #1

declare dso_local i32 @mmal_port_name_update(%struct.TYPE_17__*) #1

declare dso_local i32 @UNLOCK_PORT(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
