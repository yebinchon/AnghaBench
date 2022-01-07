; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_window.c_glfwWindowHint.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_window.c_glfwWindowHint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GL_TRUE = common dso_local global i8* null, align 8
@GL_FALSE = common dso_local global i8* null, align 8
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid window hint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwWindowHint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %144 [
    i32 135, label %7
    i32 139, label %9
    i32 150, label %11
    i32 153, label %13
    i32 143, label %15
    i32 130, label %17
    i32 154, label %19
    i32 155, label %21
    i32 156, label %23
    i32 157, label %25
    i32 151, label %27
    i32 129, label %29
    i32 142, label %38
    i32 132, label %47
    i32 131, label %49
    i32 133, label %58
    i32 144, label %67
    i32 140, label %76
    i32 152, label %85
    i32 141, label %94
    i32 128, label %103
    i32 149, label %112
    i32 146, label %114
    i32 145, label %116
    i32 147, label %118
    i32 137, label %120
    i32 138, label %129
    i32 136, label %138
    i32 148, label %140
    i32 134, label %142
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  br label %147

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 4
  br label %147

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 2), align 8
  br label %147

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 3), align 4
  br label %147

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 4), align 8
  br label %147

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 5), align 4
  br label %147

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 6), align 8
  br label %147

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 7), align 4
  br label %147

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 8), align 8
  br label %147

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 9), align 4
  br label %147

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 10), align 8
  br label %147

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** @GL_TRUE, align 8
  br label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @GL_FALSE, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i8* [ %33, %32 ], [ %35, %34 ]
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 14), align 8
  br label %147

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** @GL_TRUE, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** @GL_FALSE, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ]
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 13), align 8
  br label %147

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 11), align 4
  br label %147

49:                                               ; preds = %2
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8*, i8** @GL_TRUE, align 8
  br label %56

54:                                               ; preds = %49
  %55 = load i8*, i8** @GL_FALSE, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i8* [ %53, %52 ], [ %55, %54 ]
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3, i32 12), align 8
  br label %147

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8*, i8** @GL_TRUE, align 8
  br label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** @GL_FALSE, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ]
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 5), align 8
  br label %147

67:                                               ; preds = %2
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i8*, i8** @GL_TRUE, align 8
  br label %74

72:                                               ; preds = %67
  %73 = load i8*, i8** @GL_FALSE, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  br label %147

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8*, i8** @GL_TRUE, align 8
  br label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** @GL_FALSE, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i8* [ %80, %79 ], [ %82, %81 ]
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 3), align 8
  br label %147

85:                                               ; preds = %2
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i8*, i8** @GL_TRUE, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** @GL_FALSE, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i8* [ %89, %88 ], [ %91, %90 ]
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 2), align 8
  br label %147

94:                                               ; preds = %2
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i8*, i8** @GL_TRUE, align 8
  br label %101

99:                                               ; preds = %94
  %100 = load i8*, i8** @GL_FALSE, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i8* [ %98, %97 ], [ %100, %99 ]
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  br label %147

103:                                              ; preds = %2
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i8*, i8** @GL_TRUE, align 8
  br label %110

108:                                              ; preds = %103
  %109 = load i8*, i8** @GL_FALSE, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i8* [ %107, %106 ], [ %109, %108 ]
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  br label %147

112:                                              ; preds = %2
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  br label %147

114:                                              ; preds = %2
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 1), align 4
  br label %147

116:                                              ; preds = %2
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 2), align 8
  br label %147

118:                                              ; preds = %2
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 3), align 4
  br label %147

120:                                              ; preds = %2
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i8*, i8** @GL_TRUE, align 8
  br label %127

125:                                              ; preds = %120
  %126 = load i8*, i8** @GL_FALSE, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i8* [ %124, %123 ], [ %126, %125 ]
  store i8* %128, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 7), align 8
  br label %147

129:                                              ; preds = %2
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i8*, i8** @GL_TRUE, align 8
  br label %136

134:                                              ; preds = %129
  %135 = load i8*, i8** @GL_FALSE, align 8
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i8* [ %133, %132 ], [ %135, %134 ]
  store i8* %137, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 6), align 8
  br label %147

138:                                              ; preds = %2
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 4), align 8
  br label %147

140:                                              ; preds = %2
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 5), align 4
  br label %147

142:                                              ; preds = %2
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %147

144:                                              ; preds = %2
  %145 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %146 = call i32 @_glfwInputError(i32 %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %142, %140, %138, %136, %127, %118, %116, %114, %112, %110, %101, %92, %83, %74, %65, %56, %47, %45, %36, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  ret void
}

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
