; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwPlatformGetVideoModes.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwPlatformGetVideoModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@CDS_TEST = common dso_local global i32 0, align 4
@DISP_CHANGE_SUCCESSFUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @_glfwPlatformGetVideoModes(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %101, %84, %68, %29, %2
  %13 = call i32 @ZeroMemory(%struct.TYPE_19__* %10, i32 20)
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 20, i32* %14, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @EnumDisplaySettingsW(i32 %18, i32 %19, %struct.TYPE_19__* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %113

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 15
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %12

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %45 = call i32 @_glfwSplitBPP(i32 %41, i32* %42, i32* %43, i32* %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %60, %30
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %54
  %56 = call i64 @_glfwCompareVideoModes(%struct.TYPE_18__* %55, %struct.TYPE_18__* %9)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %12

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CDS_TEST, align 4
  %81 = call i64 @ChangeDisplaySettingsExW(i32 %79, %struct.TYPE_19__* %10, i32* null, i32 %80, i32* null)
  %82 = load i64, i64* @DISP_CHANGE_SUCCESSFUL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %12

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 128
  store i32 %93, i32* %6, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 24
  %98 = trunc i64 %97 to i32
  %99 = call i64 @realloc(%struct.TYPE_18__* %94, i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %7, align 8
  br label %101

101:                                              ; preds = %91, %86
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i64 %109
  %111 = bitcast %struct.TYPE_18__* %110 to i8*
  %112 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 24, i1 false)
  br label %12

113:                                              ; preds = %22
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = call %struct.TYPE_18__* @calloc(i32 1, i32 24)
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %7, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %121 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_17__* %119, %struct.TYPE_18__* %120)
  %122 = load i32*, i32** %4, align 8
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %113
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  ret %struct.TYPE_18__* %124
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @EnumDisplaySettingsW(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @_glfwSplitBPP(i32, i32*, i32*, i32*) #1

declare dso_local i64 @_glfwCompareVideoModes(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @ChangeDisplaySettingsExW(i32, %struct.TYPE_19__*, i32*, i32, i32*) #1

declare dso_local i64 @realloc(%struct.TYPE_18__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
