; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_set_uniform_parameter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_set_uniform_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniform_info = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.uniform_info*, i8*)* @gl_glsl_set_uniform_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_glsl_set_uniform_parameter(i8* %0, %struct.uniform_info* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uniform_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.uniform_info* %1, %struct.uniform_info** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %15 = icmp ne %struct.uniform_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  br label %145

17:                                               ; preds = %13
  %18 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %19 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %28 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %35 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @glGetUniformLocation(i32 %33, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %17
  %40 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %41 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %23
  %44 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %45 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %145 [
    i32 136, label %47
    i32 133, label %55
    i32 131, label %68
    i32 129, label %86
    i32 135, label %109
    i32 132, label %116
    i32 130, label %123
    i32 128, label %130
    i32 134, label %137
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %50 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @glUniform1f(i32 %48, i32 %53)
  br label %145

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %58 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %63 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @glUniform2f(i32 %56, i32 %61, i32 %66)
  br label %145

68:                                               ; preds = %43
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %71 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %76 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %81 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @glUniform3f(i32 %69, i32 %74, i32 %79, i32 %84)
  br label %145

86:                                               ; preds = %43
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %89 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %94 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %99 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %104 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @glUniform4f(i32 %87, i32 %92, i32 %97, i32 %102, i32 %107)
  br label %145

109:                                              ; preds = %43
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %112 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @glUniform1fv(i32 %110, i32 1, i32 %114)
  br label %145

116:                                              ; preds = %43
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %119 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @glUniform2fv(i32 %117, i32 1, i32 %121)
  br label %145

123:                                              ; preds = %43
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %126 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @glUniform3fv(i32 %124, i32 1, i32 %128)
  br label %145

130:                                              ; preds = %43
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %133 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @glUniform4fv(i32 %131, i32 1, i32 %135)
  br label %145

137:                                              ; preds = %43
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %140 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @glUniform1i(i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %16, %43, %137, %130, %123, %116, %109, %86, %68, %55, %47
  ret void
}

declare dso_local i32 @glGetUniformLocation(i32, i32) #1

declare dso_local i32 @glUniform1f(i32, i32) #1

declare dso_local i32 @glUniform2f(i32, i32, i32) #1

declare dso_local i32 @glUniform3f(i32, i32, i32, i32) #1

declare dso_local i32 @glUniform4f(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glUniform1fv(i32, i32, i32) #1

declare dso_local i32 @glUniform2fv(i32, i32, i32) #1

declare dso_local i32 @glUniform3fv(i32, i32, i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, i32) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
