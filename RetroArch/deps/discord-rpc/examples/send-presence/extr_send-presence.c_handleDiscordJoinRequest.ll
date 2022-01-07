; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/examples/send-presence/extr_send-presence.c_handleDiscordJoinRequest.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/examples/send-presence/extr_send-presence.c_handleDiscordJoinRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"\0ADiscord: join request from %s#%s - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Accept? (y/n)\00", align 1
@DISCORD_REPLY_YES = common dso_local global i32 0, align 4
@DISCORD_REPLY_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @handleDiscordJoinRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleDiscordJoinRequest(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 -1, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %10, i8* %13)
  br label %15

15:                                               ; preds = %41, %1
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %18 = call i32 @prompt(i8* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %42

21:                                               ; preds = %15
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %41

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 121
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @DISCORD_REPLY_YES, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %26
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 110
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @DISCORD_REPLY_NO, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %25
  br i1 true, label %15, label %42

42:                                               ; preds = %41, %38, %31, %20
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @Discord_Respond(i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @prompt(i8*, i32) #1

declare dso_local i32 @Discord_Respond(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
