; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cbuf_ExecuteText.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cbuf_ExecuteText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cbuf_ExecuteText: bad exec_when\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cbuf_ExecuteText(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %25 [
    i32 128, label %6
    i32 129, label %19
    i32 130, label %22
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @Cmd_ExecuteString(i8* %14)
  br label %18

16:                                               ; preds = %9, %6
  %17 = call i32 (...) @Cbuf_Execute()
  br label %18

18:                                               ; preds = %16, %13
  br label %28

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @Cbuf_InsertText(i8* %20)
  br label %28

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @Cbuf_AddText(i8* %23)
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ERR_FATAL, align 4
  %27 = call i32 @Com_Error(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22, %19, %18
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Cmd_ExecuteString(i8*) #1

declare dso_local i32 @Cbuf_Execute(...) #1

declare dso_local i32 @Cbuf_InsertText(i8*) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
