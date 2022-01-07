; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_find_opt_entry.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_find_opt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@GHB_STRING = common dso_local global i64 0, align 8
@GHB_INT = common dso_local global i64 0, align 8
@GHB_DOUBLE = common dso_local global i64 0, align 8
@GHB_BOOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_opt_entry(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %101

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @ghb_value_type(i32* %13)
  %15 = load i64, i64* @GHB_STRING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @ghb_value_get_string(i32* %18)
  store i32* %19, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %50, %17
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @strcmp(i32 %33, i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @strcmp(i32 %44, i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37, %26
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %20

53:                                               ; preds = %48, %20
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %3, align 8
  br label %101

55:                                               ; preds = %12
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @ghb_value_type(i32* %56)
  %58 = load i64, i64* @GHB_INT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @ghb_value_type(i32* %61)
  %63 = load i64, i64* @GHB_DOUBLE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @ghb_value_type(i32* %66)
  %68 = load i64, i64* @GHB_BOOL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %65, %60, %55
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @ghb_value_get_int(i32* %71)
  store i64 %72, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %73

73:                                               ; preds = %91, %70
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %94

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %73

94:                                               ; preds = %89, %73
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %3, align 8
  br label %101

96:                                               ; preds = %65
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %97, %94, %53, %11
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

declare dso_local i64 @ghb_value_type(i32*) #1

declare dso_local i32* @ghb_value_get_string(i32*) #1

declare dso_local i64 @strcmp(i32, i32*) #1

declare dso_local i64 @ghb_value_get_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
