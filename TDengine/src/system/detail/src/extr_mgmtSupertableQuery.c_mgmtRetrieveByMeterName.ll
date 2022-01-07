; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtRetrieveByMeterName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtRetrieveByMeterName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i8*, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"metric:%s error in metric query expression, invalid meter id:%s\00", align 1
@TSDB_METER_MTABLE = common dso_local global i64 0, align 8
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, %struct.TYPE_10__*)* @mgmtRetrieveByMeterName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmtRetrieveByMeterName(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 4, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_10__** @malloc(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store %struct.TYPE_10__** %16, %struct.TYPE_10__*** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strsep(i8** %5, i8* %21)
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %99, %3
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %102

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = call %struct.TYPE_10__* @mgmtGetMeter(i8* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @mWarn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35)
  br label %99

37:                                               ; preds = %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call %struct.TYPE_10__** @realloc(%struct.TYPE_10__** %50, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.TYPE_10__** %55, %struct.TYPE_10__*** %57, align 8
  br label %58

58:                                               ; preds = %43, %37
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TSDB_METER_MTABLE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %99

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call %struct.TYPE_10__* @mgmtGetMeter(i8* %68)
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %11, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %77 = call i64 @strncasecmp(i32 %72, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %65
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79, %65
  br label %99

88:                                               ; preds = %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %92, i64 %97
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %98, align 8
  br label %99

99:                                               ; preds = %88, %87, %64, %31
  %100 = load i8*, i8** %7, align 8
  %101 = call i8* @strsep(i8** %5, i8* %100)
  store i8* %101, i8** %8, align 8
  br label %23

102:                                              ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_10__** @malloc(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.TYPE_10__* @mgmtGetMeter(i8*) #1

declare dso_local i32 @mWarn(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_10__** @realloc(%struct.TYPE_10__**, i32) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
