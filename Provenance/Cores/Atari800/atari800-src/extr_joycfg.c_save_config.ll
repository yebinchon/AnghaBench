; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_save_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_save_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"atari800.cfg\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error opening atari800.cfg!\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"atari800.tmp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Error creating temporary file atari800.tmp!\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"JOYSTICK_\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"KEYSET_\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"KEYSET_%i=%i %i %i %i %i %i %i %i %i\0A\00", align 1
@keysets = common dso_local global i32** null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"JOYSTICK_%i=%s\0A\00", align 1
@joyparams = common dso_local global i8** null, align 8
@joytypes = common dso_local global i64* null, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"Configuration successfully saved.\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Error when renaming atari800.tmp to atari800.cfg!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_config() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %155

9:                                                ; preds = %0
  %10 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @fclose(i32* %14)
  br label %155

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %34, %16
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @fgets(i8* %18, i32 256, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @fputs(i8* %31, i32* %32)
  br label %34

34:                                               ; preds = %30, %26, %22
  br label %17

35:                                               ; preds = %17
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %39 = call i32 @strlen(i8* %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %43, %35
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %124, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %127

57:                                               ; preds = %54
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32**, i32*** @keysets, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32**, i32*** @keysets, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32**, i32*** @keysets, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32**, i32*** @keysets, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32**, i32*** @keysets, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32**, i32*** @keysets, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32**, i32*** @keysets, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = load i32**, i32*** @keysets, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 7
  %115 = load i32, i32* %114, align 4
  %116 = load i32**, i32*** @keysets, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %59, i32 %66, i32 %73, i32 %80, i32 %87, i32 %94, i32 %101, i32 %108, i32 %115, i32 %122)
  br label %124

124:                                              ; preds = %57
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %54

127:                                              ; preds = %54
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %143, %127
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32*, i32** %2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i8**, i8*** @joyparams, align 8
  %135 = load i64*, i64** @joytypes, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i8*, i8** %134, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %133, i8* %141)
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %128

146:                                              ; preds = %128
  %147 = load i32*, i32** %2, align 8
  %148 = call i32 @fclose(i32* %147)
  %149 = call i64 @rename(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %155

153:                                              ; preds = %146
  %154 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  br label %155

155:                                              ; preds = %7, %12, %153, %151
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
