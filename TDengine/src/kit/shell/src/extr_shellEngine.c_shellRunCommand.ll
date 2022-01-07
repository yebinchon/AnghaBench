; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_shellRunCommand.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_shellRunCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32** }

@.str = private unnamed_addr constant [9 x i8] c"^[ \09;]*$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@history = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_HISTORY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"^[ \09]*(quit|q|exit)[ \09;]*$\00", align 1
@REG_ICASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"^[\09 ]*clear[ \09;]*$\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"^[ \09]*source[\09 ]+[^ ]+[ \09;]*$\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" ;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellRunCommand(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @REG_EXTENDED, align 4
  %8 = call i64 @regex_match(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %126

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %18 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %22 = srem i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %16, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %15
  %28 = load i8*, i8** %4, align 8
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %31 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %35 = srem i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %29, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @strcmp(i8* %28, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %27, %15, %11
  %42 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @tfree(i32* %53)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i8*, i8** %4, align 8
  %57 = call i32* @strdup(i8* %56)
  %58 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* %57, i32** %61, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %55
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  br label %74

74:                                               ; preds = %69, %55
  br label %75

75:                                               ; preds = %74, %27
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @shellReplaceCtrlChar(i8* %76)
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @REG_EXTENDED, align 4
  %80 = load i32, i32* @REG_ICASE, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @regex_match(i8* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @taos_close(i32* %85)
  %87 = call i32 (...) @write_history()
  %88 = call i32 (...) @exitShell()
  br label %126

89:                                               ; preds = %75
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* @REG_EXTENDED, align 4
  %92 = load i32, i32* @REG_ICASE, align 4
  %93 = or i32 %91, %92
  %94 = call i64 @regex_match(i8* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %126

98:                                               ; preds = %89
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* @REG_EXTENDED, align 4
  %101 = load i32, i32* @REG_ICASE, align 4
  %102 = or i32 %100, %101
  %103 = call i64 @regex_match(i8* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %98
  %106 = load i8*, i8** %4, align 8
  %107 = call i8* @strtok(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = icmp ne i8* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = icmp ne i8* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @source_file(i32* %117, i8* %118)
  br label %124

120:                                              ; preds = %98
  %121 = load i32*, i32** %3, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @shellRunCommandOnServer(i32* %121, i8* %122)
  br label %124

124:                                              ; preds = %120, %105
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %10, %96, %125, %84
  ret void
}

declare dso_local i64 @regex_match(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @tfree(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @shellReplaceCtrlChar(i8*) #1

declare dso_local i32 @taos_close(i32*) #1

declare dso_local i32 @write_history(...) #1

declare dso_local i32 @exitShell(...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @source_file(i32*, i8*) #1

declare dso_local i32 @shellRunCommandOnServer(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
