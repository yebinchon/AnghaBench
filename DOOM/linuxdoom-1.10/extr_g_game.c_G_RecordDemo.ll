; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_RecordDemo.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_RecordDemo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usergame = common dso_local global i32 0, align 4
@demoname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".lmp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-maxdemo\00", align 1
@myargc = common dso_local global i32 0, align 4
@myargv = common dso_local global i32* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@demobuffer = common dso_local global i64 0, align 8
@demoend = common dso_local global i64 0, align 8
@demorecording = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RecordDemo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* @usergame, align 4
  %5 = load i32, i32* @demoname, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strcpy(i32 %5, i8* %6)
  %8 = load i32, i32* @demoname, align 4
  %9 = call i32 @strcat(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 131072, i32* %4, align 4
  %10 = call i32 @M_CheckParm(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @myargc, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32*, i32** @myargv, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @atoi(i32 %24)
  %26 = mul nsw i32 %25, 1024
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %13, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PU_STATIC, align 4
  %30 = call i64 @Z_Malloc(i32 %28, i32 %29, i32* null)
  store i64 %30, i64* @demobuffer, align 8
  %31 = load i64, i64* @demobuffer, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* @demoend, align 8
  store i32 1, i32* @demorecording, align 4
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @M_CheckParm(i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i64 @Z_Malloc(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
