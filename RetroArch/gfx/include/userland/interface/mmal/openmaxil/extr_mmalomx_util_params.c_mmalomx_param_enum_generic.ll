; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params.c_mmalomx_param_enum_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params.c_mmalomx_param_enum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@MMALOMX_PARAM_MAPPING_TO_MMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"mmalomx_param_enum_generic: omx enum value %u not supported\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"mmalomx_param_enum_generic: mmal enum value %u not supported\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_param_enum_generic(i64 %0, %struct.TYPE_5__* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = bitcast i32* %16 to i64*
  store i64* %17, i64** %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = bitcast i32* %20 to i64*
  store i64* %21, i64** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @MMAL_PARAM_UNUSED(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i64*, i64** %13, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 -1
  store i64* %30, i64** %13, align 8
  br label %31

31:                                               ; preds = %28, %5
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br label %51

51:                                               ; preds = %42, %36
  %52 = phi i1 [ false, %36 ], [ %50, %42 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %36

57:                                               ; preds = %51
  br label %81

58:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %12, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %70, %72
  br label %74

74:                                               ; preds = %65, %59
  %75 = phi i1 [ false, %59 ], [ %73, %65 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %59

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i64*, i64** %13, align 8
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %101

96:                                               ; preds = %87
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %102, i32* %6, align 4
  br label %129

103:                                              ; preds = %81
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %12, align 8
  store i64 %115, i64* %116, align 8
  br label %127

117:                                              ; preds = %103
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %13, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %107
  %128 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %101
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i32*) #1

declare dso_local i32 @VCOS_ALERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
