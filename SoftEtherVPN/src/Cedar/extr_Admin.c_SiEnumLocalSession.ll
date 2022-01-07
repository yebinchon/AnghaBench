; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumLocalSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumLocalSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32, i64, %struct.TYPE_23__, i32, i32, i32, i32, %struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiEnumLocalSession(%struct.TYPE_25__* %0, i8* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %6, align 8
  %13 = call i64 (...) @Tick64()
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = icmp eq %struct.TYPE_25__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %21 = icmp eq %struct.TYPE_27__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %3
  br label %317

23:                                               ; preds = %19
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LockHubList(i32 %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct.TYPE_28__* @GetHub(i32 %30, i8* %31)
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %7, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @UnlockHubList(i32 %35)
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = icmp eq %struct.TYPE_28__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = call i8* @ZeroMalloc(i32 0)
  %43 = bitcast i8* %42 to %struct.TYPE_26__*
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %45, align 8
  br label %317

46:                                               ; preds = %23
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = icmp ne %struct.TYPE_20__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = mul nsw i64 %56, 1000
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = call i32 @LockList(%struct.TYPE_19__* %61)
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = call i32 @LIST_NUM(%struct.TYPE_19__* %65)
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 112, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @ZeroMalloc(i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_26__*
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  store %struct.TYPE_26__* %76, %struct.TYPE_26__** %78, align 8
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %307, %58
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %80, %84
  br i1 %85, label %86, label %310

86:                                               ; preds = %79
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call %struct.TYPE_24__* @LIST_DATA(%struct.TYPE_19__* %89, i64 %90)
  store %struct.TYPE_24__* %91, %struct.TYPE_24__** %11, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i64 %95
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %12, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @Lock(i32 %99)
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 22
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 18
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @StrCpy(i32 %103, i32 4, i32 %106)
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 21
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 17
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @StrCpy(i32 %110, i32 4, i32 %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  %119 = call i32 @IPToUINT(i32* %118)
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 20
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 19
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  %128 = call i32 @CopyIP(i32* %123, i32* %127)
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @StrCpy(i32 %131, i32 4, i32 %136)
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 16
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 17
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 15
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @Tick64ToTime64(i32 %145)
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 16
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @Tick64ToTime64(i32 %151)
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 15
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 14
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 13
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 12
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 11
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %185, align 8
  %187 = call i32 @LockList(%struct.TYPE_19__* %186)
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 9
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = call i32 @UnlockList(%struct.TYPE_19__* %205)
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @Lock(i32 %209)
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @GetTrafficPacketSize(i32 %213)
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 8
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @GetTrafficPacketNum(i32 %219)
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @Unlock(i32 %225)
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 6
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @Copy(i32 %239, i32 %243, i32 16)
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %298

249:                                              ; preds = %86
  %250 = load i64, i64* %9, align 8
  %251 = icmp eq i64 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 0, i32 1
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %297

260:                                              ; preds = %249
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 3
  store i64 2147483647, i64* %267, align 8
  br label %276

268:                                              ; preds = %260
  %269 = load i64, i64* %8, align 8
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %269, %272
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 3
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %268, %265
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 1
  store i32 1, i32* %283, align 4
  br label %296

284:                                              ; preds = %276
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %9, align 8
  %289 = add nsw i64 %287, %288
  %290 = load i64, i64* %8, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %284
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 1
  store i32 1, i32* %294, align 4
  br label %295

295:                                              ; preds = %292, %284
  br label %296

296:                                              ; preds = %295, %281
  br label %297

297:                                              ; preds = %296, %249
  br label %298

298:                                              ; preds = %297, %86
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @Unlock(i32 %301)
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @GetMachineName(i32 %305, i32 4)
  br label %307

307:                                              ; preds = %298
  %308 = load i64, i64* %10, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %10, align 8
  br label %79

310:                                              ; preds = %79
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %312, align 8
  %314 = call i32 @UnlockList(%struct.TYPE_19__* %313)
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %316 = call i32 @ReleaseHub(%struct.TYPE_28__* %315)
  br label %317

317:                                              ; preds = %310, %39, %22
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @LockHubList(i32) #1

declare dso_local %struct.TYPE_28__* @GetHub(i32, i8*) #1

declare dso_local i32 @UnlockHubList(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @LockList(%struct.TYPE_19__*) #1

declare dso_local i32 @LIST_NUM(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_24__* @LIST_DATA(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i32 @CopyIP(i32*, i32*) #1

declare dso_local i8* @Tick64ToTime64(i32) #1

declare dso_local i32 @UnlockList(%struct.TYPE_19__*) #1

declare dso_local i32 @GetTrafficPacketSize(i32) #1

declare dso_local i32 @GetTrafficPacketNum(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
