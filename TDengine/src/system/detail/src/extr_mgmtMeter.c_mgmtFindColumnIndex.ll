; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtFindColumnIndex.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtFindColumnIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TSDB_METER_OTABLE = common dso_local global i64 0, align 8
@TSDB_METER_METRIC = common dso_local global i64 0, align 8
@TSDB_METER_MTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"MTable not belongs to any metric, meter: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mgmtFindColumnIndex(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSDB_METER_OTABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TSDB_METER_METRIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %44, %21
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcasecmp(i32 %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %3, align 8
  br label %95

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %26

47:                                               ; preds = %26
  br label %94

48:                                               ; preds = %15
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TSDB_METER_MTABLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_5__* @mgmtGetMeter(i32 %57)
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = icmp eq %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i64 -1, i64* %3, align 8
  br label %95

66:                                               ; preds = %54
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %7, align 8
  store i64 0, i64* %9, align 8
  br label %71

71:                                               ; preds = %89, %66
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @strcasecmp(i32 %82, i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %3, align 8
  br label %95

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %71

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %48
  br label %94

94:                                               ; preds = %93, %47
  store i64 -1, i64* %3, align 8
  br label %95

95:                                               ; preds = %94, %86, %61, %41
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @mgmtGetMeter(i32) #1

declare dso_local i32 @mError(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
