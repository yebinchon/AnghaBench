; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_LoadCPalette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_LoadCPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpalette = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" Error loading custom palette from file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @LoadCPalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadCPalette() #0 {
  %1 = alloca [192 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = load i8*, i8** @cpalette, align 8
  %4 = call i32* @FCEUD_UTF8fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i8*, i8** @cpalette, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  br label %17

9:                                                ; preds = %0
  %10 = getelementptr inbounds [192 x i32], [192 x i32]* %1, i64 0, i64 0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @fread(i32* %10, i32 1, i32 192, i32* %11)
  %13 = getelementptr inbounds [192 x i32], [192 x i32]* %1, i64 0, i64 0
  %14 = call i32 @FCEUI_SetPaletteArray(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @fclose(i32* %15)
  br label %17

17:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32* @FCEUD_UTF8fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @FCEUI_SetPaletteArray(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
