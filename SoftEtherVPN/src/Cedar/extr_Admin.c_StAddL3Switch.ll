; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddL3Switch.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddL3Switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@ERR_LAYER3_SW_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i_max_l3_sw\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LA_ADD_L3_SW\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StAddL3Switch(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IsEmptyStr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IsSafeStr(i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %25
  %34 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @L3GetSw(%struct.TYPE_14__* %35, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ReleaseL3Sw(i32* %43)
  %45 = load i32, i32* @ERR_LAYER3_SW_EXISTS, align 4
  store i32 %45, i32* %8, align 4
  br label %89

46:                                               ; preds = %33
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LockList(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @LIST_NUM(i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = call i64 @GetServerCapsInt(%struct.TYPE_12__* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %57 = icmp sge i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32* null, i32** %9, align 8
  br label %76

59:                                               ; preds = %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @L3AddSw(%struct.TYPE_14__* %60, i32 %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ALog(%struct.TYPE_15__* %68, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = call i32 @IncrementServerConfigRevision(%struct.TYPE_12__* %73)
  br label %75

75:                                               ; preds = %67, %59
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @UnlockList(i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %84, i32* %8, align 4
  br label %88

85:                                               ; preds = %76
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @ReleaseL3Sw(i32* %86)
  br label %88

88:                                               ; preds = %85, %83
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %31, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsSafeStr(i32) #1

declare dso_local i32* @L3GetSw(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ReleaseL3Sw(i32*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @GetServerCapsInt(%struct.TYPE_12__*, i8*) #1

declare dso_local i32* @L3AddSw(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_15__*, i32*, i8*, i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_12__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
