; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_artifact.c_ARTIFACT_WriteConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_artifact.c_ARTIFACT_WriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"ARTIFACT_NTSC=%s\0A\00", align 1
@mode_cfg_strings = common dso_local global i8** null, align 8
@mode_ntsc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"ARTIFACT_PAL=%s\0A\00", align 1
@mode_pal = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"ARTIFACT_NTSC_MODE=%i\0A\00", align 1
@ANTIC_artif_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ARTIFACT_WriteConfig(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i8**, i8*** @mode_cfg_strings, align 8
  %5 = load i64, i64* @mode_ntsc, align 8
  %6 = getelementptr inbounds i8*, i8** %4, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i8**, i8*** @mode_cfg_strings, align 8
  %11 = load i64, i64* @mode_pal, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @ANTIC_artif_mode, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
