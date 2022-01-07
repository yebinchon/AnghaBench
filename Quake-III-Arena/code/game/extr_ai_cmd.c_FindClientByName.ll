; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_FindClientByName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_FindClientByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@FindClientByName.maxclients = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindClientByName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @MAX_INFO_STRING, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @FindClientByName.maxclients, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* @FindClientByName.maxclients, align 4
  br label %16

16:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FindClientByName.maxclients, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MAX_CLIENTS, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = load i32, i32* %4, align 4
  %29 = trunc i64 %9 to i32
  %30 = call i32 @ClientName(i32 %28, i8* %11, i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @Q_stricmp(i8* %11, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %65

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %17

40:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @FindClientByName.maxclients, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MAX_CLIENTS, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %64

51:                                               ; preds = %49
  %52 = load i32, i32* %4, align 4
  %53 = trunc i64 %9 to i32
  %54 = call i32 @ClientName(i32 %52, i8* %11, i32 %53)
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @stristr(i8* %11, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %65

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %41

64:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %58, %34
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i64 @stristr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
