; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_mainmenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_mainmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Joystick %i: %s\00", align 1
@joysticks = common dso_local global i8** null, align 8
@joytypes = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Select function\00", align 1
@BACKGROUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Configure keyset 0\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Configure keyset 1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Configure keyset 2\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Configure keyset 3\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Test keyboard collisions\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Save and exit\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Exit without saving\00", align 1
@JOYSTICKTYPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mainmenu() #0 {
  %1 = alloca [4 x [80 x i8]], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %139, %0
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %24, %5
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x [80 x i8]], [4 x [80 x i8]]* %1, i64 0, i64 %11
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %14 = load i32, i32* %2, align 4
  %15 = load i8**, i8*** @joysticks, align 8
  %16 = load i64*, i64** @joytypes, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8*, i8** %15, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %22)
  br label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load i32, i32* @BACKGROUND, align 4
  %29 = getelementptr inbounds [4 x [80 x i8]], [4 x [80 x i8]]* %1, i64 0, i64 0
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %29, i64 0, i64 0
  %31 = getelementptr inbounds [4 x [80 x i8]], [4 x [80 x i8]]* %1, i64 0, i64 1
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %31, i64 0, i64 0
  %33 = getelementptr inbounds [4 x [80 x i8]], [4 x [80 x i8]]* %1, i64 0, i64 2
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %33, i64 0, i64 0
  %35 = getelementptr inbounds [4 x [80 x i8]], [4 x [80 x i8]]* %1, i64 0, i64 3
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %35, i64 0, i64 0
  %37 = call i32 @SelectItem(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %3, i32 %28, i8* %30, i8* %32, i8* %34, i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32* null)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %126 [
    i32 333, label %39
    i32 331, label %63
    i32 13, label %88
  ]

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i64*, i64** @joytypes, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i64*, i64** @joytypes, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @JOYSTICKTYPES, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load i64*, i64** @joytypes, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %42
  br label %62

62:                                               ; preds = %61, %39
  br label %126

63:                                               ; preds = %27
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = load i64*, i64** @joytypes, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = load i64*, i64** @joytypes, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i64, i64* @JOYSTICKTYPES, align 8
  %81 = sub i64 %80, 1
  %82 = load i64*, i64** @joytypes, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %81, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %66
  br label %87

87:                                               ; preds = %86, %63
  br label %126

88:                                               ; preds = %27
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %111

91:                                               ; preds = %88
  %92 = load i64*, i64** @joytypes, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load i64*, i64** @joytypes, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @JOYSTICKTYPES, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %91
  %106 = load i64*, i64** @joytypes, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %91
  br label %125

111:                                              ; preds = %88
  %112 = load i32, i32* %3, align 4
  %113 = icmp slt i32 %112, 9
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %3, align 4
  %116 = sub nsw i32 %115, 5
  %117 = call i32 @setupkeyset(i32 %116)
  br label %124

118:                                              ; preds = %111
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (...) @testcollisions()
  br label %123

123:                                              ; preds = %121, %118
  br label %124

124:                                              ; preds = %123, %114
  br label %125

125:                                              ; preds = %124, %110
  br label %126

126:                                              ; preds = %27, %125, %87, %62
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 27
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = icmp eq i32 %131, 13
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %3, align 4
  %135 = icmp sge i32 %134, 12
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i1 [ false, %130 ], [ %135, %133 ]
  %138 = xor i1 %137, true
  br label %139

139:                                              ; preds = %136, %127
  %140 = phi i1 [ false, %127 ], [ %138, %136 ]
  br i1 %140, label %5, label %141

141:                                              ; preds = %139
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %142, 13
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 12
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  ret i32 %149
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @SelectItem(i8*, i32*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @setupkeyset(i32) #1

declare dso_local i32 @testcollisions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
