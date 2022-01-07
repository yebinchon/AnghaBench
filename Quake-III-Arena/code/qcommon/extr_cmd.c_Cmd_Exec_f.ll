; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cmd_Exec_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cmd_Exec_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"exec <filename> : execute a script file\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"couldn't exec %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"execing %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Exec_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_QPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 (...) @Cmd_Argc()
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %33

14:                                               ; preds = %0
  %15 = call i32 @Cmd_Argv(i32 1)
  %16 = trunc i64 %7 to i32
  %17 = call i32 @Q_strncpyz(i8* %9, i32 %15, i32 %16)
  %18 = trunc i64 %7 to i32
  %19 = call i32 @COM_DefaultExtension(i8* %9, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @FS_ReadFile(i8* %9, i8** %1)
  store i32 %20, i32* %2, align 4
  %21 = load i8*, i8** %1, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = call i32 @Cmd_Argv(i32 1)
  %25 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  store i32 1, i32* %5, align 4
  br label %33

26:                                               ; preds = %14
  %27 = call i32 @Cmd_Argv(i32 1)
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @Cbuf_InsertText(i8* %29)
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @FS_FreeFile(i8* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %23, %12
  %34 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %37 [
    i32 0, label %36
    i32 1, label %36
  ]

36:                                               ; preds = %33, %33
  ret void

37:                                               ; preds = %33
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Cmd_Argv(i32) #2

declare dso_local i32 @COM_DefaultExtension(i8*, i32, i8*) #2

declare dso_local i32 @FS_ReadFile(i8*, i8**) #2

declare dso_local i32 @Cbuf_InsertText(i8*) #2

declare dso_local i32 @FS_FreeFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
