; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_subtable_setup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_subtable_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"subtable boundaries setup\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"classTable: offset=0x%08x length=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"stateArray: offset=0x%08x length=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"entryTable: offset=0x%08x length=0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"ligActionTable: offset=0x%08x length=0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"componentTable: offset=0x%08x length=0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"ligatureTable:  offset=0x%08x length=0x%08x\0A\00", align 1
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_8__*)* @gxv_morx_subtable_type2_subtable_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_subtable_type2_subtable_setup(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, %struct.TYPE_8__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca [6 x i32], align 16
  %18 = alloca [6 x i32*], align 16
  %19 = alloca [7 x i32], align 16
  %20 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %20, align 8
  %27 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 4
  store i32 %40, i32* %41, align 16
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 5
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 0
  store i32* %46, i32** %47, align 16
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 1
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 2
  store i32* %50, i32** %51, align 16
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 3
  store i32* %53, i32** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 4
  store i32* %56, i32** %57, align 16
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 5
  store i32* %59, i32** %60, align 8
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %62 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 0
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 0
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %66 = call i32 @gxv_set_length_by_ulong_offset(i32* %61, i32** %62, i32* %63, i32 6, i32 %64, %struct.TYPE_8__* %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @GXV_TRACE(i8* %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @GXV_TRACE(i8* %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @GXV_TRACE(i8* %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @GXV_TRACE(i8* %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @GXV_TRACE(i8* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @GXV_TRACE(i8* %110)
  %112 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @gxv_set_length_by_ulong_offset(i32*, i32**, i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
