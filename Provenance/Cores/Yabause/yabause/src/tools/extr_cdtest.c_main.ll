; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_cdtest.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_cdtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8*)*, i32 (...)*, i32 (i32)*, i32 (i32, i64)* }

@__const.main.syncheader = private unnamed_addr constant [12 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00", align 1
@cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s v%s - by Cyber Warrior X(c)%s\0A\00", align 1
@PROG_NAME = common dso_local global i8* null, align 8
@VER_NAME = common dso_local global i8* null, align 8
@COPYRIGHT_YEAR = common dso_local global i8* null, align 8
@ArchCD = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"CDInit error: Unable to initialize cdrom\0A\00", align 1
@testspassed = common dso_local global i32 0, align 4
@cdTOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"CDReadToc error: return value was not the correct size\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"CDReadToc error: TOC data has some issues\0A\00", align 1
@cdbuffer = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"CDReadSectorFAD error: Reading of LBA 0(FAD 150) returned false\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"CDReadSectorFAD error: LBA 0(FAD 150) read is missing sync header\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SEGA SEGASATURN\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"CDReadSectorFAD error: LBA 0(FAD 150)'s sector contents were not as expected\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"CDReadSectorFAD error: Reading of LBA 16(FAD 166) returned false\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"CDReadSectorFAD error: LBA 16(FAD 166) read is missing sync header\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"CD001\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"CDReadSectorFAD error: LBA 16(FAD 166)'s sector contents were not as expected\0A\00", align 1
@.str.12 = private unnamed_addr constant [107 x i8] c"CDGetStatus error: Can't continue the rest of the test - There's either no CD present or the tray is open\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = bitcast [12 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.main.syncheader, i32 0, i32 0), i64 12, i1 false)
  %11 = load i32, i32* @cleanup, align 4
  %12 = call i32 @atexit(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @ProgramUsage()
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8*, i8** @PROG_NAME, align 8
  %19 = load i8*, i8** @VER_NAME, align 8
  %20 = load i8*, i8** @COPYRIGHT_YEAR, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19, i8* %20)
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ArchCD, i32 0, i32 0), align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 %25(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #4
  unreachable

32:                                               ; preds = %17
  %33 = load i32, i32* @testspassed, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @testspassed, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ArchCD, i32 0, i32 1), align 8
  %37 = call i32 (...) %36()
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %125

43:                                               ; preds = %40, %35
  %44 = load i32, i32* @testspassed, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @testspassed, align 4
  %46 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ArchCD, i32 0, i32 2), align 8
  %47 = load i32, i32* @cdTOC, align 4
  %48 = call i32 %46(i32 %47)
  %49 = icmp ne i32 %48, 408
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @testspassed, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @testspassed, align 4
  br label %55

55:                                               ; preds = %52, %50
  %56 = load i32, i32* @cdTOC, align 4
  %57 = call i32 @IsTOCValid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @testspassed, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @testspassed, align 4
  br label %64

64:                                               ; preds = %61, %59
  %65 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ArchCD, i32 0, i32 3), align 8
  %66 = load i64, i64* @cdbuffer, align 8
  %67 = call i32 %65(i32 150, i64 %66)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @testspassed, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @testspassed, align 4
  br label %74

74:                                               ; preds = %71, %69
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %76 = load i64, i64* @cdbuffer, align 8
  %77 = call i64 @memcmp(i8* %75, i64 %76, i32 12)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  br label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @testspassed, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @testspassed, align 4
  br label %84

84:                                               ; preds = %81, %79
  %85 = load i64, i64* @cdbuffer, align 8
  %86 = add nsw i64 %85, 16
  %87 = call i64 @memcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %86, i32 15)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0))
  br label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @testspassed, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @testspassed, align 4
  br label %94

94:                                               ; preds = %91, %89
  %95 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ArchCD, i32 0, i32 3), align 8
  %96 = load i64, i64* @cdbuffer, align 8
  %97 = call i32 %95(i32 166, i64 %96)
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  br label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @testspassed, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @testspassed, align 4
  br label %104

104:                                              ; preds = %101, %99
  %105 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %106 = load i64, i64* @cdbuffer, align 8
  %107 = call i64 @memcmp(i8* %105, i64 %106, i32 12)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  br label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @testspassed, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @testspassed, align 4
  br label %114

114:                                              ; preds = %111, %109
  %115 = load i64, i64* @cdbuffer, align 8
  %116 = add nsw i64 %115, 17
  %117 = call i64 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %116, i32 5)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0))
  br label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @testspassed, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @testspassed, align 4
  br label %124

124:                                              ; preds = %121, %119
  br label %128

125:                                              ; preds = %40
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.12, i64 0, i64 0))
  %127 = call i32 @exit(i32 1) #4
  unreachable

128:                                              ; preds = %124
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @atexit(i32) #2

declare dso_local i32 @ProgramUsage(...) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @IsTOCValid(i32) #2

declare dso_local i64 @memcmp(i8*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
