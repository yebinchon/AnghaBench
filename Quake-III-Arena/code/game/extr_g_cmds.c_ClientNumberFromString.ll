; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_ClientNumberFromString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_ClientNumberFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8* }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"print \22Bad client slot: %i\0A\22\00", align 1
@CON_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"print \22Client %i is not active\0A\22\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"print \22User %s is not on the server\0A\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClientNumberFromString(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MAX_STRING_CHARS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_STRING_CHARS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %70

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 57
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @level, i32 0, i32 0), align 8
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35, %30
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @g_entities, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, ...) @va(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = call i32 @trap_SendServerCommand(i32* %44, i32 %46)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %111

48:                                               ; preds = %35
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @level, i32 0, i32 1), align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %6, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CON_CONNECTED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @g_entities, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @va(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = call i32 @trap_SendServerCommand(i32* %64, i32 %66)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %111

68:                                               ; preds = %48
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %111

70:                                               ; preds = %24, %2
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @SanitizeString(i8* %71, i8* %15)
  store i32 0, i32* %7, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @level, i32 0, i32 1), align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %6, align 8
  br label %74

74:                                               ; preds = %97, %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @level, i32 0, i32 0), align 8
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CON_CONNECTED, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %97

86:                                               ; preds = %78
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @SanitizeString(i8* %90, i8* %18)
  %92 = call i32 @strcmp(i8* %18, i8* %15)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %111

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 1
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %6, align 8
  br label %74

102:                                              ; preds = %74
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @g_entities, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 (i8*, ...) @va(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  %110 = call i32 @trap_SendServerCommand(i32* %107, i32 %109)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %111

111:                                              ; preds = %102, %94, %68, %59, %39
  %112 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @trap_SendServerCommand(i32*, i32) #2

declare dso_local i32 @va(i8*, ...) #2

declare dso_local i32 @SanitizeString(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
