; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmort0.c_gxv_mort_subtable_type0_entry_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmort0.c_gxv_mort_subtable_type0_entry_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@GXV_Mort_IndicScript_Msg = common dso_local global %struct.TYPE_10__** null, align 8
@.str = private unnamed_addr constant [47 x i8] c"  IndicScript MorphRule for glyphOffset 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" markFirst=%01d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" dontAdvance=%01d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" markLast=%01d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %02d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"  [odd] a glyph is marked as the first and last  in Indic rearrangement\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [73 x i8] c"  [odd] the first glyph is marked as dontAdvance in Indic rearrangement\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c" non-zero bits found in reserved range\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @gxv_mort_subtable_type0_entry_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_mort_subtable_type0_entry_validate(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, %struct.TYPE_10__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = call i32 @FT_UNUSED(%struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = call i32 @FT_UNUSED(%struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = call i32 @FT_UNUSED(%struct.TYPE_10__* %22)
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @GXV_Mort_IndicScript_Msg, align 8
  %25 = load i64, i64* %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 %25
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call i32 @FT_UNUSED(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = call i32 @FT_UNUSED(%struct.TYPE_10__* %29)
  %31 = load i64, i64* %8, align 8
  %32 = lshr i64 %31, 15
  %33 = and i64 %32, 1
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %8, align 8
  %35 = lshr i64 %34, 14
  %36 = and i64 %35, 1
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %8, align 8
  %38 = lshr i64 %37, 13
  %39 = and i64 %38, 1
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %8, align 8
  %41 = and i64 %40, 8176
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %8, align 8
  %43 = and i64 %42, 15
  store i64 %43, i64* %17, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @GXV_TRACE(i8* %48)
  %50 = load i64, i64* %13, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @GXV_TRACE(i8* %51)
  %53 = load i64, i64* %14, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @GXV_TRACE(i8* %54)
  %56 = load i64, i64* %15, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @GXV_TRACE(i8* %57)
  %59 = load i64, i64* %17, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @GXV_TRACE(i8* %60)
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @GXV_Mort_IndicScript_Msg, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = bitcast %struct.TYPE_10__* %65 to i8*
  %67 = call i32 @GXV_TRACE(i8* %66)
  %68 = load i64, i64* %13, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %6
  %71 = load i64, i64* %15, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @FT_INVALID_DATA, align 4
  %76 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %75)
  br label %77

77:                                               ; preds = %73, %70, %6
  %78 = load i64, i64* %13, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i64, i64* %14, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32, i32* @FT_INVALID_DATA, align 4
  %86 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %85)
  br label %87

87:                                               ; preds = %83, %80, %77
  %88 = load i64, i64* %16, align 8
  %89 = icmp ult i64 0, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %92 = load i32, i32* @FT_INVALID_DATA, align 4
  %93 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %92)
  br label %96

94:                                               ; preds = %87
  %95 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90
  ret void
}

declare dso_local i32 @FT_UNUSED(%struct.TYPE_10__*) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
