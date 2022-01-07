; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSub.c_taos_subscribe.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSub.c_taos_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i64, i32, i32, i32, i32*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to open DB:%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"select * from %s where _c0 > now+1000d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to select, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @taos_subscribe(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = call i64 @malloc(i32 56)
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %16, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %138

24:                                               ; preds = %7
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %26 = call i32 @memset(%struct.TYPE_6__* %25, i32 0, i32 56)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @strcpy(i8* %32, i8* %33)
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %24
  %46 = call i64 (...) @taosGetTimestampMs()
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %24
  %50 = call i32 (...) @taos_init()
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32* @taos_connect(i8* %51, i8* %52, i8* %53, i32* null, i32 0)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %63 = call i32 @tfree(%struct.TYPE_6__* %62)
  br label %136

64:                                               ; preds = %49
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %72 = call i32 @taos_query(i32* %70, i8* %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @tscError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @taos_close(i32* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %83 = call i32 @tfree(%struct.TYPE_6__* %82)
  br label %135

84:                                               ; preds = %64
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %94 = call i32 @taos_query(i32* %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %84
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @taos_errstr(i32* %99)
  %101 = call i32 @tscTrace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @taos_close(i32* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %107 = call i32 @tfree(%struct.TYPE_6__* %106)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %138

108:                                              ; preds = %84
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @taos_use_result(i32* %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @taos_num_fields(i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @taos_fetch_fields(i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = mul i64 4, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memcpy(i32 %123, i32 %127, i32 %133)
  br label %135

135:                                              ; preds = %108, %75
  br label %136

136:                                              ; preds = %135, %61
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %137, %struct.TYPE_6__** %8, align 8
  br label %138

138:                                              ; preds = %136, %96, %23
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  ret %struct.TYPE_6__* %139
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @taos_init(...) #1

declare dso_local i32* @taos_connect(i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_6__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @taos_query(i32*, i8*) #1

declare dso_local i32 @tscError(i8*, i8*) #1

declare dso_local i32 @taos_close(i32*) #1

declare dso_local i32 @tscTrace(i8*, i32) #1

declare dso_local i32 @taos_errstr(i32*) #1

declare dso_local i32 @taos_use_result(i32*) #1

declare dso_local i32 @taos_num_fields(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @taos_fetch_fields(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
