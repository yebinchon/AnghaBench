; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumDHCP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumDHCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_SNAT_NOT_RUNNING = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumDHCP(%struct.TYPE_26__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %6, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = trunc i64 %25 to i32
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @StrCpy(i8* %27, i32 %28, i32 %31)
  %33 = load i32, i32* @CHECK_RIGHT, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @LockHubList(i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_24__* @GetHub(i32* %36, i32 %39)
  store %struct.TYPE_24__* %40, %struct.TYPE_24__** %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @UnlockHubList(i32* %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = icmp eq %struct.TYPE_24__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %46, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %148

47:                                               ; preds = %2
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = call i32 @GetServerCapsBool(%struct.TYPE_22__* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %47
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = call i32 @ReleaseHub(%struct.TYPE_24__* %58)
  %60 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %60, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %148

61:                                               ; preds = %53
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @Lock(i32 %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = icmp eq %struct.TYPE_21__* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* @ERR_SNAT_NOT_RUNNING, align 8
  store i64 %71, i64* %9, align 8
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = call i32 @NtEnumDhcpList(i32 %77, %struct.TYPE_23__* %78)
  br label %80

80:                                               ; preds = %72, %70
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Unlock(i32 %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %143

90:                                               ; preds = %80
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @ERR_SNAT_NOT_RUNNING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @LockList(i32 %97)
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %134, %94
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @LIST_NUM(i32 %103)
  %105 = icmp slt i64 %100, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %99
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call %struct.TYPE_25__* @LIST_DATA(i32 %109, i64 %110)
  store %struct.TYPE_25__* %111, %struct.TYPE_25__** %14, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %106
  %117 = call i32 @Zero(%struct.TYPE_23__* %15, i32 8)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %120 = call i32 @SiCallEnumDhcp(%struct.TYPE_22__* %118, %struct.TYPE_25__* %119, i8* %27, %struct.TYPE_23__* %15)
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %122, 1
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = call i32 @FreeRpcEnumDhcp(%struct.TYPE_23__* %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = call i32 @Copy(%struct.TYPE_23__* %127, %struct.TYPE_23__* %15, i32 8)
  %129 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %129, i64* %9, align 8
  br label %137

130:                                              ; preds = %116
  %131 = call i32 @FreeRpcEnumDhcp(%struct.TYPE_23__* %15)
  br label %132

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132, %106
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %12, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %12, align 8
  br label %99

137:                                              ; preds = %124, %99
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @UnlockList(i32 %140)
  br label %142

142:                                              ; preds = %137, %90
  br label %143

143:                                              ; preds = %142, %80
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %145 = call i32 @ReleaseHub(%struct.TYPE_24__* %144)
  %146 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  store i64 %147, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %57, %45
  %149 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i64, i64* %3, align 8
  ret i64 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_24__* @GetHub(i32*, i32) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_22__*, i8*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_24__*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @NtEnumDhcpList(i32, %struct.TYPE_23__*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_25__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Zero(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @SiCallEnumDhcp(%struct.TYPE_22__*, %struct.TYPE_25__*, i8*, %struct.TYPE_23__*) #2

declare dso_local i32 @FreeRpcEnumDhcp(%struct.TYPE_23__*) #2

declare dso_local i32 @Copy(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #2

declare dso_local i32 @UnlockList(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
