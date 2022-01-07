; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSub.c_taos_consume.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSub.c_taos_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8*, i32, i32*, i64, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [51 x i8] c"select * from %s where _c0 > %lld order by _c0 asc\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to select, reason:%s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get result, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @taos_consume(i32* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64* null, i64** %2, align 8
  br label %111

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = icmp ne %struct.TYPE_2__* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i64* null, i64** %2, align 8
  br label %111

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %110
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i64* @taos_fetch_row(i32* %30)
  store i64* %31, i64** %5, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load i64*, i64** %5, align 8
  store i64* %42, i64** %2, align 8
  br label %111

43:                                               ; preds = %27
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @taos_free_result(i32* %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = call i8* (...) @taosGetTimestampMs()
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %7, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @taosMsleep(i32 %66)
  br label %68

68:                                               ; preds = %64, %22
  %69 = call i8* (...) @taosGetTimestampMs()
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @sprintf(i8* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %76, i64 %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %85 = call i64 @taos_query(i32 %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @taos_errstr(i32 %90)
  %92 = call i32 @tscTrace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  store i64* null, i64** %2, align 8
  br label %111

93:                                               ; preds = %68
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @taos_use_result(i32 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @taos_errstr(i32 %107)
  %109 = call i32 @tscTrace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  store i64* null, i64** %2, align 8
  br label %111

110:                                              ; preds = %93
  br label %22

111:                                              ; preds = %104, %87, %34, %20, %13
  %112 = load i64*, i64** %2, align 8
  ret i64* %112
}

declare dso_local i64* @taos_fetch_row(i32*) #1

declare dso_local i32 @taos_free_result(i32*) #1

declare dso_local i8* @taosGetTimestampMs(...) #1

declare dso_local i32 @taosMsleep(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local i64 @taos_query(i32, i8*) #1

declare dso_local i32 @tscTrace(i8*, i32) #1

declare dso_local i32 @taos_errstr(i32) #1

declare dso_local i32* @taos_use_result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
