; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformSetWindowIcon.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformSetWindowIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetWindowIcon(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %163

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %25, %31
  %33 = add nsw i32 2, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %9, align 4
  %41 = call i64* @calloc(i32 %40, i32 8)
  store i64* %41, i64** %10, align 8
  %42 = load i64*, i64** %10, align 8
  store i64* %42, i64** %11, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %145, %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %148

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %11, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %141, %47
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %73, %79
  %81 = icmp slt i32 %67, %80
  br i1 %81, label %82, label %144

82:                                               ; preds = %66
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 %89, 4
  %91 = add nsw i32 %90, 0
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 8
  %109 = or i32 %95, %108
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 %116, 4
  %118 = add nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 0
  %123 = or i32 %109, %122
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = mul nsw i32 %130, 4
  %132 = add nsw i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 24
  %137 = or i32 %123, %136
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %11, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %11, align 8
  store i64 %138, i64* %139, align 8
  br label %141

141:                                              ; preds = %82
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %66

144:                                              ; preds = %66
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %43

148:                                              ; preds = %43
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 4
  %155 = load i32, i32* @XA_CARDINAL, align 4
  %156 = load i32, i32* @PropModeReplace, align 4
  %157 = load i64*, i64** %10, align 8
  %158 = bitcast i64* %157 to i8*
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @XChangeProperty(i32 %149, i32 %153, i32 %154, i32 %155, i32 32, i32 %156, i8* %158, i32 %159)
  %161 = load i64*, i64** %10, align 8
  %162 = call i32 @free(i64* %161)
  br label %171

163:                                              ; preds = %3
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 4
  %170 = call i32 @XDeleteProperty(i32 %164, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %163, %148
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 4
  %173 = call i32 @XFlush(i32 %172)
  ret void
}

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @XDeleteProperty(i32, i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
