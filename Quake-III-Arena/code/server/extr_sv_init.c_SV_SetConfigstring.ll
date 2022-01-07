; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_SetConfigstring.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_SetConfigstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SV_SetConfigstring: bad index %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sv = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SS_GAME = common dso_local global i64 0, align 8
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_12__* null, align 8
@CS_PRIMED = common dso_local global i64 0, align 8
@CS_SERVERINFO = common dso_local global i32 0, align 4
@SVF_NOSERVERINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bcs0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bcs2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bcs1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s %i \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cs %i \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SetConfigstring(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @MAX_STRING_CHARS, align 4
  %15 = sub nsw i32 %14, 24
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @ERR_DROP, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @Com_Error(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 2), align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i8* %31, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %153

40:                                               ; preds = %30
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 2), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Z_Free(i32 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @CopyString(i8* %47)
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 2), align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 0), align 8
  %54 = load i64, i64* @SS_GAME, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %40
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 1), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %153

59:                                               ; preds = %56, %40
  store i32 0, i32* %6, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  br label %61

61:                                               ; preds = %147, %59
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %152

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CS_PRIMED, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %147

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @CS_SERVERINFO, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SVF_NOSERVERINFO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %147

94:                                               ; preds = %83, %78, %74
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @strlen(i8* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @MAX_STRING_CHARS, align 4
  %103 = zext i32 %102 to i64
  %104 = call i8* @llvm.stacksave()
  store i8* %104, i8** %12, align 8
  %105 = alloca i8, i64 %103, align 16
  store i64 %103, i64* %13, align 8
  br label %106

106:                                              ; preds = %120, %100
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %120

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %119

118:                                              ; preds = %113
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @Q_strncpyz(i8* %105, i8* %124, i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (%struct.TYPE_10__*, i8*, ...) @SV_SendServerCommand(%struct.TYPE_10__* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %128, i32 %129, i8* %105)
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %106

139:                                              ; preds = %106
  %140 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %140)
  br label %146

141:                                              ; preds = %94
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = load i32, i32* %3, align 4
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 (%struct.TYPE_10__*, i8*, ...) @SV_SendServerCommand(%struct.TYPE_10__* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %143, i8* %144)
  br label %146

146:                                              ; preds = %141, %139
  br label %147

147:                                              ; preds = %146, %93, %73
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 1
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %8, align 8
  br label %61

152:                                              ; preds = %61
  br label %153

153:                                              ; preds = %39, %152, %56
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @Z_Free(i32) #1

declare dso_local i32 @CopyString(i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @SV_SendServerCommand(%struct.TYPE_10__*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
