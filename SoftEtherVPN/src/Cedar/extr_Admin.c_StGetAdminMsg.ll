; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetAdminMsg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetAdminMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_29__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"WINVER_ERROR_FORMAT\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"WINVER_ERROR_PC_LOCAL\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WINVER_ERROR_VPNSERVER\00", align 1
@SUPPORTED_WINDOWS_LIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"WINVER_ERROR_PC_REMOTE\00", align 1
@GSF_SHOW_OSS_MSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"OSS_MSG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetAdminMsg(%struct.TYPE_34__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_32__, align 4
  %9 = alloca %struct.TYPE_32__, align 4
  %10 = alloca [3800 x %struct.TYPE_29__], align 16
  %11 = alloca [3800 x %struct.TYPE_29__], align 16
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_30__, align 4
  %15 = alloca %struct.TYPE_30__, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %5, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  store %struct.TYPE_33__* %21, %struct.TYPE_33__** %6, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = call i32 @FreeRpcMsg(%struct.TYPE_29__* %23)
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %26 = call i32 @Zero(%struct.TYPE_29__* %25, i32 8)
  %27 = call i32 @GetWinVer(%struct.TYPE_32__* %8)
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = call i32 @Copy(%struct.TYPE_32__* %9, i32* %29, i32 4)
  %31 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %10, i64 0, i64 0
  %32 = call i32 @Zero(%struct.TYPE_29__* %31, i32 30400)
  %33 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %11, i64 0, i64 0
  %34 = call i32 @Zero(%struct.TYPE_29__* %33, i32 30400)
  %35 = call i32 @IsSupportedWinVer(%struct.TYPE_32__* %9)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = call i32 @LocalTime(%struct.TYPE_30__* %14)
  %39 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %10, i64 0, i64 0
  %40 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @SUPPORTED_WINDOWS_LIST, align 4
  %46 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %49 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @UniFormat(%struct.TYPE_29__* %39, i32 30400, %struct.TYPE_29__* %40, %struct.TYPE_29__* %41, i32 %43, %struct.TYPE_29__* %44, i32 %45, %struct.TYPE_29__* %46, %struct.TYPE_29__* %47, %struct.TYPE_29__* %48, %struct.TYPE_29__* %49, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %37, %2
  %56 = call i32 @IsSupportedWinVer(%struct.TYPE_32__* %8)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = call i32 @LocalTime(%struct.TYPE_30__* %15)
  %60 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %11, i64 0, i64 0
  %61 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %62 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @SUPPORTED_WINDOWS_LIST, align 4
  %67 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %68 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %69 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %70 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @UniFormat(%struct.TYPE_29__* %60, i32 30400, %struct.TYPE_29__* %61, %struct.TYPE_29__* %62, i32 %64, %struct.TYPE_29__* %65, i32 %66, %struct.TYPE_29__* %67, %struct.TYPE_29__* %68, %struct.TYPE_29__* %69, %struct.TYPE_29__* %70, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %58, %55
  %77 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %10, i64 0, i64 0
  %78 = call i64 @UniStrSize(%struct.TYPE_29__* %77)
  %79 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %11, i64 0, i64 0
  %80 = call i64 @UniStrSize(%struct.TYPE_29__* %79)
  %81 = add nsw i64 %78, %80
  %82 = add nsw i64 %81, 10000
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call %struct.TYPE_29__* @ZeroMalloc(i64 %83)
  store %struct.TYPE_29__* %84, %struct.TYPE_29__** %13, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load i32, i32* @GSF_SHOW_OSS_MSG, align 4
  %91 = call i64 @GetGlobalServerFlag(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call %struct.TYPE_29__* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @UniStrCat(%struct.TYPE_29__* %94, i64 %95, %struct.TYPE_29__* %96)
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %10, i64 0, i64 0
  %103 = call i32 @UniStrCat(%struct.TYPE_29__* %100, i64 %101, %struct.TYPE_29__* %102)
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds [3800 x %struct.TYPE_29__], [3800 x %struct.TYPE_29__]* %11, i64 0, i64 0
  %107 = call i32 @UniStrCat(%struct.TYPE_29__* %104, i64 %105, %struct.TYPE_29__* %106)
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  store %struct.TYPE_29__* %108, %struct.TYPE_29__** %110, align 8
  %111 = load i64, i64* @ERR_NO_ERROR, align 8
  ret i64 %111
}

declare dso_local i32 @FreeRpcMsg(%struct.TYPE_29__*) #1

declare dso_local i32 @Zero(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @GetWinVer(%struct.TYPE_32__*) #1

declare dso_local i32 @Copy(%struct.TYPE_32__*, i32*, i32) #1

declare dso_local i32 @IsSupportedWinVer(%struct.TYPE_32__*) #1

declare dso_local i32 @LocalTime(%struct.TYPE_30__*) #1

declare dso_local i32 @UniFormat(%struct.TYPE_29__*, i32, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, %struct.TYPE_29__*, i32, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @_UU(i8*) #1

declare dso_local i64 @UniStrSize(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ZeroMalloc(i64) #1

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @UniStrCat(%struct.TYPE_29__*, i64, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
