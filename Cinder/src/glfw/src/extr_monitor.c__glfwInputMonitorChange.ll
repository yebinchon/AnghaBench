; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_monitor.c__glfwInputMonitorChange.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_monitor.c__glfwInputMonitorChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (i32*, i32)* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_7__* }

@_glfw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4
@GLFW_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputMonitorChange() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0), align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  store i32** %9, i32*** %4, align 8
  %10 = call i32** @_glfwPlatformGetMonitors(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0))
  store i32** %10, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %54, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0), align 8
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32**, i32*** %4, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @_glfwPlatformIsSameMonitor(i32* %25, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %20
  %34 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @_glfwFreeMonitor(i32* %38)
  %40 = load i32**, i32*** %4, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* %44, i32** %48, align 8
  br label %53

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %16

53:                                               ; preds = %33, %16
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %11

57:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %129, %57
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %132

62:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0), align 8
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i32**, i32*** %4, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %84

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %63

84:                                               ; preds = %79, %63
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0), align 8
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %129

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 3), align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %5, align 8
  br label %91

91:                                               ; preds = %112, %89
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32**, i32*** %4, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %97, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_7__* %105, i32* %6, i32* %7)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @_glfwPlatformSetWindowMonitor(%struct.TYPE_7__* %107, i32* null, i32 0, i32 0, i32 %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %104, %94
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %5, align 8
  br label %91

116:                                              ; preds = %91
  %117 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 2, i32 0), align 8
  %118 = icmp ne i32 (i32*, i32)* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 2, i32 0), align 8
  %121 = load i32**, i32*** %4, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %127 = call i32 %120(i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %116
  br label %129

129:                                              ; preds = %128, %88
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %1, align 4
  br label %58

132:                                              ; preds = %58
  store i32 0, i32* %1, align 4
  br label %133

133:                                              ; preds = %181, %132
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0), align 8
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %184

137:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %160, %137
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* %3, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32**, i32*** %4, align 8
  %149 = load i32, i32* %2, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %147, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %142
  %155 = load i32**, i32*** %4, align 8
  %156 = load i32, i32* %2, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  store i32* null, i32** %158, align 8
  br label %163

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %2, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %2, align 4
  br label %138

163:                                              ; preds = %154, %138
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %181

168:                                              ; preds = %163
  %169 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 2, i32 0), align 8
  %170 = icmp ne i32 (i32*, i32)* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 2, i32 0), align 8
  %173 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1), align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @GLFW_CONNECTED, align 4
  %179 = call i32 %172(i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %171, %168
  br label %181

181:                                              ; preds = %180, %167
  %182 = load i32, i32* %1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %1, align 4
  br label %133

184:                                              ; preds = %133
  %185 = load i32**, i32*** %4, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @_glfwFreeMonitors(i32** %185, i32 %186)
  ret void
}

declare dso_local i32** @_glfwPlatformGetMonitors(i32*) #1

declare dso_local i64 @_glfwPlatformIsSameMonitor(i32*, i32*) #1

declare dso_local i32 @_glfwFreeMonitor(i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetWindowMonitor(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwFreeMonitors(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
