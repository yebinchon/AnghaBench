; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_ValidEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_ValidEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"func_wall\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"spawnflags\00", align 1
@SPAWNFLAG_NOT_DEATHMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"func_door_rotating\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"targetname\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"trigger_hurt\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"trigger_push\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"trigger_multiple\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@num_entities = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"target_teleporter\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"trigger_teleport\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"func_static\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"func_door\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_ValidEntity(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** @entities, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = icmp eq i32* %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %122

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ValueForKey(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @ValueForKey(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @atoi(i32 %18)
  %20 = load i32, i32* @SPAWNFLAG_NOT_DEATHMATCH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %122

24:                                               ; preds = %16
  br label %120

25:                                               ; preds = %11
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ValueForKey(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @ValueForKey(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @atoi(i32 %32)
  %34 = load i32, i32* @SPAWNFLAG_NOT_DEATHMATCH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ValueForKey(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i64 @AAS_AlwaysTriggered(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %122

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %30
  br label %119

45:                                               ; preds = %25
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ValueForKey(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %122

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @ValueForKey(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %122

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @ValueForKey(i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %95, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @ValueForKey(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %66 = call i32 @strcpy(i8* %63, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %91, %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @num_entities, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %73 = load i32*, i32** @entities, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @ValueForKey(i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @strcmp(i8* %72, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %71
  %81 = load i32*, i32** @entities, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @ValueForKey(i32* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  store i32 1, i32* %2, align 4
  br label %122

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %67

94:                                               ; preds = %67
  br label %116

95:                                               ; preds = %57
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @ValueForKey(i32* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %98 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store i32 1, i32* %2, align 4
  br label %122

101:                                              ; preds = %95
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @ValueForKey(i32* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  br label %122

107:                                              ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @ValueForKey(i32* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 1, i32* %2, align 4
  br label %122

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %44
  br label %120

120:                                              ; preds = %119, %24
  br label %121

121:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %112, %106, %100, %88, %56, %50, %42, %23, %10
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @ValueForKey(i32*, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i64 @AAS_AlwaysTriggered(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
