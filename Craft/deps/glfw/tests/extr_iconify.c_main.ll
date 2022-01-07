; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_iconify.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_iconify.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"afhn\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@GLFW_AUTO_ICONIFY = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@framebuffer_size_callback = common dso_local global i32 0, align 4
@window_size_callback = common dso_local global i32 0, align 4
@window_focus_callback = common dso_local global i32 0, align 4
@window_iconify_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Window is %s and %s\0A\00", align 1
@GLFW_ICONIFIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"iconified\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"restored\00", align 1
@GLFW_FOCUSED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"focused\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"defocused\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i64, i64* @GL_TRUE, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* @GL_FALSE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* @GL_FALSE, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %40, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %36 [
    i32 97, label %26
    i32 104, label %28
    i32 102, label %32
    i32 110, label %34
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* @GL_TRUE, align 8
  store i64 %27, i64* %11, align 8
  br label %40

28:                                               ; preds = %24
  %29 = call i32 (...) @usage()
  %30 = load i32, i32* @EXIT_SUCCESS, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %24
  %33 = load i64, i64* @GL_TRUE, align 8
  store i64 %33, i64* %10, align 8
  br label %40

34:                                               ; preds = %24
  %35 = load i64, i64* @GL_FALSE, align 8
  store i64 %35, i64* %9, align 8
  br label %40

36:                                               ; preds = %24
  %37 = call i32 (...) @usage()
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @exit(i32 %38) #3
  unreachable

40:                                               ; preds = %34, %32, %26
  br label %19

41:                                               ; preds = %19
  %42 = load i32, i32* @error_callback, align 4
  %43 = call i32 @glfwSetErrorCallback(i32 %42)
  %44 = call i32 (...) @glfwInit()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %41
  %50 = load i32, i32* @GLFW_AUTO_ICONIFY, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @glfwWindowHint(i32 %50, i64 %51)
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = call i32** @glfwGetMonitors(i32* %13)
  store i32** %59, i32*** %14, align 8
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32** @calloc(i32 %61, i32 8)
  store i32** %62, i32*** %12, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %86, %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load i32**, i32*** %14, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @create_window(i32* %72)
  %74 = load i32**, i32*** %12, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  store i32* %73, i32** %77, align 8
  %78 = load i32**, i32*** %12, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  br label %89

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %63

89:                                               ; preds = %84, %63
  br label %102

90:                                               ; preds = %55, %49
  store i32* null, i32** %15, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %94, i32** %15, align 8
  br label %95

95:                                               ; preds = %93, %90
  store i32 1, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32** @calloc(i32 %96, i32 8)
  store i32** %97, i32*** %12, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call i32* @create_window(i32* %98)
  %100 = load i32**, i32*** %12, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %89
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %176, %102
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %179

107:                                              ; preds = %103
  %108 = load i32**, i32*** %12, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @key_callback, align 4
  %114 = call i32 @glfwSetKeyCallback(i32* %112, i32 %113)
  %115 = load i32**, i32*** %12, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @framebuffer_size_callback, align 4
  %121 = call i32 @glfwSetFramebufferSizeCallback(i32* %119, i32 %120)
  %122 = load i32**, i32*** %12, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @window_size_callback, align 4
  %128 = call i32 @glfwSetWindowSizeCallback(i32* %126, i32 %127)
  %129 = load i32**, i32*** %12, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @window_focus_callback, align 4
  %135 = call i32 @glfwSetWindowFocusCallback(i32* %133, i32 %134)
  %136 = load i32**, i32*** %12, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @window_iconify_callback, align 4
  %142 = call i32 @glfwSetWindowIconifyCallback(i32* %140, i32 %141)
  %143 = load i32**, i32*** %12, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @glfwSetWindowRefreshCallback(i32* %147, i32 (i32*)* @window_refresh_callback)
  %149 = load i32**, i32*** %12, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @window_refresh_callback(i32* %153)
  %155 = load i32**, i32*** %12, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @GLFW_ICONIFIED, align 4
  %161 = call i64 @glfwGetWindowAttrib(i32* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %165 = load i32**, i32*** %12, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @GLFW_FOCUSED, align 4
  %171 = call i64 @glfwGetWindowAttrib(i32* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %175 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %164, i8* %174)
  br label %176

176:                                              ; preds = %107
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %103

179:                                              ; preds = %103
  br label %180

180:                                              ; preds = %204, %179
  %181 = call i32 (...) @glfwPollEvents()
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %196, %180
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load i32**, i32*** %12, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @glfwWindowShouldClose(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %199

195:                                              ; preds = %186
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %182

199:                                              ; preds = %194, %182
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %207

204:                                              ; preds = %199
  %205 = load i32, i32* @stdout, align 4
  %206 = call i32 @fflush(i32 %205)
  br label %180

207:                                              ; preds = %203
  %208 = call i32 (...) @glfwTerminate()
  %209 = load i32, i32* @EXIT_SUCCESS, align 4
  %210 = call i32 @exit(i32 %209) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @glfwWindowHint(i32, i64) #1

declare dso_local i32** @glfwGetMonitors(i32*) #1

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32* @create_window(i32*) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwSetWindowSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwSetWindowFocusCallback(i32*, i32) #1

declare dso_local i32 @glfwSetWindowIconifyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetWindowRefreshCallback(i32*, i32 (i32*)*) #1

declare dso_local i32 @window_refresh_callback(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i64 @glfwGetWindowAttrib(i32*, i32) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @glfwTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
