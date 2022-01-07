; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumCa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumCa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_21__ = type { i8*, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i64 0, align 8
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumCa(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %32, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %153

33:                                               ; preds = %2
  %34 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %35 = trunc i64 %23 to i32
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @StrCpy(i8* %25, i32 %35, i8* %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = call i32 @FreeRpcHubEnumCa(%struct.TYPE_21__* %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = call i32 @Zero(%struct.TYPE_21__* %42, i32 24)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @StrCpy(i8* %46, i32 8, i8* %25)
  %48 = load i32, i32* @CHECK_RIGHT, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @LockHubList(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call %struct.TYPE_22__* @GetHub(i32* %51, i8* %25)
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @UnlockHubList(i32* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = icmp eq %struct.TYPE_22__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %33
  %58 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %58, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %153

59:                                               ; preds = %33
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = call i32 @Zero(%struct.TYPE_21__* %60, i32 24)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @StrCpy(i8* %64, i32 8, i8* %25)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %149

72:                                               ; preds = %59
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @LockList(i32* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @LIST_NUM(i32* %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 16, %90
  %92 = trunc i64 %91 to i32
  %93 = call %struct.TYPE_20__* @ZeroMalloc(i32 %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %95, align 8
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %139, %72
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %142

103:                                              ; preds = %96
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i64 %107
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %13, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call %struct.TYPE_18__* @LIST_DATA(i32* %113, i64 %114)
  store %struct.TYPE_18__* %115, %struct.TYPE_18__** %14, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = call i32 @POINTER_TO_KEY(%struct.TYPE_18__* %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @GetAllNameFromNameEx(i32 %122, i32 4, i32 %125)
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @GetAllNameFromNameEx(i32 %129, i32 4, i32 %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %103
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %96

142:                                              ; preds = %96
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @UnlockList(i32* %147)
  br label %149

149:                                              ; preds = %142, %59
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = call i32 @ReleaseHub(%struct.TYPE_22__* %150)
  %152 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %152, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %149, %57, %31
  %154 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i64, i64* %3, align 8
  ret i64 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcHubEnumCa(%struct.TYPE_21__*) #2

declare dso_local i32 @Zero(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_22__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @LockList(i32*) #2

declare dso_local i32 @LIST_NUM(i32*) #2

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #2

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32*, i64) #2

declare dso_local i32 @POINTER_TO_KEY(%struct.TYPE_18__*) #2

declare dso_local i32 @GetAllNameFromNameEx(i32, i32, i32) #2

declare dso_local i32 @UnlockList(i32*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_22__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
