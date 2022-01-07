; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/examples/send-presence/extr_send-presence.c_gameLoop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/examples/send-presence/extr_send-presence.c_gameLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StartTime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"You are standing in an open field west of a white house.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Shutting off Discord.\0A\00", align 1
@SendPresence = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Clearing presence information.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Restoring presence information.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Reinit Discord.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"I don't understand that.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"I don't know the word \22%s\22.\0A\00", align 1
@FrustrationLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gameLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameLoop() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = call i32 @time(i32* null)
  store i32 %3, i32* @StartTime, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %69, %46, %39, %24, %0
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %7 = call i64 @prompt(i8* %6, i32 512)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %5
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %11 = load i8, i8* %10, align 16
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 113
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %71

19:                                               ; preds = %13
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 116
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @Discord_Shutdown()
  br label %5

27:                                               ; preds = %19
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 99
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* @SendPresence, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @SendPresence, align 4
  br label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @SendPresence, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = call i32 (...) @updateDiscordPresence()
  br label %5

41:                                               ; preds = %27
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 121
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 (...) @discordInit()
  br label %5

49:                                               ; preds = %41
  %50 = call i32 @time(i32* null)
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %65

55:                                               ; preds = %49
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %57 = call i8* @strchr(i8* %56, i8 signext 32)
  store i8* %57, i8** %2, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i8*, i8** %2, align 8
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %60, %55
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %53
  %66 = load i32, i32* @FrustrationLevel, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @FrustrationLevel, align 4
  %68 = call i32 (...) @updateDiscordPresence()
  br label %69

69:                                               ; preds = %65, %9
  %70 = call i32 (...) @Discord_RunCallbacks()
  br label %5

71:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @prompt(i8*, i32) #1

declare dso_local i32 @Discord_Shutdown(...) #1

declare dso_local i32 @updateDiscordPresence(...) #1

declare dso_local i32 @discordInit(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Discord_RunCallbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
