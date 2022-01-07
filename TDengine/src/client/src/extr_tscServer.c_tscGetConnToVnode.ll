; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscGetConnToVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscGetConnToVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, i64, i32, i32*, %struct.TYPE_20__*, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32, i8*, i8*, %struct.TYPE_21__*, i8*, i8*, i32, i64, i64, i64 }

@tscGetConnToVnode.vidIndex = internal global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%p pMeterMeta is NULL\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%p pVPeerDesc is NULL\00", align 1
@tscConnCache = common dso_local global i32 0, align 4
@tsServerIp = common dso_local global i64 0, align 8
@TSDB_SHELL_VNODE_BITS = common dso_local global i32 0, align 4
@pVnodeConn = common dso_local global i8* null, align 8
@tsServerIpStr = common dso_local global i8* null, align 8
@tsVnodeShellPort = common dso_local global i8* null, align 8
@tscNumOfThreads = common dso_local global i32 0, align 4
@TSDB_VNODES_SUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscGetConnToVnode(%struct.TYPE_21__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca [40 x i8], align 16
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = bitcast [40 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 5
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 7
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %8, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %23 = call %struct.TYPE_24__* @tscGetMeterMetaInfo(%struct.TYPE_22__* %22, i32 0)
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %9, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %25 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_24__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_18__* @tscGetVnodeSidList(i32 %30, i32 %33)
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %10, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %6, align 8
  br label %41

41:                                               ; preds = %37, %27
  br label %60

42:                                               ; preds = %2
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %11, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %47 = icmp eq %struct.TYPE_25__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = call i32 @tscError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %147

56:                                               ; preds = %42
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %6, align 8
  br label %60

60:                                               ; preds = %56, %41
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = icmp eq %struct.TYPE_19__* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = call i32 @tscError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__* %69)
  br label %71

71:                                               ; preds = %63, %60
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %147

80:                                               ; preds = %72
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i64*, i64** %4, align 8
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @tscConnCache, align 4
  %87 = load i64, i64* @tsServerIp, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @taosGetConnFromCache(i32 %86, i64 %87, i32 %91, i32 %94)
  store i8* %95, i8** %12, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %133

98:                                               ; preds = %80
  %99 = call i32 @memset(%struct.TYPE_23__* %13, i32 0, i32 80)
  %100 = load i32, i32* @tscGetConnToVnode.vidIndex, align 4
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 9
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 8
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 7
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 6
  store i32 %109, i32* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TSDB_SHELL_VNODE_BITS, align 4
  %116 = shl i32 %114, %115
  %117 = call i8* @htonl(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 5
  store i8* %117, i8** %118, align 8
  %119 = load i8*, i8** @pVnodeConn, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  store i8* %119, i8** %120, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %122, align 8
  %123 = load i8*, i8** @tsServerIpStr, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i8* %123, i8** %124, align 8
  %125 = load i8*, i8** @tsVnodeShellPort, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  store i8* %125, i8** %126, align 8
  %127 = load i64*, i64** %4, align 8
  %128 = call i8* @taosOpenRpcConn(%struct.TYPE_23__* %13, i64* %127)
  store i8* %128, i8** %12, align 8
  %129 = load i32, i32* @tscGetConnToVnode.vidIndex, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* @tscNumOfThreads, align 4
  %132 = srem i32 %130, %131
  store i32 %132, i32* @tscGetConnToVnode.vidIndex, align 4
  br label %133

133:                                              ; preds = %98, %80
  %134 = load i8*, i8** %12, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 5
  store i32* %135, i32** %137, align 8
  %138 = load i64, i64* @tsServerIp, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %48, %133, %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_24__* @tscGetMeterMetaInfo(%struct.TYPE_22__*, i32) #2

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_24__*) #2

declare dso_local %struct.TYPE_18__* @tscGetVnodeSidList(i32, i32) #2

declare dso_local i32 @tscError(i8*, %struct.TYPE_21__*) #2

declare dso_local i8* @taosGetConnFromCache(i32, i64, i32, i32) #2

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i8* @taosOpenRpcConn(%struct.TYPE_23__*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
