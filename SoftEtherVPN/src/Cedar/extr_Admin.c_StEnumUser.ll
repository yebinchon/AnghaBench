; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumUser.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_23__ = type { i8*, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i8*, i32, i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StEnumUser(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %6, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  %23 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @CHECK_RIGHT, align 4
  %30 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %203

38:                                               ; preds = %2
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @LockHubList(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call %struct.TYPE_24__* @GetHub(i32* %41, i8* %44)
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %8, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @UnlockHubList(i32* %46)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = icmp eq %struct.TYPE_24__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %203

52:                                               ; preds = %38
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = call i32 @FreeRpcEnumUser(%struct.TYPE_23__* %53)
  %55 = trunc i64 %26 to i32
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @StrCpy(i8* %28, i32 %55, i8* %58)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = call i32 @Zero(%struct.TYPE_23__* %60, i32 24)
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @StrCpy(i8* %64, i32 8, i8* %28)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LockList(i32 %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LIST_NUM(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 56, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_22__* @ZeroMalloc(i32 %84)
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 2
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %87, align 8
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %188, %52
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %191

92:                                               ; preds = %88
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call %struct.TYPE_20__* @LIST_DATA(i32 %97, i32 %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %15, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @Lock(i32 %102)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i64 %108
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %16, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @StrCpy(i8* %112, i32 8, i8* %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @StrCpy(i8* %119, i32 8, i8* %122)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @UniStrCpy(i32 %126, i32 4, i32 %129)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @UniStrCpy(i32 %133, i32 4, i32 %136)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 9
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = icmp ne %struct.TYPE_18__* %155, null
  br i1 %156, label %157, label %168

157:                                              ; preds = %92
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 0, i32 1
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %157, %92
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @Copy(i32* %170, i32 %173, i32 4)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 4
  store i32 1, i32* %183, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @Unlock(i32 %186)
  br label %188

188:                                              ; preds = %168
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %88

191:                                              ; preds = %88
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @UnlockList(i32 %196)
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %199 = call i32 @ReleaseHub(%struct.TYPE_24__* %198)
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %201 = call i32 @IncrementServerConfigRevision(%struct.TYPE_21__* %200)
  %202 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %202, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %203

203:                                              ; preds = %191, %50, %36
  %204 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_24__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @FreeRpcEnumUser(%struct.TYPE_23__*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_22__* @ZeroMalloc(i32) #2

declare dso_local %struct.TYPE_20__* @LIST_DATA(i32, i32) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @Copy(i32*, i32, i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_24__*) #2

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
