; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_Dump_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_Dump_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i16*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"usage: condump <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Dumped console text to %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ERROR: couldn't open.\0A\00", align 1
@con = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_Dump_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = call i32 (...) @Cmd_Argc()
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %137

11:                                               ; preds = %0
  %12 = call i32 @Cmd_Argv(i32 1)
  %13 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = call i32 @Cmd_Argv(i32 1)
  %15 = call i32 @FS_FOpenFileWrite(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %137

20:                                               ; preds = %11
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %62, %20
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %33 = srem i32 %31, %32
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %30, i64 %36
  store i16* %37, i16** %4, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %53, %29
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i16*, i16** %4, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %49, 32
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %38

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %25

65:                                               ; preds = %60, %25
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %67
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %131, %65
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %134

73:                                               ; preds = %69
  %74 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %77 = srem i32 %75, %76
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %74, i64 %80
  store i16* %81, i16** %4, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %98, %73
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i16*, i16** %4, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %96
  store i8 %94, i8* %97, align 1
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %120, %101
  %105 = load i32, i32* %2, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %104
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %116
  store i8 0, i8* %117, align 1
  br label %119

118:                                              ; preds = %107
  br label %123

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %2, align 4
  br label %104

123:                                              ; preds = %118, %104
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %125 = call i32 @strcat(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %128 = call i32 @strlen(i8* %127)
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @FS_Write(i8* %126, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %1, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %1, align 4
  br label %69

134:                                              ; preds = %69
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @FS_FCloseFile(i32 %135)
  br label %137

137:                                              ; preds = %134, %18, %9
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @FS_FOpenFileWrite(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @FS_Write(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FS_FCloseFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
