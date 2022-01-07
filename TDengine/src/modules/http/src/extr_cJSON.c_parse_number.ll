; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_parse_number.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double, i32 }
%struct.TYPE_7__ = type { i64, i32* }

@LLONG_MAX = common dso_local global double 0.000000e+00, align 8
@LLONG_MIN = common dso_local global double 0.000000e+00, align 8
@cJSON_Number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @parse_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_number(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i8* null, i8** %7, align 8
  %11 = call zeroext i8 (...) @get_decimal_point()
  store i8 %11, i8* %9, align 1
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %102

20:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 63
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @can_access_at_index(%struct.TYPE_7__* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %55

31:                                               ; preds = %29
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = call i32* @buffer_at_offset(%struct.TYPE_7__* %32)
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %50 [
    i32 48, label %37
    i32 49, label %37
    i32 50, label %37
    i32 51, label %37
    i32 52, label %37
    i32 53, label %37
    i32 54, label %37
    i32 55, label %37
    i32 56, label %37
    i32 57, label %37
    i32 43, label %37
    i32 45, label %37
    i32 101, label %37
    i32 69, label %37
    i32 46, label %46
  ]

37:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32* @buffer_at_offset(%struct.TYPE_7__* %38)
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %44
  store i8 %43, i8* %45, align 1
  br label %51

46:                                               ; preds = %31
  %47 = load i8, i8* %9, align 1
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %48
  store i8 %47, i8* %49, align 1
  br label %51

50:                                               ; preds = %31
  br label %56

51:                                               ; preds = %46, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %21

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %60 = call double @strtod(i8* %59, i8** %7)
  store double %60, double* %6, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %102

65:                                               ; preds = %56
  %66 = load double, double* %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store double %66, double* %68, align 8
  %69 = load double, double* %6, align 8
  %70 = load double, double* @LLONG_MAX, align 8
  %71 = fcmp oge double %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load double, double* @LLONG_MAX, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store double %73, double* %75, align 8
  br label %89

76:                                               ; preds = %65
  %77 = load double, double* %6, align 8
  %78 = load double, double* @LLONG_MIN, align 8
  %79 = fcmp ole double %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load double, double* @LLONG_MIN, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store double %81, double* %83, align 8
  br label %88

84:                                               ; preds = %76
  %85 = load double, double* %6, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store double %85, double* %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i32, i32* @cJSON_Number, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %89, %64, %19
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local zeroext i8 @get_decimal_point(...) #1

declare dso_local i64 @can_access_at_index(%struct.TYPE_7__*, i64) #1

declare dso_local i32* @buffer_at_offset(%struct.TYPE_7__*) #1

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
