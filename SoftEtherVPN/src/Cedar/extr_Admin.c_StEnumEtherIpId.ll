; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumEtherIpId.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumEtherIpId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"b_support_ipsec\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StEnumEtherIpId(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %21 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = call i32 @GetServerCapsBool(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = call i32 @FreeRpcEnumEtherIpId(%struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = call i32 @Zero(%struct.TYPE_12__* %35, i32 16)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Lock(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @LIST_NUM(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32* @ZeroMalloc(i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %80, %32
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %11, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32* @LIST_DATA(i32 %74, i32 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @Copy(i32* %77, i32* %78, i32 4)
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @Unlock(i32 %88)
  %90 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %83, %30
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @FreeRpcEnumEtherIpId(%struct.TYPE_12__*) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local i32* @ZeroMalloc(i32) #1

declare dso_local i32* @LIST_DATA(i32, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
