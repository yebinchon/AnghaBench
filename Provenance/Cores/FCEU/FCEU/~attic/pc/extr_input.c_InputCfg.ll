; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_InputCfg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_InputCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"gamepad\00", align 1
@FCFGD_GAMEPAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"powerpad\00", align 1
@FCFGD_POWERPAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"hypershot\00", align 1
@FCFGD_HYPERSHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"quizking\00", align 1
@FCFGD_QUIZKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @InputCfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InputCfg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @strncasecmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @FCFGD_GAMEPAD, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = sub nsw i32 %13, 49
  %15 = and i32 %14, 3
  %16 = trunc i32 %15 to i8
  %17 = call i32 @ConfigDevice(i32 %8, i8 signext %16)
  br label %51

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @strncasecmp(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @FCFGD_POWERPAD, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 49
  %31 = and i32 %30, 1
  %32 = trunc i32 %31 to i8
  %33 = call i32 @ConfigDevice(i32 %24, i8 signext %32)
  br label %50

34:                                               ; preds = %18
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @strcasecmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @FCFGD_HYPERSHOT, align 4
  %40 = call i32 @ConfigDevice(i32 %39, i8 signext 0)
  br label %49

41:                                               ; preds = %34
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @FCFGD_QUIZKING, align 4
  %47 = call i32 @ConfigDevice(i32 %46, i8 signext 0)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %7
  ret void
}

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ConfigDevice(i32, i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
