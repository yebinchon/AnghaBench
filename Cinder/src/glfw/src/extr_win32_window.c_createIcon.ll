; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_window.c_createIcon.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_window.c_createIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i32 }

@BI_BITFIELDS = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Win32: Failed to create RGBA bitmap\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Win32: Failed to create mask bitmap\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Win32: Failed to create icon\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Win32: Failed to create cursor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32, i32, i64)* @createIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @createIcon(%struct.TYPE_8__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %18, align 8
  %22 = call i32 @ZeroMemory(%struct.TYPE_7__* %15, i32 80)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 80, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 0, %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32 32, i32* %34, align 8
  %35 = load i32, i32* @BI_BITFIELDS, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 14
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  store i32 16711680, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  store i32 65280, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  store i32 255, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 8
  store i32 -16777216, i32* %40, align 8
  %41 = call i32 @GetDC(i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = bitcast %struct.TYPE_7__* %15 to i32*
  %44 = load i32, i32* @DIB_RGB_COLORS, align 4
  %45 = call i8* @CreateDIBSection(i32 %42, i32* %43, i32 %44, i8** %17, i32* null, i32 0)
  store i8* %45, i8** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ReleaseDC(i32* null, i32 %46)
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %52 = call i32 @_glfwInputError(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %138

53:                                               ; preds = %4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @CreateBitmap(i32 %56, i32 %59, i32 1, i32 1, i32* null)
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %65 = call i32 @_glfwInputError(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @DeleteObject(i8* %66)
  store i32* null, i32** %5, align 8
  br label %138

68:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = icmp slt i32 %70, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %69
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %17, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 %82, i8* %84, align 1
  %85 = load i8*, i8** %18, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %17, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %87, i8* %89, align 1
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %17, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 %92, i8* %94, align 1
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %17, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 3
  store i8 %97, i8* %99, align 1
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %17, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %18, align 8
  br label %104

104:                                              ; preds = %79
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %69

107:                                              ; preds = %69
  %108 = call i32 @ZeroMemory(%struct.TYPE_7__* %16, i32 80)
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 13
  store i64 %109, i64* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 9
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 10
  store i32 %113, i32* %114, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 12
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 11
  store i8* %117, i8** %118, align 8
  %119 = call i32* @CreateIconIndirect(%struct.TYPE_7__* %16)
  store i32* %119, i32** %12, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @DeleteObject(i8* %120)
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @DeleteObject(i8* %122)
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %107
  %127 = load i64, i64* %9, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %131 = call i32 @_glfwInputError(i32 %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %135

132:                                              ; preds = %126
  %133 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %134 = call i32 @_glfwInputError(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %107
  %137 = load i32*, i32** %12, align 8
  store i32* %137, i32** %5, align 8
  br label %138

138:                                              ; preds = %136, %63, %50
  %139 = load i32*, i32** %5, align 8
  ret i32* %139
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i8* @CreateDIBSection(i32, i32*, i32, i8**, i32*, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i8* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DeleteObject(i8*) #1

declare dso_local i32* @CreateIconIndirect(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
