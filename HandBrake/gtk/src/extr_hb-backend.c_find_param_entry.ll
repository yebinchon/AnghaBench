; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_find_param_entry.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_find_param_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }

@GHB_STRING = common dso_local global i64 0, align 8
@GHB_INT = common dso_local global i64 0, align 8
@GHB_DOUBLE = common dso_local global i64 0, align 8
@GHB_BOOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @find_param_entry(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %98

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @ghb_value_type(i32* %13)
  %15 = load i64, i64* @GHB_STRING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @ghb_value_get_string(i32* %18)
  store i32* %19, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %50, %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @strcmp(i32* %32, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @strcmp(i32* %41, i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36, %27
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %3, align 8
  br label %98

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %20

53:                                               ; preds = %20
  br label %97

54:                                               ; preds = %12
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @ghb_value_type(i32* %55)
  %57 = load i64, i64* @GHB_INT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @ghb_value_type(i32* %60)
  %62 = load i64, i64* @GHB_DOUBLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @ghb_value_type(i32* %65)
  %67 = load i64, i64* @GHB_BOOL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %64, %59, %54
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @ghb_value_get_int(i32* %70)
  store i64 %71, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %92, %69
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %3, align 8
  br label %98

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %72

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %64
  br label %97

97:                                               ; preds = %96, %53
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %98

98:                                               ; preds = %97, %87, %45, %11
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %99
}

declare dso_local i64 @ghb_value_type(i32*) #1

declare dso_local i32* @ghb_value_get_string(i32*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i64 @ghb_value_get_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
