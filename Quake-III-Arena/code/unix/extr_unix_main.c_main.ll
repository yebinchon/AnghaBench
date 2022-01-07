; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saved_euid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@eventQue = common dso_local global i32* null, align 8
@MAX_QUED_EVENTS = common dso_local global i32 0, align 4
@sys_packetReceived = common dso_local global i32* null, align 8
@MAX_MSGLEN = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@FNDELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @geteuid()
  store i32 %9, i32* @saved_euid, align 4
  %10 = call i32 (...) @getuid()
  %11 = call i32 @seteuid(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @Sys_ParseArgs(i32 %12, i8** %13)
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  call void @Sys_SetDefaultCDPath(i8* %17)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  store i8 0, i8* %40, align 1
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %59, %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %8, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcat(i8* %52, i8* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load i32*, i32** @eventQue, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* @MAX_QUED_EVENTS, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i32* %64, i32 0, i32 %68)
  %70 = load i32*, i32** @sys_packetReceived, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* @MAX_MSGLEN, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(i32* %71, i32 0, i32 %75)
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @Com_Init(i8* %77)
  %79 = call i32 (...) @NET_Init()
  %80 = call i32 (...) @Sys_ConsoleInputInit()
  %81 = load i32, i32* @F_SETFL, align 4
  %82 = load i32, i32* @F_GETFL, align 4
  %83 = call i32 @fcntl(i32 0, i32 %82, i32 0)
  %84 = load i32, i32* @FNDELAY, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @fcntl(i32 0, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %62, %87
  %88 = call i32 (...) @Sys_ConfigureFPU()
  %89 = call i32 (...) @Com_Frame()
  br label %87
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @seteuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @Sys_ParseArgs(i32, i8**) #1

declare dso_local void @Sys_SetDefaultCDPath(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Com_Init(i8*) #1

declare dso_local i32 @NET_Init(...) #1

declare dso_local i32 @Sys_ConsoleInputInit(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @Sys_ConfigureFPU(...) #1

declare dso_local i32 @Com_Frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
