; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_glad.c_find_extensionsGL.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_glad.c_find_extensionsGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"GL_EXT_separate_specular_color\00", align 1
@GLAD_GL_EXT_separate_specular_color = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"GL_ARB_multisample\00", align 1
@GLAD_GL_ARB_multisample = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"GL_ARB_robustness\00", align 1
@GLAD_GL_ARB_robustness = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_extensionsGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_extensionsGL() #0 {
  %1 = call i8* @has_ext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %1, i8** @GLAD_GL_EXT_separate_specular_color, align 8
  %2 = call i8* @has_ext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** @GLAD_GL_ARB_multisample, align 8
  %3 = call i8* @has_ext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %3, i8** @GLAD_GL_ARB_robustness, align 8
  ret void
}

declare dso_local i8* @has_ext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
