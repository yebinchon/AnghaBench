; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_sin.c_Sin_LoadBSPFileTexinfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_sin.c_Sin_LoadBSPFileTexinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@header = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SIN_BSPHEADER = common dso_local global i64 0, align 8
@SINGAME_BSPHEADER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s is not a IBSP file\00", align 1
@SIN_BSPVERSION = common dso_local global i64 0, align 8
@SINGAME_BSPVERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s is version %i, not %i\00", align 1
@SIN_LUMP_TEXINFO = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@sin_texinfo = common dso_local global %struct.TYPE_8__* null, align 8
@sin_numtexinfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sin_LoadBSPFileTexinfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call %struct.TYPE_8__* @GetMemory(i32 4)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** @header, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @fread(%struct.TYPE_8__* %10, i32 4, i32 1, i32* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %19 = bitcast %struct.TYPE_8__* %18 to i32*
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LittleLong(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %26 = bitcast %struct.TYPE_8__* %25 to i32*
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %24, i32* %29, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SIN_BSPHEADER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SINGAME_BSPHEADER, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %39, %33
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SIN_BSPVERSION, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SINGAME_BSPVERSION, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i8*, i8** %2, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SIN_BSPVERSION, align 8
  %66 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %61, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %60, %54, %48
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i64, i64* @SIN_LUMP_TEXINFO, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* @SIN_LUMP_TEXINFO, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i32 @fseek(i32* %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sin_texinfo, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @fread(%struct.TYPE_8__* %86, i32 %87, i32 1, i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @fclose(i32* %90)
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* @sin_numtexinfo, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @header, align 8
  %97 = call i32 @FreeMemory(%struct.TYPE_8__* %96)
  %98 = call i32 @Sin_SwapBSPFile(i32 0)
  ret void
}

declare dso_local %struct.TYPE_8__* @GetMemory(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @Error(i8*, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_8__*) #1

declare dso_local i32 @Sin_SwapBSPFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
