; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_LINK_CANT_CREATE_ON_FARM = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no_cascade\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"LA_SET_LINK\00", align 1
@LINK_DEVICE_NAME = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@NUM_POLICY_ITEM_FOR_VER2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StSetLink(%struct.TYPE_24__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %26, i64* %3, align 8
  br label %242

27:                                               ; preds = %2
  %28 = load i32, i32* @CHECK_RIGHT, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @ERR_LINK_CANT_CREATE_ON_FARM, align 8
  store i64 %35, i64* %3, align 8
  br label %242

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @LockHubList(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_23__* @GetHub(i32* %39, i32 %42)
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @UnlockHubList(i32* %44)
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %47 = icmp eq %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %49, i64* %3, align 8
  br label %242

50:                                               ; preds = %36
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %57 = call i64 @GetHubAdminOption(%struct.TYPE_23__* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %61 = call i32 @ReleaseHub(%struct.TYPE_23__* %60)
  %62 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %62, i64* %3, align 8
  br label %242

63:                                               ; preds = %55, %50
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LockList(i32 %66)
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %112, %63
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @LIST_NUM(i32 %72)
  %74 = icmp slt i64 %69, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %68
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call %struct.TYPE_22__* @LIST_DATA(i32 %78, i64 %79)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %12, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Lock(i32 %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @UniStrCmpi(i32 %89, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %75
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %11, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @AddRef(i32 %101)
  br label %103

103:                                              ; preds = %97, %75
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @Unlock(i32 %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %109 = icmp ne %struct.TYPE_22__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %115

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %10, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %68

115:                                              ; preds = %110, %68
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @UnlockList(i32 %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %121 = icmp eq %struct.TYPE_22__* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = call i32 @ReleaseHub(%struct.TYPE_23__* %123)
  %125 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %125, i64* %3, align 8
  br label %242

126:                                              ; preds = %115
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ALog(%struct.TYPE_24__* %127, %struct.TYPE_23__* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @Lock(i32 %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %126
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @FreeX(i32* %146)
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %126
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = call i32 @Copy(%struct.TYPE_18__* %153, %struct.TYPE_19__* %156, i32 4)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @LINK_DEVICE_NAME, align 4
  %164 = call i32 @StrCpy(i32 %162, i32 4, i32 %163)
  %165 = load i32, i32* @INFINITE, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  store i32 %165, i32* %169, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store i32 10, i32* %173, align 4
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @CiFreeClientAuth(i32 %180)
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @CopyClientAuth(i32 %184)
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %150
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 2
  %199 = load i32, i32* @NUM_POLICY_ITEM_FOR_VER2, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 8, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 @Copy(%struct.TYPE_18__* %196, %struct.TYPE_19__* %198, i32 %202)
  br label %211

204:                                              ; preds = %150
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 2
  %210 = call i32 @Copy(%struct.TYPE_18__* %207, %struct.TYPE_19__* %209, i32 4)
  br label %211

211:                                              ; preds = %204, %193
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  store i32 1, i32* %215, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 3
  store i32 0, i32* %219, align 4
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32* @CloneX(i32 %227)
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 1
  store i32* %228, i32** %230, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @Unlock(i32 %233)
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %236 = call i32 @IncrementServerConfigRevision(%struct.TYPE_20__* %235)
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %238 = call i32 @ReleaseLink(%struct.TYPE_22__* %237)
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %240 = call i32 @ReleaseHub(%struct.TYPE_23__* %239)
  %241 = load i64, i64* %9, align 8
  store i64 %241, i64* %3, align 8
  br label %242

242:                                              ; preds = %211, %122, %59, %48, %34, %25
  %243 = load i64, i64* %3, align 8
  ret i64 %243
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_23__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_23__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @UniStrCmpi(i32, i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ALog(%struct.TYPE_24__*, %struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @Copy(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @CiFreeClientAuth(i32) #1

declare dso_local i32 @CopyClientAuth(i32) #1

declare dso_local i32* @CloneX(i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_20__*) #1

declare dso_local i32 @ReleaseLink(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
