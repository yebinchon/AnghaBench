; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_ReadAtariState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_ReadAtariState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StateFile = common dso_local global i32* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@nFileError = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not open %s for state read.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ATARI800\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"This is not an Atari800 state save file.\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed read from Atari state file.\00", align 1
@SAVE_VERSION_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"Cannot read this state file because it is an incompatible version.\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Cannot read this state file because this version does not support XEP80.\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Cannot read this state file because this version does not support MIO.\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"Cannot read this state file because this version does not support the Black Box.\00", align 1
@.str.8 = private unnamed_addr constant [86 x i8] c"Cannot read this state file because this version does not support the 1400XL/1450XLD.\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StateSav_ReadAtariState(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** @StateFile, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** @StateFile, align 8
  %17 = call i32 @GZCLOSE(i32* %16)
  store i32* null, i32** @StateFile, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i64, i64* @Z_OK, align 8
  store i64 %19, i64* @nFileError, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @GZOPEN(i8* %20, i8* %21)
  store i32* %22, i32** @StateFile, align 8
  %23 = load i32*, i32** @StateFile, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 (...) @GetGZErrorText()
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %144

30:                                               ; preds = %18
  %31 = load i32*, i32** @StateFile, align 8
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %33 = call i64 (i32*, ...) @GZREAD(i32* %31, i8* %32, i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = call i32 (...) @GetGZErrorText()
  %37 = load i32*, i32** @StateFile, align 8
  %38 = call i32 @GZCLOSE(i32* %37)
  store i32* null, i32** @StateFile, align 8
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %144

40:                                               ; preds = %30
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %42 = call i64 @memcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** @StateFile, align 8
  %47 = call i32 @GZCLOSE(i32* %46)
  store i32* null, i32** @StateFile, align 8
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %144

49:                                               ; preds = %40
  %50 = load i32*, i32** @StateFile, align 8
  %51 = call i64 (i32*, ...) @GZREAD(i32* %50, i32* %7, i32 1)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** @StateFile, align 8
  %55 = call i64 (i32*, ...) @GZREAD(i32* %54, i32* %8, i32 1)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %49
  %58 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 (...) @GetGZErrorText()
  %60 = load i32*, i32** @StateFile, align 8
  %61 = call i32 @GZCLOSE(i32* %60)
  store i32* null, i32** @StateFile, align 8
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %144

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SAVE_VERSION_NUMBER, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %75

70:                                               ; preds = %67, %63
  %71 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32*, i32** @StateFile, align 8
  %73 = call i32 @GZCLOSE(i32* %72)
  store i32* null, i32** @StateFile, align 8
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @Atari800_StateRead(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @CARTRIDGE_StateRead(i32 %81)
  %83 = call i32 (...) @SIO_StateRead()
  br label %84

84:                                               ; preds = %80, %75
  %85 = call i32 (...) @ANTIC_StateRead()
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @CPU_StateRead(i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @GTIA_StateRead(i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @PIA_StateRead(i32 %91)
  %93 = call i32 (...) @POKEY_StateRead()
  %94 = load i32, i32* %7, align 4
  %95 = icmp sge i32 %94, 6
  br i1 %95, label %96, label %134

96:                                               ; preds = %84
  %97 = call i32 @StateSav_ReadINT(i32* %9, i32 1)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32*, i32** @StateFile, align 8
  %103 = call i32 @GZCLOSE(i32* %102)
  store i32* null, i32** @StateFile, align 8
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %144

105:                                              ; preds = %96
  %106 = call i32 (...) @PBI_StateRead()
  %107 = call i32 @StateSav_ReadINT(i32* %10, i32 1)
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32*, i32** @StateFile, align 8
  %113 = call i32 @GZCLOSE(i32* %112)
  store i32* null, i32** @StateFile, align 8
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %144

115:                                              ; preds = %105
  %116 = call i32 @StateSav_ReadINT(i32* %11, i32 1)
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32*, i32** @StateFile, align 8
  %122 = call i32 @GZCLOSE(i32* %121)
  store i32* null, i32** @StateFile, align 8
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %144

124:                                              ; preds = %115
  %125 = call i32 @StateSav_ReadINT(i32* %12, i32 1)
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i32*, i32** @StateFile, align 8
  %131 = call i32 @GZCLOSE(i32* %130)
  store i32* null, i32** @StateFile, align 8
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %3, align 4
  br label %144

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %84
  %135 = load i32*, i32** @StateFile, align 8
  %136 = call i32 @GZCLOSE(i32* %135)
  store i32* null, i32** @StateFile, align 8
  %137 = load i64, i64* @nFileError, align 8
  %138 = load i64, i64* @Z_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %140, %128, %119, %110, %100, %70, %57, %44, %35, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @GZCLOSE(i32*) #1

declare dso_local i32* @GZOPEN(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @GetGZErrorText(...) #1

declare dso_local i64 @GZREAD(i32*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @Atari800_StateRead(i32) #1

declare dso_local i32 @CARTRIDGE_StateRead(i32) #1

declare dso_local i32 @SIO_StateRead(...) #1

declare dso_local i32 @ANTIC_StateRead(...) #1

declare dso_local i32 @CPU_StateRead(i32, i32) #1

declare dso_local i32 @GTIA_StateRead(i32) #1

declare dso_local i32 @PIA_StateRead(i32) #1

declare dso_local i32 @POKEY_StateRead(...) #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #1

declare dso_local i32 @PBI_StateRead(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
