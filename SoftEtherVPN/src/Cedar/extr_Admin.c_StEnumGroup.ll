; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumGroup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_25__ = type { i8*, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8*, i32, i64, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i8*, i32, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumGroup(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = trunc i64 %27 to i32
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @StrCpy(i8* %29, i32 %30, i8* %33)
  %35 = load i32, i32* @CHECK_RIGHT, align 4
  %36 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %43, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %214

44:                                               ; preds = %2
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @LockHubList(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call %struct.TYPE_26__* @GetHub(i32* %47, i8* %50)
  store %struct.TYPE_26__* %51, %struct.TYPE_26__** %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @UnlockHubList(i32* %52)
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %55 = icmp eq %struct.TYPE_26__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %57, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %214

58:                                               ; preds = %44
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %60 = call i32 @AcLock(%struct.TYPE_26__* %59)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = call i32 @FreeRpcEnumGroup(%struct.TYPE_25__* %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = call i32 @Zero(%struct.TYPE_25__* %63, i32 24)
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @StrCpy(i8* %67, i32 8, i8* %29)
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @LIST_NUM(i32 %73)
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = mul i64 32, %79
  %81 = trunc i64 %80 to i32
  %82 = call %struct.TYPE_24__* @ZeroMalloc(i32 %81)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 2
  store %struct.TYPE_24__* %82, %struct.TYPE_24__** %84, align 8
  store i64 0, i64* %13, align 8
  br label %85

85:                                               ; preds = %205, %58
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %208

91:                                               ; preds = %85
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i64 %95
  store %struct.TYPE_24__* %96, %struct.TYPE_24__** %15, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %13, align 8
  %103 = call i8* @LIST_DATA(i32 %101, i64 %102)
  %104 = bitcast i8* %103 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %16, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @Lock(i32 %107)
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @StrCpy(i8* %111, i32 8, i8* %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @UniStrCpy(i32 %118, i32 4, i32 %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @UniStrCpy(i32 %125, i32 4, i32 %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = icmp ne %struct.TYPE_19__* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %91
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %134
  br label %145

145:                                              ; preds = %144, %91
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @Unlock(i32 %148)
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @LockList(i32 %156)
  store i64 0, i64* %14, align 8
  br label %158

158:                                              ; preds = %195, %145
  %159 = load i64, i64* %14, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @LIST_NUM(i32 %164)
  %166 = icmp ult i64 %159, %165
  br i1 %166, label %167, label %198

167:                                              ; preds = %158
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %14, align 8
  %174 = call i8* @LIST_DATA(i32 %172, i64 %173)
  %175 = bitcast i8* %174 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %175, %struct.TYPE_22__** %17, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @Lock(i32 %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %184 = icmp eq %struct.TYPE_21__* %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %167
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %185, %167
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @Unlock(i32 %193)
  br label %195

195:                                              ; preds = %190
  %196 = load i64, i64* %14, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %14, align 8
  br label %158

198:                                              ; preds = %158
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @UnlockList(i32 %203)
  br label %205

205:                                              ; preds = %198
  %206 = load i64, i64* %13, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %13, align 8
  br label %85

208:                                              ; preds = %85
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %210 = call i32 @AcUnlock(%struct.TYPE_26__* %209)
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %212 = call i32 @ReleaseHub(%struct.TYPE_26__* %211)
  %213 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %213, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %214

214:                                              ; preds = %208, %56, %42
  %215 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i64, i64* %3, align 8
  ret i64 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_26__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @AcLock(%struct.TYPE_26__*) #2

declare dso_local i32 @FreeRpcEnumGroup(%struct.TYPE_25__*) #2

declare dso_local i32 @Zero(%struct.TYPE_25__*, i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_24__* @ZeroMalloc(i32) #2

declare dso_local i8* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @AcUnlock(%struct.TYPE_26__*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_26__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
