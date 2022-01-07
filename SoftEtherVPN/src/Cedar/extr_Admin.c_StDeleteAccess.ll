; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteAccess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64 }

@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"no_change_access_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@MAX_ACCESSLISTS = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"LA_DELETE_ACCESS\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StDeleteAccess(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %24, i64* %3, align 8
  br label %130

25:                                               ; preds = %2
  %26 = load i32, i32* @CHECK_RIGHT, align 4
  %27 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @LockHubList(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_20__* @GetHub(i32* %30, i32 %33)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @UnlockHubList(i32* %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = icmp eq %struct.TYPE_20__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %40, i64* %3, align 8
  br label %130

41:                                               ; preds = %25
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = call i64 @GetHubAdminOption(%struct.TYPE_20__* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = call i32 @ReleaseHub(%struct.TYPE_20__* %51)
  %53 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %53, i64* %3, align 8
  br label %130

54:                                               ; preds = %46, %41
  store i32 0, i32* %10, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @LockList(i32 %57)
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %107, %54
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @LIST_NUM(i32 %63)
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %59
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call %struct.TYPE_22__* @LIST_DATA(i32 %69, i64 %70)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %11, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MAX_ACCESSLISTS, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %98, label %85

85:                                               ; preds = %77, %66
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MAX_ACCESSLISTS, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %93 = call i64 @HashPtrToUINT(%struct.TYPE_22__* %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %91, %77
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %100 = call i32 @Free(%struct.TYPE_22__* %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %105 = call i32 @Delete(i32 %103, %struct.TYPE_22__* %104)
  store i32 1, i32* %10, align 4
  br label %110

106:                                              ; preds = %91, %85
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %9, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %59

110:                                              ; preds = %98, %59
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @UnlockList(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = call i32 @ReleaseHub(%struct.TYPE_20__* %118)
  %120 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %120, i64* %3, align 8
  br label %130

121:                                              ; preds = %110
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %124 = call i32 @ALog(%struct.TYPE_21__* %122, %struct.TYPE_20__* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = call i32 @IncrementServerConfigRevision(%struct.TYPE_18__* %125)
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %128 = call i32 @ReleaseHub(%struct.TYPE_20__* %127)
  %129 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %121, %117, %50, %39, %23
  %131 = load i64, i64* %3, align 8
  ret i64 %131
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_20__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_20__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @HashPtrToUINT(%struct.TYPE_22__*) #1

declare dso_local i32 @Free(%struct.TYPE_22__*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ALog(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
