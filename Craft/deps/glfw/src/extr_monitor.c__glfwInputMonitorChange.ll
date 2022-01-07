; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_monitor.c__glfwInputMonitorChange.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_monitor.c__glfwInputMonitorChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32**, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__* }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4
@GLFW_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputMonitorChange() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0), align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  store i32** %7, i32*** %4, align 8
  %8 = call i32** @_glfwPlatformGetMonitors(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0))
  store i32** %8, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %52, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0), align 8
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @_glfwPlatformIsSameMonitor(i32* %23, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @_glfwFreeMonitor(i32* %36)
  %38 = load i32**, i32*** %4, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %42, i32** %46, align 8
  br label %51

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %14

51:                                               ; preds = %31, %14
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %9

55:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %123, %55
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %126

60:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0), align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i32**, i32*** %4, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %82

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %61

82:                                               ; preds = %77, %61
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0), align 8
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %123

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 3), align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %5, align 8
  br label %89

89:                                               ; preds = %106, %87
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32**, i32*** %4, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %95, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %92
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %5, align 8
  br label %89

110:                                              ; preds = %89
  %111 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 2, i32 0), align 8
  %112 = icmp ne i32 (i32*, i32)* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 2, i32 0), align 8
  %115 = load i32**, i32*** %4, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %121 = call i32 %114(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %110
  br label %123

123:                                              ; preds = %122, %86
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  br label %56

126:                                              ; preds = %56
  store i32 0, i32* %1, align 4
  br label %127

127:                                              ; preds = %175, %126
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0), align 8
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %178

131:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %154, %131
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* %3, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32**, i32*** %4, align 8
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %141, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %136
  %149 = load i32**, i32*** %4, align 8
  %150 = load i32, i32* %2, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  store i32* null, i32** %152, align 8
  br label %157

153:                                              ; preds = %136
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %2, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %2, align 4
  br label %132

157:                                              ; preds = %148, %132
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* %3, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %175

162:                                              ; preds = %157
  %163 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 2, i32 0), align 8
  %164 = icmp ne i32 (i32*, i32)* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 2, i32 0), align 8
  %167 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %168 = load i32, i32* %1, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* @GLFW_CONNECTED, align 4
  %173 = call i32 %166(i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %162
  br label %175

175:                                              ; preds = %174, %161
  %176 = load i32, i32* %1, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %1, align 4
  br label %127

178:                                              ; preds = %127
  %179 = load i32**, i32*** %4, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @_glfwFreeMonitors(i32** %179, i32 %180)
  ret void
}

declare dso_local i32** @_glfwPlatformGetMonitors(i32*) #1

declare dso_local i64 @_glfwPlatformIsSameMonitor(i32*, i32*) #1

declare dso_local i32 @_glfwFreeMonitor(i32*) #1

declare dso_local i32 @_glfwFreeMonitors(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
