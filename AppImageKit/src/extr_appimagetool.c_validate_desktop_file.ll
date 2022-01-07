; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_validate_desktop_file.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_validate_desktop_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"could not fork! \0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"desktop-file-validate\00", align 1
@WUNTRACED = common dso_local global i32 0, align 4
@WCONTINUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_desktop_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @fork()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @execlp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32* null)
  br label %30

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WUNTRACED, align 4
  %20 = load i32, i32* @WCONTINUED, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @waitpid(i32 %18, i32* %4, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @WIFEXITED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WEXITSTATUS(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %14
  br label %31

31:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
