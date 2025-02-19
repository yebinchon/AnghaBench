; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_posix_tls.c__glfwCreateContextTLS.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_posix_tls.c__glfwCreateContextTLS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"POSIX: Failed to create context TLS\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContextTLS() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @pthread_key_create(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), i32* null)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %6 = call i32 @_glfwInputError(i32 %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GL_FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @GL_TRUE, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i64 @pthread_key_create(i32*, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
