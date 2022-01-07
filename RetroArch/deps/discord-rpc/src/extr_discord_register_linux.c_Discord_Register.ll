; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_linux.c_Discord_Register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_linux.c_Discord_Register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.2 = private unnamed_addr constant [134 x i8] c"[Desktop Entry]\0AName=Game %s\0AExec=%s\0AType=Application\0ANoDisplay=true\0ACategories=Discord;Games;\0AMimeType=x-scheme-handler/discord-%s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"/discord-%s.desktop\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/.local\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"/share\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"/applications\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"xdg-mime default discord-%s.desktop x-scheme-handler/discord-%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to register mime handler\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Discord_Register(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [2048 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %101

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22, %19
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %29 = call i64 @readlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 1024)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ule i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  %34 = icmp uge i64 %33, 1024
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %27
  br label %101

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %37
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %36, %22
  store i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %41, i32 2048, i8* %42, i8* %43, i8* %44, i8* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %101

50:                                               ; preds = %40
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %51, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %54, i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %58 = call i32 @Mkdir(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %101

61:                                               ; preds = %50
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %63 = call i32 @strcat(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %65 = call i32 @Mkdir(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %101

68:                                               ; preds = %61
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %70 = call i32 @strcat(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %72 = call i32 @Mkdir(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %101

75:                                               ; preds = %68
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %78 = call i32 @strcat(i8* %76, i8* %77)
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %80 = call i32* @fopen(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %101

84:                                               ; preds = %75
  %85 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @fwrite(i8* %85, i32 1, i32 %86, i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %92 = load i8*, i8** %3, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %91, i32 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i8* %92, i8* %93)
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %96 = call i64 @system(i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %84
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %101

101:                                              ; preds = %18, %35, %49, %60, %67, %74, %83, %98, %84
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @Mkdir(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @system(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
