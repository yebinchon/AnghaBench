; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateGroup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StCreateGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no_change_groups\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@ERR_GROUP_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"i_max_users_per_hub\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"max_groups\00", align 1
@ERR_TOO_MANY_GROUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"LA_CREATE_GROUP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StCreateGroup(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  %17 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IsEmptyStr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IsSafeStr(i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %2
  %30 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %30, i32* %3, align 4
  br label %151

31:                                               ; preds = %23
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %38, i32* %3, align 4
  br label %151

39:                                               ; preds = %31
  %40 = load i32, i32* @CHECK_RIGHT, align 4
  %41 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %48, i32* %3, align 4
  br label %151

49:                                               ; preds = %39
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @LockHubList(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_22__* @GetHub(i32* %52, i32 %55)
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %8, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @UnlockHubList(i32* %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %60 = icmp eq %struct.TYPE_22__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %62, i32* %3, align 4
  br label %151

63:                                               ; preds = %49
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = call i64 @GetHubAdminOption(%struct.TYPE_22__* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = call i32 @ReleaseHub(%struct.TYPE_22__* %73)
  %75 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %75, i32* %3, align 4
  br label %151

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = call i32 @AcLock(%struct.TYPE_22__* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @AcIsGroup(%struct.TYPE_22__* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @ERR_GROUP_ALREADY_EXISTS, align 4
  store i32 %86, i32* %9, align 4
  br label %143

87:                                               ; preds = %76
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32* @NewGroup(i32 %90, i32 %93, i32 %96)
  store i32* %97, i32** %10, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SetGroupPolicy(i32* %98, i32 %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @LIST_NUM(i32 %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = call i64 @GetServerCapsInt(%struct.TYPE_20__* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %113 = icmp sge i64 %108, %112
  br i1 %113, label %128, label %114

114:                                              ; preds = %87
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = call i64 @GetHubAdminOption(%struct.TYPE_22__* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @LIST_NUM(i32 %123)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = call i64 @GetHubAdminOption(%struct.TYPE_22__* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %127 = icmp sge i64 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118, %87
  %129 = load i32, i32* @ERR_TOO_MANY_GROUP, align 4
  store i32 %129, i32* %9, align 4
  br label %134

130:                                              ; preds = %118, %114
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @AcAddGroup(%struct.TYPE_22__* %131, i32* %132)
  br label %134

134:                                              ; preds = %130, %128
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @ReleaseGroup(i32* %135)
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ALog(%struct.TYPE_23__* %137, %struct.TYPE_22__* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %134, %85
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = call i32 @AcUnlock(%struct.TYPE_22__* %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = call i32 @ReleaseHub(%struct.TYPE_22__* %146)
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = call i32 @IncrementServerConfigRevision(%struct.TYPE_20__* %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %143, %72, %61, %47, %37, %29
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsSafeStr(i32) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_22__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_22__*) #1

declare dso_local i32 @AcLock(%struct.TYPE_22__*) #1

declare dso_local i64 @AcIsGroup(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @NewGroup(i32, i32, i32) #1

declare dso_local i32 @SetGroupPolicy(i32*, i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @GetServerCapsInt(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @AcAddGroup(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ReleaseGroup(i32*) #1

declare dso_local i32 @ALog(%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @AcUnlock(%struct.TYPE_22__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
