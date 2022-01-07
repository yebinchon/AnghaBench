; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetHubStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetHubStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32* }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i32 }

@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetHubStatus(%struct.TYPE_19__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @CHECK_RIGHT, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @LockHubList(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_17__* @GetHub(i32* %22, i32 %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @UnlockHubList(i32* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = icmp eq %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %32, i64* %3, align 8
  br label %283

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = call i32 @Zero(%struct.TYPE_15__* %34, i32 104)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @Lock(i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 17
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @StrCpy(i32 %42, i32 4, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 16
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 15
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @LIST_NUM(i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 7
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @Count(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @Count(i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @LIST_NUM(i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 16
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 11
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = icmp ne %struct.TYPE_13__* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %33
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 11
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @LIST_NUM(i32 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 15
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 11
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @LIST_NUM(i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 14
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %88, %33
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @HASH_LIST_NUM(i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @LIST_NUM(i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @Lock(i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 13
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @Copy(i32* %123, i32 %126, i32 4)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @Unlock(i32 %130)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 12
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 10
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @Unlock(i32 %154)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %267

161:                                              ; preds = %105
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @LockList(i32 %164)
  store i64 0, i64* %9, align 8
  br label %166

166:                                              ; preds = %259, %161
  %167 = load i64, i64* %9, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @LIST_NUM(i32 %170)
  %172 = icmp slt i64 %167, %171
  br i1 %172, label %173, label %262

173:                                              ; preds = %166
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = call i8* @LIST_DATA(i32 %176, i64 %177)
  %179 = bitcast i8* %178 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %179, %struct.TYPE_18__** %11, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %258

184:                                              ; preds = %173
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @LockList(i32 %187)
  store i64 0, i64* %10, align 8
  br label %189

189:                                              ; preds = %250, %184
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @LIST_NUM(i32 %193)
  %195 = icmp slt i64 %190, %194
  br i1 %195, label %196, label %253

196:                                              ; preds = %189
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i64, i64* %10, align 8
  %201 = call i8* @LIST_DATA(i32 %199, i64 %200)
  %202 = bitcast i8* %201 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %202, %struct.TYPE_16__** %12, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @StrCmpi(i32 %205, i32 %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %249

211:                                              ; preds = %196
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 7
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, %214
  store i64 %218, i64* %216, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 6
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr i8, i8* %224, i64 %221
  store i8* %225, i8** %223, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 5
  %231 = load i8*, i8** %230, align 8
  %232 = getelementptr i8, i8* %231, i64 %228
  store i8* %232, i8** %230, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %235
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %237, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, %244
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %211, %196
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %10, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %10, align 8
  br label %189

253:                                              ; preds = %189
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @UnlockList(i32 %256)
  br label %258

258:                                              ; preds = %253, %173
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %9, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %9, align 8
  br label %166

262:                                              ; preds = %166
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @UnlockList(i32 %265)
  br label %267

267:                                              ; preds = %262, %105
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %267
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %273, %267
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %281 = call i32 @ReleaseHub(%struct.TYPE_17__* %280)
  %282 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %282, i64* %3, align 8
  br label %283

283:                                              ; preds = %279, %31
  %284 = load i64, i64* %3, align 8
  ret i64 %284
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_17__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @Count(i32) #1

declare dso_local i32 @HASH_LIST_NUM(i32) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
