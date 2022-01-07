; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Setenv_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Setenv_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s undefined\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Setenv_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = call i32 (...) @Cmd_Argc()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %31

8:                                                ; preds = %0
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %10 = call i8* @Cmd_Argv(i32 1)
  %11 = call i32 @strcpy(i8* %9, i8* %10)
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %13 = call i32 @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @Cmd_Argv(i32 %20)
  %22 = call i32 @strcat(i8* %19, i8* %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %24 = call i32 @strcat(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %30 = call i32 @putenv(i8* %29)
  br label %49

31:                                               ; preds = %0
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = call i8* @Cmd_Argv(i32 1)
  %36 = call i8* @getenv(i8* %35)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i8* @Cmd_Argv(i32 1)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  br label %47

43:                                               ; preds = %34
  %44 = call i8* @Cmd_Argv(i32 1)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %28
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
