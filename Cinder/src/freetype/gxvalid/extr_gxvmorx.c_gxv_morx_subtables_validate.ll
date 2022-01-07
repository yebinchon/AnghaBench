; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx.c_gxv_morx_subtables_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx.c_gxv_morx_subtables_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@__const.gxv_morx_subtables_validate.fmt_funcs_table = private unnamed_addr constant [6 x i32 (i64, i64, %struct.TYPE_10__*)*] [i32 (i64, i64, %struct.TYPE_10__*)* @gxv_morx_subtable_type0_validate, i32 (i64, i64, %struct.TYPE_10__*)* @gxv_morx_subtable_type1_validate, i32 (i64, i64, %struct.TYPE_10__*)* @gxv_morx_subtable_type2_validate, i32 (i64, i64, %struct.TYPE_10__*)* null, i32 (i64, i64, %struct.TYPE_10__*)* @gxv_morx_subtable_type4_validate, i32 (i64, i64, %struct.TYPE_10__*)* @gxv_morx_subtable_type5_validate], align 16
@.str = private unnamed_addr constant [21 x i8] c"subtables in a chain\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"validating chain subtable %d/%d (%d bytes)\0A\00", align 1
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"morx type %d is reserved\0A\00", align 1
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, %struct.TYPE_10__*)* @gxv_morx_subtables_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_subtables_validate(i64 %0, i64 %1, i64 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i32 (i64, i64, %struct.TYPE_10__*)*], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32 (i64, i64, %struct.TYPE_10__*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %9, align 8
  %18 = bitcast [6 x i32 (i64, i64, %struct.TYPE_10__*)*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([6 x i32 (i64, i64, %struct.TYPE_10__*)*]* @__const.gxv_morx_subtables_validate.fmt_funcs_table to i8*), i64 48, i1 false)
  %19 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %81, %4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = call i32 @GXV_LIMIT_CHECK(i32 12)
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @FT_NEXT_ULONG(i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @FT_NEXT_ULONG(i64 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 4
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %32, 1
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @GXV_TRACE(i8* %37)
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, 7
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 12
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @GXV_LIMIT_CHECK(i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 16
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = call i32 @gxv_mort_coverage_validate(i64 %49, %struct.TYPE_10__* %50)
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 5
  br i1 %53, label %54, label %56

54:                                               ; preds = %24
  %55 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x i32 (i64, i64, %struct.TYPE_10__*)*], [6 x i32 (i64, i64, %struct.TYPE_10__*)*]* %10, i64 0, i64 %58
  %60 = load i32 (i64, i64, %struct.TYPE_10__*)*, i32 (i64, i64, %struct.TYPE_10__*)** %59, align 8
  store i32 (i64, i64, %struct.TYPE_10__*)* %60, i32 (i64, i64, %struct.TYPE_10__*)** %12, align 8
  %61 = load i32 (i64, i64, %struct.TYPE_10__*)*, i32 (i64, i64, %struct.TYPE_10__*)** %12, align 8
  %62 = icmp ne i32 (i64, i64, %struct.TYPE_10__*)* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @GXV_TRACE(i8* %66)
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i32 (i64, i64, %struct.TYPE_10__*)*, i32 (i64, i64, %struct.TYPE_10__*)** %12, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = call i32 %69(i64 %70, i64 %74, %struct.TYPE_10__* %75)
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %68
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %20

84:                                               ; preds = %20
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %5, align 8
  %87 = sub nsw i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @gxv_morx_subtable_type0_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_morx_subtable_type1_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_morx_subtable_type2_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_morx_subtable_type4_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_morx_subtable_type5_validate(i64, i64, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_ULONG(i64) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @gxv_mort_coverage_validate(i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
