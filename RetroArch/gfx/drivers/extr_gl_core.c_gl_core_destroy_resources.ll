; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_destroy_resources.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_destroy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__, %struct.TYPE_14__*, i32* }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i64 }

@GL_CORE_NUM_TEXTURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @gl_core_destroy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_core_destroy_resources(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = icmp ne %struct.TYPE_13__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %165

7:                                                ; preds = %1
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_13__* %8, i32 0)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @gl_core_filter_chain_free(i32* %17)
  br label %19

19:                                               ; preds = %14, %7
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = call i32 @glBindVertexArray(i32 0)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = call i32 @glDeleteVertexArrays(i32 1, i64* %29)
  br label %31

31:                                               ; preds = %27, %19
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GL_CORE_NUM_TEXTURES, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = call i32 @glDeleteTextures(i32 1, i64* %53)
  br label %55

55:                                               ; preds = %46, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = call i32 @memset(%struct.TYPE_14__* %62, i32 0, i32 8)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = call i32 @glDeleteTextures(i32 1, i64* %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @glDeleteProgram(i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @glDeleteProgram(i64 %94)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @glDeleteProgram(i64 %106)
  br label %108

108:                                              ; preds = %102, %96
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @glDeleteProgram(i64 %118)
  br label %120

120:                                              ; preds = %114, %108
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @glDeleteProgram(i64 %130)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @glDeleteProgram(i64 %142)
  br label %144

144:                                              ; preds = %138, %132
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @glDeleteProgram(i64 %154)
  br label %156

156:                                              ; preds = %150, %144
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %158 = call i32 @gl_core_deinit_fences(%struct.TYPE_13__* %157)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = call i32 @gl_core_deinit_pbo_readback(%struct.TYPE_13__* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %162 = call i32 @gl_core_deinit_hw_render(%struct.TYPE_13__* %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = call i32 @free(%struct.TYPE_13__* %163)
  br label %165

165:                                              ; preds = %156, %6
  ret void
}

declare dso_local i32 @gl_core_context_bind_hw_render(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @gl_core_filter_chain_free(i32*) #1

declare dso_local i32 @glBindVertexArray(i32) #1

declare dso_local i32 @glDeleteVertexArrays(i32, i64*) #1

declare dso_local i32 @glDeleteTextures(i32, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @glDeleteProgram(i64) #1

declare dso_local i32 @gl_core_deinit_fences(%struct.TYPE_13__*) #1

declare dso_local i32 @gl_core_deinit_pbo_readback(%struct.TYPE_13__*) #1

declare dso_local i32 @gl_core_deinit_hw_render(%struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
