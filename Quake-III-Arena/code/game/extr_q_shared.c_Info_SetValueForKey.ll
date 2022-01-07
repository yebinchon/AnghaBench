; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_Info_SetValueForKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_Info_SetValueForKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Info_SetValueForKey: oversize infostring\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't use keys or values with a \\\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Can't use keys or values with a semicolon\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't use keys or values with a \22\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\%s\\%s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Info string length exceeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Info_SetValueForKey(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i32, i32* @MAX_INFO_STRING, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ERR_DROP, align 4
  %20 = call i32 @Com_Error(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strchr(i8* %22, i8 signext 92)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strchr(i8* %26, i8 signext 92)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %80

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strchr(i8* %32, i8 signext 59)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strchr(i8* %36, i8 signext 59)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = call i32 @Com_Printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %80

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strchr(i8* %42, i8 signext 34)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strchr(i8* %46, i8 signext 34)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %80

51:                                               ; preds = %45
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @Info_RemoveKey(i8* %52, i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %51
  store i32 1, i32* %9, align 4
  br label %80

62:                                               ; preds = %57
  %63 = trunc i64 %11 to i32
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @Com_sprintf(i8* %13, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* %65)
  %67 = call i32 @strlen(i8* %13)
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* @MAX_INFO_STRING, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcat(i8* %13, i8* %76)
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strcpy(i8* %78, i8* %13)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %73, %61, %49, %39, %29
  %81 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %80, %80
  ret void

84:                                               ; preds = %80
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @Info_RemoveKey(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
