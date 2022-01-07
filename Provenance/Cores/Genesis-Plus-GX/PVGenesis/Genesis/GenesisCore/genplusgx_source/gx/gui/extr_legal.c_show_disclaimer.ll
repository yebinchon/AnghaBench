; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_legal.c_show_disclaimer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_legal.c_show_disclaimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"DISCLAIMER\00", align 1
@WHITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"This is a free software, and you are welcome\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"to redistribute it under the conditions of the\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"license that you should have received with this\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"program. You may not sell, lease, rent or generally\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"use this software in any commercial product or activity.\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Authors can not be held responsible for any damage or\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"or dysfunction that could occur while using this port.\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"You may not distribute this software with any ROM image\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"unless you have the legal right to distribute them.\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"This software is not endorsed by or affiliated\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"with Sega Enterprises Ltd or Nintendo Co Ltd.\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"All trademarks and registered trademarks are\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"the property of their respective owners.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_disclaimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_disclaimer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i64, i64* @WHITE, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 22, i32 0, i32 640, i32 %3, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i64, i64* @WHITE, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %9, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 20
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i64, i64* @WHITE, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %15, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 20
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i64, i64* @WHITE, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %21, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 20
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i64, i64* @WHITE, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %27, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 20
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i64, i64* @WHITE, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %33, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 20
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i64, i64* @WHITE, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %39, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 20
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i64, i64* @WHITE, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %45, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 20
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i64, i64* @WHITE, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %51, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 20
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i64, i64* @WHITE, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %57, i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 20
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i64, i64* @WHITE, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %63, i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 20
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i64, i64* @WHITE, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %69, i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 20
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i64, i64* @WHITE, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %75, i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 20
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = load i64, i64* @WHITE, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 20, i32 0, i32 640, i32 %81, i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 38
  store i32 %86, i32* %2, align 4
  ret void
}

declare dso_local i32 @FONT_writeCenter(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
