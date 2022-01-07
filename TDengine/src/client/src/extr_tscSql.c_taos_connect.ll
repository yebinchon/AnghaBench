; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_connect.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@tsServerIpStr = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"try to create a connection to %s\00", align 1
@version = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"taos:%p, invalid client version:%s\00", align 1
@TSDB_CODE_INVALID_CLIENT_VERSION = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"taos:%p, invalid server version:%s\00", align 1
@.str.5 = private unnamed_addr constant [100 x i8] c"taos:%p, the %d-th number of server version:%s not matched with client version:%s, close connection\00", align 1
@tsPrivateIp = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taos_connect(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32], align 16
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25, %5
  %34 = load i8*, i8** @tsServerIpStr, align 8
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %33, %29, %22
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @tscTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @taos_connect_imp(i8* %38, i8* %39, i8* %40, i8* %41, i32 %42, i32* null, i32* null, i32* null)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %125

46:                                               ; preds = %35
  %47 = load i8*, i8** %12, align 8
  %48 = bitcast i8* %47 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %13, align 8
  store i64 3, i64* %14, align 8
  %49 = bitcast [64 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 64, i1 false)
  %50 = bitcast [64 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 64, i1 false)
  %51 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 16, i1 false)
  %52 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 16, i1 false)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %54 = load i32, i32* @version, align 4
  %55 = call i32 @strcpy(i8* %53, i32 %54)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @taos_get_server_info(i8* %57)
  %59 = call i32 @strcpy(i8* %56, i32 %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %62 = call i32 @taosGetVersionNumber(i8* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %46
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %67 = call i32 (i8*, i8*, ...) @tscError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load i8*, i8** @TSDB_CODE_INVALID_CLIENT_VERSION, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i8* %68, i8** %73, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @taos_close(i8* %74)
  store i8* null, i8** %6, align 8
  br label %127

76:                                               ; preds = %46
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %79 = call i32 @taosGetVersionNumber(i8* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %84 = call i32 (i8*, i8*, ...) @tscError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i8*, i8** @TSDB_CODE_INVALID_CLIENT_VERSION, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %85, i8** %90, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @taos_close(i8* %91)
  store i8* null, i8** %6, align 8
  br label %127

93:                                               ; preds = %76
  store i64 0, i64* %19, align 8
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %14, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %19, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %98
  %107 = load i8*, i8** %12, align 8
  %108 = load i64, i64* %19, align 8
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %110 = load i32, i32* @version, align 4
  %111 = call i32 (i8*, i8*, ...) @tscError(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0), i8* %107, i64 %108, i8* %109, i32 %110)
  %112 = load i8*, i8** @TSDB_CODE_INVALID_CLIENT_VERSION, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i8* %112, i8** %117, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @taos_close(i8* %118)
  store i8* null, i8** %6, align 8
  br label %127

120:                                              ; preds = %98
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %19, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %19, align 8
  br label %94

124:                                              ; preds = %94
  br label %125

125:                                              ; preds = %124, %35
  %126 = load i8*, i8** %12, align 8
  store i8* %126, i8** %6, align 8
  br label %127

127:                                              ; preds = %125, %106, %81, %64
  %128 = load i8*, i8** %6, align 8
  ret i8* %128
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @tscTrace(i8*, i8*) #1

declare dso_local i8* @taos_connect_imp(i8*, i8*, i8*, i8*, i32, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @taos_get_server_info(i8*) #1

declare dso_local i32 @taosGetVersionNumber(i8*, i32*) #1

declare dso_local i32 @tscError(i8*, i8*, ...) #1

declare dso_local i32 @taos_close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
