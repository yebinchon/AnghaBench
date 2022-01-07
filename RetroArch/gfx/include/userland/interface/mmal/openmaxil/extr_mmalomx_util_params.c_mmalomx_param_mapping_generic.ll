; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params.c_mmalomx_param_mapping_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params.c_mmalomx_param_mapping_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"mmalomx_param_mapping_generic: mismatch between mmal and omx parameters for (%u)\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMALOMX_PARAM_MAPPING_TO_MMAL = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_param_mapping_generic(i64 %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = bitcast %struct.TYPE_6__* %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  store i32* %20, i32** %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32* %23, i32** %14, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @MMAL_PARAM_UNUSED(i32* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 -4
  store i32* %38, i32** %14, align 8
  br label %39

39:                                               ; preds = %36, %5
  %40 = load i64, i64* %10, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = icmp ne i32* %46, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %58, i32* %6, align 4
  br label %75

59:                                               ; preds = %39
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @memcpy(i32* %64, i32* %65, i32 %66)
  br label %73

68:                                               ; preds = %59
  %69 = load i32*, i32** %14, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @memcpy(i32* %69, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %52
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i32*) #1

declare dso_local i32 @VCOS_ALERT(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
