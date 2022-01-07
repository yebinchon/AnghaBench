; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_glfwinfo.c_list_extensions.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_glfwinfo.c_list_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"%s context supported extensions:\0A\00", align 1
@GLFW_OPENGL_API = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"glGetStringi\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GL_NUM_EXTENSIONS = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @list_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_extensions(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64 (i32, i32)*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @get_api_name(i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GLFW_OPENGL_API, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = call i32 @glfwGetProcAddress(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i64 (i32, i32)*
  store i64 (i32, i32)* %23, i64 (i32, i32)** %10, align 8
  %24 = load i64 (i32, i32)*, i64 (i32, i32)** %10, align 8
  %25 = icmp ne i64 (i32, i32)* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = call i32 (...) @glfwTerminate()
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %20
  %31 = load i32, i32* @GL_NUM_EXTENSIONS, align 4
  %32 = call i32 @glGetIntegerv(i32 %31, i32* %8)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %44, %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64 (i32, i32)*, i64 (i32, i32)** %10, align 8
  %39 = load i32, i32* @GL_EXTENSIONS, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 %38(i32 %39, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @puts(i8* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %33

47:                                               ; preds = %33
  br label %71

48:                                               ; preds = %17, %3
  %49 = load i32, i32* @GL_EXTENSIONS, align 4
  %50 = call i8* @glGetString(i32 %49)
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %67, %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @putchar(i8 signext 10)
  br label %67

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @putchar(i8 signext %65)
  br label %67

67:                                               ; preds = %63, %61
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %51

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %47
  %72 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @get_api_name(i32) #1

declare dso_local i32 @glfwGetProcAddress(i8*) #1

declare dso_local i32 @glfwTerminate(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @glGetString(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
