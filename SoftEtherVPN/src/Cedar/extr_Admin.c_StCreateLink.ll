; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_LINK_CANT_CREATE_ON_FARM = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no_cascade\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_LINK_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"LA_CREATE_LINK\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StCreateLink(%struct.TYPE_27__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @CHECK_RIGHT, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @ERR_LINK_CANT_CREATE_ON_FARM, align 8
  store i64 %27, i64* %3, align 8
  br label %168

28:                                               ; preds = %2
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @LockHubList(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_26__* @GetHub(i32* %31, i32 %34)
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @UnlockHubList(i32* %36)
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = icmp eq %struct.TYPE_26__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %41, i64* %3, align 8
  br label %168

42:                                               ; preds = %28
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %49 = call i64 @GetHubAdminOption(%struct.TYPE_26__* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = call i32 @ReleaseHub(%struct.TYPE_26__* %52)
  %54 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %54, i64* %3, align 8
  br label %168

55:                                               ; preds = %47, %42
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LockList(i32 %58)
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %104, %55
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @LIST_NUM(i32 %64)
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %60
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call %struct.TYPE_25__* @LIST_DATA(i32 %70, i64 %71)
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %12, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @Lock(i32 %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @UniStrCmpi(i32 %81, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %67
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %11, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @AddRef(i32 %93)
  br label %95

95:                                               ; preds = %89, %67
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @Unlock(i32 %98)
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %101 = icmp ne %struct.TYPE_25__* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %10, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %60

107:                                              ; preds = %102, %60
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @UnlockList(i32 %110)
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %113 = icmp ne %struct.TYPE_25__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %116 = call i32 @ReleaseLink(%struct.TYPE_25__* %115)
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %118 = call i32 @ReleaseHub(%struct.TYPE_26__* %117)
  %119 = load i64, i64* @ERR_LINK_ALREADY_EXISTS, align 8
  store i64 %119, i64* %3, align 8
  br label %168

120:                                              ; preds = %107
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ALog(%struct.TYPE_27__* %121, %struct.TYPE_26__* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = call %struct.TYPE_25__* @NewLink(i32* %129, %struct.TYPE_26__* %130, %struct.TYPE_21__* %133, i32 %136, i32* %138)
  store %struct.TYPE_25__* %139, %struct.TYPE_25__** %11, align 8
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %141 = icmp eq %struct.TYPE_25__* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %120
  %143 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %143, i64* %9, align 8
  br label %164

144:                                              ; preds = %120
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @CloneX(i32 %152)
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %159 = call i32 @SetLinkOffline(%struct.TYPE_25__* %158)
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %161 = call i32 @ReleaseLink(%struct.TYPE_25__* %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %163 = call i32 @IncrementServerConfigRevision(%struct.TYPE_23__* %162)
  br label %164

164:                                              ; preds = %144, %142
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %166 = call i32 @ReleaseHub(%struct.TYPE_26__* %165)
  %167 = load i64, i64* %9, align 8
  store i64 %167, i64* %3, align 8
  br label %168

168:                                              ; preds = %164, %114, %51, %40, %26
  %169 = load i64, i64* %3, align 8
  ret i64 %169
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_26__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_26__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_25__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @UniStrCmpi(i32, i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseLink(%struct.TYPE_25__*) #1

declare dso_local i32 @ALog(%struct.TYPE_27__*, %struct.TYPE_26__*, i8*, i32) #1

declare dso_local %struct.TYPE_25__* @NewLink(i32*, %struct.TYPE_26__*, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @CloneX(i32) #1

declare dso_local i32 @SetLinkOffline(%struct.TYPE_25__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
