; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_preset_import.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_preset_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@hb_preset_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @preset_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preset_import(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @hb_dict_get(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @hb_value_get_bool(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %97, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @cmpVersion(i32 %15, i32 %16, i32 %17, i32 0, i32 0, i32 0)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @import_0_0_0(i32* %21)
  store i32 1, i32* %9, align 4
  br label %93

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @cmpVersion(i32 %24, i32 %25, i32 %26, i32 10, i32 0, i32 0)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @import_10_0_0(i32* %30)
  store i32 1, i32* %9, align 4
  br label %92

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @cmpVersion(i32 %33, i32 %34, i32 %35, i32 11, i32 0, i32 0)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @import_11_0_0(i32* %39)
  store i32 1, i32* %9, align 4
  br label %91

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @cmpVersion(i32 %42, i32 %43, i32 %44, i32 11, i32 1, i32 0)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @import_11_1_0(i32* %48)
  store i32 1, i32* %9, align 4
  br label %90

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @cmpVersion(i32 %51, i32 %52, i32 %53, i32 12, i32 0, i32 0)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @import_12_0_0(i32* %57)
  store i32 1, i32* %9, align 4
  br label %89

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @cmpVersion(i32 %60, i32 %61, i32 %62, i32 20, i32 0, i32 0)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @import_20_0_0(i32* %66)
  store i32 1, i32* %9, align 4
  br label %88

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @cmpVersion(i32 %69, i32 %70, i32 %71, i32 25, i32 0, i32 0)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @import_25_0_0(i32* %75)
  store i32 1, i32* %9, align 4
  br label %87

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @cmpVersion(i32 %78, i32 %79, i32 %80, i32 35, i32 0, i32 0)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @import_35_0_0(i32* %84)
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %56
  br label %90

90:                                               ; preds = %89, %47
  br label %91

91:                                               ; preds = %90, %38
  br label %92

92:                                               ; preds = %91, %29
  br label %93

93:                                               ; preds = %92, %20
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @hb_preset_template, align 4
  %96 = call i32 @preset_clean(i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %4
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @hb_value_get_bool(i32) #1

declare dso_local i32 @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @cmpVersion(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @import_0_0_0(i32*) #1

declare dso_local i32 @import_10_0_0(i32*) #1

declare dso_local i32 @import_11_0_0(i32*) #1

declare dso_local i32 @import_11_1_0(i32*) #1

declare dso_local i32 @import_12_0_0(i32*) #1

declare dso_local i32 @import_20_0_0(i32*) #1

declare dso_local i32 @import_25_0_0(i32*) #1

declare dso_local i32 @import_35_0_0(i32*) #1

declare dso_local i32 @preset_clean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
