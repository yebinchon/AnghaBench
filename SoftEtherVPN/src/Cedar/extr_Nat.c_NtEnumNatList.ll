; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtEnumNatList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtEnumNatList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_OFFLINE = common dso_local global i64 0, align 8
@SOCK_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NtEnumNatList(%struct.TYPE_26__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %15 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %15, i64* %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @Lock(i32 %18)
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %6, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = icmp eq %struct.TYPE_20__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %2
  %31 = load i64, i64* @ERR_OFFLINE, align 8
  store i64 %31, i64* %5, align 8
  br label %311

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = call i32 @LockVirtual(%struct.TYPE_20__* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @ERR_OFFLINE, align 8
  store i64 %40, i64* %5, align 8
  br label %308

41:                                               ; preds = %32
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = call i32 @FreeRpcEnumNat(%struct.TYPE_22__* %42)
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %45 = call i32 @Zero(%struct.TYPE_22__* %44, i32 16)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @LockList(i32 %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @LIST_NUM(i32 %52)
  store i64 %53, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = call i64 @NnIsActive(%struct.TYPE_20__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %41
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = icmp ne %struct.TYPE_25__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  store %struct.TYPE_25__* %65, %struct.TYPE_25__** %10, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @LIST_NUM(i32 %70)
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %62, %57, %41
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 64, %80
  %82 = trunc i64 %81 to i32
  %83 = call %struct.TYPE_21__* @ZeroMalloc(i32 %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  store %struct.TYPE_21__* %83, %struct.TYPE_21__** %85, align 8
  store i64 0, i64* %7, align 8
  br label %86

86:                                               ; preds = %201, %72
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %204

90:                                               ; preds = %86
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %7, align 8
  %95 = call i8* @LIST_DATA(i32 %93, i64 %94)
  %96 = bitcast i8* %95 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %11, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i64 %100
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %12, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 10
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @TickToTime(i32 %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 8
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @TickToTime(i32 %140)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @IPToStr32(i32 %146, i32 4, i32 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @IPToStr32(i32 %153, i32 4, i32 %156)
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = icmp ne %struct.TYPE_18__* %160, null
  br i1 %161, label %162, label %195

162:                                              ; preds = %90
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SOCK_TCP, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %162
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @StrCpy(i32 %187, i32 4, i32 %192)
  br label %194

194:                                              ; preds = %184, %162
  br label %195

195:                                              ; preds = %194, %90
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %201

201:                                              ; preds = %195
  %202 = load i64, i64* %7, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %7, align 8
  br label %86

204:                                              ; preds = %86
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %206 = icmp ne %struct.TYPE_25__* %205, null
  br i1 %206, label %207, label %303

207:                                              ; preds = %204
  store i64 0, i64* %7, align 8
  br label %208

208:                                              ; preds = %299, %207
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* %9, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %302

212:                                              ; preds = %208
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %7, align 8
  %219 = call i8* @LIST_DATA(i32 %217, i64 %218)
  %220 = bitcast i8* %219 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %220, %struct.TYPE_24__** %13, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* %7, align 8
  %226 = add i64 %224, %225
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i64 %226
  store %struct.TYPE_21__* %227, %struct.TYPE_21__** %14, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 12
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 11
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 10
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @TickToTime(i32 %260)
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 8
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i8* @TickToTime(i32 %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 7
  store i8* %267, i8** %269, align 8
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @IPToStr32(i32 %272, i32 4, i32 %275)
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @IPToStr32(i32 %279, i32 4, i32 %282)
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 8
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %212
  %300 = load i64, i64* %7, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %7, align 8
  br label %208

302:                                              ; preds = %208
  br label %303

303:                                              ; preds = %302, %204
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @UnlockList(i32 %306)
  br label %308

308:                                              ; preds = %303, %39
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %310 = call i32 @UnlockVirtual(%struct.TYPE_20__* %309)
  br label %311

311:                                              ; preds = %308, %30
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @Unlock(i32 %314)
  %316 = load i64, i64* %5, align 8
  ret i64 %316
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @LockVirtual(%struct.TYPE_20__*) #1

declare dso_local i32 @FreeRpcEnumNat(%struct.TYPE_22__*) #1

declare dso_local i32 @Zero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @NnIsActive(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @ZeroMalloc(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i8* @TickToTime(i32) #1

declare dso_local i32 @IPToStr32(i32, i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @UnlockVirtual(%struct.TYPE_20__*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
