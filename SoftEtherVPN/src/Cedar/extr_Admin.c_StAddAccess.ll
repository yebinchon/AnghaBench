; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddAccess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }

@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no_delay_jitter_packet_loss\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no_access_list_include_file\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no_change_access_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"i_max_access_lists\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"max_accesslists\00", align 1
@ERR_TOO_MANY_ACCESS_LIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"LA_ADD_ACCESS\00", align 1
@ACCESS_LIST_INCLUDED_PREFIX = common dso_local global i32 0, align 4
@ACCESS_LIST_EXCLUDED_PREFIX = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StAddAccess(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %24, i32* %3, align 4
  br label %163

25:                                               ; preds = %2
  %26 = load i32, i32* @CHECK_RIGHT, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @LockHubList(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_20__* @GetHub(i32* %29, i32 %32)
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @UnlockHubList(i32* %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %37 = icmp eq %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %39, i32* %3, align 4
  br label %163

40:                                               ; preds = %25
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = call i32 @GetHubAdminOption(%struct.TYPE_20__* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = call i32 @GetHubAdminOption(%struct.TYPE_20__* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = call i32 @GetHubAdminOption(%struct.TYPE_20__* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = call i32 @ReleaseHub(%struct.TYPE_20__* %54)
  %56 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %56, i32* %3, align 4
  br label %163

57:                                               ; preds = %49, %40
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @LIST_NUM(i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = call i32 @GetServerCapsInt(%struct.TYPE_18__* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp sge i32 %61, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %57
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = call i32 @GetHubAdminOption(%struct.TYPE_20__* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @LIST_NUM(i32 %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = call i32 @GetHubAdminOption(%struct.TYPE_20__* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp sge i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71, %57
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %81 = call i32 @ReleaseHub(%struct.TYPE_20__* %80)
  %82 = load i32, i32* @ERR_TOO_MANY_ACCESS_LIST, align 4
  store i32 %82, i32* %3, align 4
  br label %163

83:                                               ; preds = %71, %67
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %86 = call i32 @ALog(%struct.TYPE_21__* %84, %struct.TYPE_20__* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %89, %83
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %99
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %108 = call i64 @StartWith(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %102
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %116 = call i64 @StartWith(i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110, %102
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ClearStr(i32 %122, i32 4)
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %130 = call i64 @StartWith(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %138 = call i64 @StartWith(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %132, %124
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ClearStr(i32 %144, i32 4)
  br label %146

146:                                              ; preds = %140, %132
  br label %147

147:                                              ; preds = %146, %99
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = call i32 @AddAccessList(%struct.TYPE_20__* %148, %struct.TYPE_17__* %150)
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %157 = call i32 @SiHubUpdateProc(%struct.TYPE_20__* %156)
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = call i32 @ReleaseHub(%struct.TYPE_20__* %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = call i32 @IncrementServerConfigRevision(%struct.TYPE_18__* %160)
  %162 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %147, %79, %53, %38, %23
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_20__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @GetHubAdminOption(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_20__*) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local i32 @GetServerCapsInt(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @ALog(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i64 @StartWith(i32, i32) #1

declare dso_local i32 @ClearStr(i32, i32) #1

declare dso_local i32 @AddAccessList(%struct.TYPE_20__*, %struct.TYPE_17__*) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_20__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
