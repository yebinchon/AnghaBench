; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32, i32, i32, i32, i64, i32, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i32 }

@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumHub(%struct.TYPE_25__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %5, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = call i32 @FreeRpcEnumHub(%struct.TYPE_20__* %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call i32 @Zero(%struct.TYPE_20__* %28, i32 16)
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = call i32 @LockHubList(%struct.TYPE_24__* %30)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %73, %2
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @LIST_NUM(i32 %36)
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %32
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i8* @LIST_DATA(i32 %42, i64 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %45, %struct.TYPE_22__** %11, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Lock(i32 %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %39
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 14
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @StrCmpi(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %72

69:                                               ; preds = %59, %54, %39
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %69, %68
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %32

76:                                               ; preds = %32
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = mul i64 80, %80
  %82 = trunc i64 %81 to i32
  %83 = call %struct.TYPE_19__* @ZeroMalloc(i32 %82)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  store %struct.TYPE_19__* %83, %struct.TYPE_19__** %85, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %86

86:                                               ; preds = %267, %76
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @LIST_NUM(i32 %90)
  %92 = icmp slt i64 %87, %91
  br i1 %92, label %93, label %270

93:                                               ; preds = %86
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %10, align 8
  %98 = call i8* @LIST_DATA(i32 %96, i64 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %12, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %93
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 14
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @StrCmpi(i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %262

119:                                              ; preds = %109, %104, %93
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i64 %123
  store %struct.TYPE_19__* %125, %struct.TYPE_19__** %13, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @StrCpy(i32 %128, i32 4, i32 %131)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 12
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 13
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @LIST_NUM(i32 %148)
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @LockHashList(i32 %154)
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @HASH_LIST_NUM(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @UnlockHashList(i32 %164)
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @LockList(i32 %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @LIST_NUM(i32 %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @UnlockList(i32 %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 7
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = icmp ne %struct.TYPE_17__* %182, null
  br i1 %183, label %184, label %225

184:                                              ; preds = %119
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @LockList(i32 %189)
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 7
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @LIST_NUM(i32 %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 12
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @UnlockList(i32 %203)
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @LockList(i32 %209)
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 7
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @LIST_NUM(i32 %215)
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 11
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 7
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @UnlockList(i32 %223)
  br label %225

225:                                              ; preds = %184, %119
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 10
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 8
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @Lock(i32 %248)
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @Copy(i32* %251, i32 %254, i32 4)
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @Unlock(i32 %258)
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 1
  store i32 1, i32* %261, align 4
  br label %262

262:                                              ; preds = %225, %118
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @Unlock(i32 %265)
  br label %267

267:                                              ; preds = %262
  %268 = load i64, i64* %10, align 8
  %269 = add nsw i64 %268, 1
  store i64 %269, i64* %10, align 8
  br label %86

270:                                              ; preds = %86
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %272 = call i32 @UnlockHubList(%struct.TYPE_24__* %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %386

278:                                              ; preds = %270
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @LockList(i32 %281)
  store i64 0, i64* %14, align 8
  br label %283

283:                                              ; preds = %378, %278
  %284 = load i64, i64* %14, align 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i64 @LIST_NUM(i32 %287)
  %289 = icmp slt i64 %284, %288
  br i1 %289, label %290, label %381

290:                                              ; preds = %283
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i64, i64* %14, align 8
  %295 = call i8* @LIST_DATA(i32 %293, i64 %294)
  %296 = bitcast i8* %295 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %296, %struct.TYPE_23__** %17, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @LockList(i32 %299)
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %373

305:                                              ; preds = %290
  store i64 0, i64* %15, align 8
  br label %306

306:                                              ; preds = %369, %305
  %307 = load i64, i64* %15, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i64 @LIST_NUM(i32 %310)
  %312 = icmp slt i64 %307, %311
  br i1 %312, label %313, label %372

313:                                              ; preds = %306
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i64, i64* %15, align 8
  %318 = call i8* @LIST_DATA(i32 %316, i64 %317)
  %319 = bitcast i8* %318 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %319, %struct.TYPE_21__** %18, align 8
  store i64 0, i64* %16, align 8
  br label %320

320:                                              ; preds = %365, %313
  %321 = load i64, i64* %16, align 8
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp slt i64 %321, %324
  br i1 %325, label %326, label %368

326:                                              ; preds = %320
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %328, align 8
  %330 = load i64, i64* %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i64 %330
  store %struct.TYPE_19__* %331, %struct.TYPE_19__** %19, align 8
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @StrCmpi(i32 %334, i32 %337)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %364

340:                                              ; preds = %326
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, %343
  store i64 %347, i64* %345, align 8
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %350
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 8
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %362, %359
  store i64 %363, i64* %361, align 8
  br label %364

364:                                              ; preds = %340, %326
  br label %365

365:                                              ; preds = %364
  %366 = load i64, i64* %16, align 8
  %367 = add nsw i64 %366, 1
  store i64 %367, i64* %16, align 8
  br label %320

368:                                              ; preds = %320
  br label %369

369:                                              ; preds = %368
  %370 = load i64, i64* %15, align 8
  %371 = add nsw i64 %370, 1
  store i64 %371, i64* %15, align 8
  br label %306

372:                                              ; preds = %306
  br label %373

373:                                              ; preds = %372, %290
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @UnlockList(i32 %376)
  br label %378

378:                                              ; preds = %373
  %379 = load i64, i64* %14, align 8
  %380 = add nsw i64 %379, 1
  store i64 %380, i64* %14, align 8
  br label %283

381:                                              ; preds = %283
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @UnlockList(i32 %384)
  br label %386

386:                                              ; preds = %381, %270
  %387 = load i64, i64* @ERR_NO_ERROR, align 8
  ret i64 %387
}

declare dso_local i32 @FreeRpcEnumHub(%struct.TYPE_20__*) #1

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @LockHubList(%struct.TYPE_24__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local %struct.TYPE_19__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @LockHashList(i32) #1

declare dso_local i32 @HASH_LIST_NUM(i32) #1

declare dso_local i32 @UnlockHashList(i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockHubList(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
