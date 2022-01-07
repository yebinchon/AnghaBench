; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Play_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Play_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%s.wav\00", align 1
@qfalse = common dso_local global i32 0, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Play_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  store i32 1, i32* %1, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (...) @Cmd_Argc()
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @Cmd_Argv(i32 %9)
  %11 = call i32 @Q_strrchr(i32 %10, i8 signext 46)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %15 = call i32 @Cmd_Argv(i32 1)
  %16 = call i32 @Com_sprintf(i8* %14, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @Cmd_Argv(i32 %19)
  %21 = call i32 @Q_strncpyz(i8* %18, i32 %20, i32 256)
  br label %22

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %24 = load i32, i32* @qfalse, align 4
  %25 = call i64 @S_RegisterSound(i8* %23, i32 %24)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %2, align 8
  %30 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %31 = call i32 @S_StartLocalSound(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %4

35:                                               ; preds = %4
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Q_strrchr(i32, i8 signext) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i64 @S_RegisterSound(i8*, i32) #1

declare dso_local i32 @S_StartLocalSound(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
