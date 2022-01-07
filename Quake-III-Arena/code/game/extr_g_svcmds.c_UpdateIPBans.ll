; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_UpdateIPBans.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_UpdateIPBans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_CVAR_VALUE_STRING = common dso_local global i32 0, align 4
@numIPFilters = common dso_local global i32 0, align 4
@ipFilters = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"g_banIPs overflowed at MAX_CVAR_VALUE_STRING\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"g_banIPs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateIPBans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateIPBans() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = load i32, i32* @MAX_CVAR_VALUE_STRING, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i8 0, i8* %11, align 16
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %85, %0
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @numIPFilters, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %88

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipFilters, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %85

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipFilters, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipFilters, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %40, align 16
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %68, %25
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %71

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %52 = call i32 @Q_strcat(i8* %51, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %61

53:                                               ; preds = %44
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @Q_strcat(i8* %54, i32 64, i8* %59)
  br label %61

61:                                               ; preds = %53, %50
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 3
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %67 = call i32 @Q_strcat(i8* %62, i32 64, i8* %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %41

71:                                               ; preds = %41
  %72 = call i32 @strlen(i8* %11)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* @MAX_CVAR_VALUE_STRING, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = trunc i64 %9 to i32
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %81 = call i32 @Q_strcat(i8* %11, i32 %79, i8* %80)
  br label %84

82:                                               ; preds = %71
  %83 = call i32 @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %88

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %24
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %12

88:                                               ; preds = %82, %12
  %89 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %11)
  %90 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i8* @va(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
