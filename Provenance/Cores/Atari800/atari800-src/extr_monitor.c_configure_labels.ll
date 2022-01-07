; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_configure_labels.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_configure_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Built-in labels are %sabled.\0A\00", align 1
@symtable_builtin_enable = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@symtable_user_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Using %d user-defined label%s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"There are no user-defined labels.\0A\00", align 1
@.str.7 = private unnamed_addr constant [381 x i8] c"Labels are displayed in disassembly listings.\0AYou may also use them as command arguments.\0AUsage:\0ALABELS OFF            - no labels\0ALABELS BUILTIN        - use only built-in labels\0ALABELS LOAD filename  - use only labels loaded from file\0ALABELS ADD filename   - use built-in and loaded labels\0ALABELS SET name value - define a label\0ALABELS LIST           - list user-defined labels\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"BUILTIN\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"%s redefined (previous value: %04X)\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Missing or bad arguments\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%04X %s\0A\00", align 1
@symtable_user = common dso_local global %struct.TYPE_5__* null, align 8
@.str.17 = private unnamed_addr constant [41 x i8] c"Invalid command, type \22LABELS\22 for help\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @configure_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_labels(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = call i8* (...) @get_token()
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load i64, i64* @symtable_builtin_enable, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @symtable_user_size, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load i32, i32* @symtable_user_size, align 4
  %21 = load i32, i32* @symtable_user_size, align 4
  %22 = icmp sgt i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %20, i8* %24)
  br label %28

26:                                               ; preds = %11
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([381 x i8], [381 x i8]* @.str.7, i64 0, i64 0))
  br label %150

30:                                               ; preds = %1
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @Util_strupper(i8* %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* @symtable_builtin_enable, align 8
  %38 = call i32 (...) @free_user_labels()
  br label %149

39:                                               ; preds = %30
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* @symtable_builtin_enable, align 8
  %45 = call i32 (...) @free_user_labels()
  br label %148

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* @symtable_builtin_enable, align 8
  %52 = call i8* (...) @get_token()
  %53 = call i32 @load_user_labels(i8* %52)
  br label %147

54:                                               ; preds = %46
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* @symtable_builtin_enable, align 8
  %60 = call i8* (...) @get_token()
  %61 = call i32 @load_user_labels(i8* %60)
  br label %146

62:                                               ; preds = %54
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = call i8* (...) @get_token()
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %103

70:                                               ; preds = %66
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @get_hex(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = call %struct.TYPE_4__* @find_user_label(i8* %75)
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %5, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load i8*, i8** %4, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %87, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %79
  br label %102

97:                                               ; preds = %74
  %98 = load i8*, i8** %4, align 8
  %99 = load i32*, i32** %2, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @add_user_label(i8* %98, i32 %100)
  br label %102

102:                                              ; preds = %97, %96
  br label %105

103:                                              ; preds = %70, %66
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %102
  br label %145

106:                                              ; preds = %62
  %107 = load i8*, i8** %3, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %138, %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @symtable_user_size, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = icmp eq i32 %117, 24
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = call i64 (...) @pager()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %141

123:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symtable_user, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symtable_user, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %130, i8* %136)
  br label %138

138:                                              ; preds = %124
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %111

141:                                              ; preds = %122, %111
  br label %144

142:                                              ; preds = %106
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %141
  br label %145

145:                                              ; preds = %144, %105
  br label %146

146:                                              ; preds = %145, %58
  br label %147

147:                                              ; preds = %146, %50
  br label %148

148:                                              ; preds = %147, %43
  br label %149

149:                                              ; preds = %148, %36
  br label %150

150:                                              ; preds = %149, %28
  ret void
}

declare dso_local i8* @get_token(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Util_strupper(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_user_labels(...) #1

declare dso_local i32 @load_user_labels(i8*) #1

declare dso_local i64 @get_hex(i32*) #1

declare dso_local %struct.TYPE_4__* @find_user_label(i8*) #1

declare dso_local i32 @add_user_label(i8*, i32) #1

declare dso_local i64 @pager(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
