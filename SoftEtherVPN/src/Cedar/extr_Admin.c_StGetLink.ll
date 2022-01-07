; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { i8*, i32, i32, i32, %struct.TYPE_23__, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_17__*, i32, %struct.TYPE_17__*, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_LINK_CANT_CREATE_ON_FARM = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetLink(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @MAX_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %33, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %188

34:                                               ; preds = %2
  %35 = load i32, i32* @CHECK_RIGHT, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @ERR_LINK_CANT_CREATE_ON_FARM, align 8
  store i64 %42, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %188

43:                                               ; preds = %34
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @LockHubList(i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call %struct.TYPE_21__* @GetHub(i32* %46, i8* %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @UnlockHubList(i32* %51)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = icmp eq %struct.TYPE_21__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %56, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %188

57:                                               ; preds = %43
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %13, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @LockList(i32 %60)
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %106, %57
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @LIST_NUM(i32 %66)
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %62
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call %struct.TYPE_20__* @LIST_DATA(i32 %72, i64 %73)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %15, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Lock(i32 %77)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @UniStrCmpi(i32 %83, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %69
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %13, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @AddRef(i32 %95)
  br label %97

97:                                               ; preds = %91, %69
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Unlock(i32 %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = icmp ne %struct.TYPE_20__* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %109

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %62

109:                                              ; preds = %104, %62
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @UnlockList(i32 %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %115 = icmp eq %struct.TYPE_20__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = call i32 @ReleaseHub(%struct.TYPE_21__* %117)
  %119 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %119, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %188

120:                                              ; preds = %109
  %121 = trunc i64 %24 to i32
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @StrCpy(i8* %26, i32 %121, i8* %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = call i32 @FreeRpcCreateLink(%struct.TYPE_19__* %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = call i32 @Zero(%struct.TYPE_19__* %128, i32 40)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @StrCpy(i8* %132, i32 8, i8* %26)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @Lock(i32 %136)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 0, i32 1
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = call %struct.TYPE_23__* @ZeroMalloc(i32 4)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 6
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = call i32 @Copy(%struct.TYPE_23__* %151, %struct.TYPE_17__* %154, i32 4)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @CopyClientAuth(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = call i32 @Copy(%struct.TYPE_23__* %163, %struct.TYPE_17__* %166, i32 4)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @CloneX(i32 %175)
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @Unlock(i32 %181)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %184 = call i32 @ReleaseLink(%struct.TYPE_20__* %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %186 = call i32 @ReleaseHub(%struct.TYPE_21__* %185)
  %187 = load i64, i64* %9, align 8
  store i64 %187, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %188

188:                                              ; preds = %120, %116, %55, %41, %32
  %189 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i64, i64* %3, align 8
  ret i64 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_21__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_20__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @UniStrCmpi(i32, i32) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_21__*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_19__*) #2

declare dso_local i32 @Zero(%struct.TYPE_19__*, i32) #2

declare dso_local %struct.TYPE_23__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(%struct.TYPE_23__*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @CopyClientAuth(i32) #2

declare dso_local i32 @CloneX(i32) #2

declare dso_local i32 @ReleaseLink(%struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
