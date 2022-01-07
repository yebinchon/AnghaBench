; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDeleteVLan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDeleteVLan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"LC_DELETE_VLAN\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_VLAN_INSTALL_ERROR = common dso_local global i32 0, align 4
@ERR_VLAN_IS_USED = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@OSTYPE_MACOS_X = common dso_local global i64 0, align 8
@VLAN_ADAPTER_NAME_TAG = common dso_local global i32 0, align 4
@VLAN_ADAPTER_NAME_TAG_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtDeleteVLan(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %12 = icmp eq %struct.TYPE_25__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = icmp eq %struct.TYPE_24__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %112

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LockList(i32 %20)
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %47, %17
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @LIST_NUM(i32 %26)
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.TYPE_26__* @LIST_DATA(i32 %32, i64 %33)
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %8, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @StrCmpi(i32 %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @UnlockList(i32 %53)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @LockList(i32 %57)
  %59 = call i32 @Zero(%struct.TYPE_23__* %10, i32 4)
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @StrCpy(i32 %61, i32 4, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_23__* @Search(i32 %68, %struct.TYPE_23__* %10)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %9, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %71 = icmp eq %struct.TYPE_23__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %50
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @UnlockList(i32 %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  %79 = call i32 @CiSetError(%struct.TYPE_25__* %77, i32 %78)
  store i32 0, i32* %3, align 4
  br label %112

80:                                               ; preds = %50
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %85 = call i64 @Delete(i32 %83, %struct.TYPE_23__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = call i32 @Free(%struct.TYPE_23__* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CLog(%struct.TYPE_25__* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @UnixVLanDelete(i32 %98)
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @UnlockList(i32 %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %105 = call i32 @CiNormalizeAccountVLan(%struct.TYPE_25__* %104)
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %107 = call i32 @CiSaveConfigurationFile(%struct.TYPE_25__* %106)
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = call i32 @CiNotify(%struct.TYPE_25__* %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %111 = call i32 @CiSendGlobalPulse(%struct.TYPE_25__* %110)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %90, %72, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_26__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @Search(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @Delete(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @Free(%struct.TYPE_23__*) #1

declare dso_local i32 @CLog(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @UnixVLanDelete(i32) #1

declare dso_local i32 @CiNormalizeAccountVLan(%struct.TYPE_25__*) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_25__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_25__*) #1

declare dso_local i32 @CiSendGlobalPulse(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
