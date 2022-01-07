; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmort2.c_gxv_mort_subtable_type2_ligActionOffset_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmort2.c_gxv_mort_subtable_type2_ligActionOffset_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"too short offset 0x%04x: p < lat_base (%d byte rewind)\0A\00", align 1
@FT_INVALID_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"too large offset 0x%04x: lat_limit < p (%d byte overrun)\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"too short offset 0x%08x: 2 x offset < ligatureTable (%d byte rewind)\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"too long offset 0x%08x: 2 x offset > ligatureTable + ligatureTable_length (%d byte overrun)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_7__*)* @gxv_mort_subtable_type2_ligActionOffset_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_mort_subtable_type2_ligActionOffset_validate(i64 %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @GXV_32BIT_ALIGNMENT_VALIDATE(i64 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %3
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @GXV_TRACE(i8* %42)
  %44 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %45 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %44)
  br label %116

46:                                               ; preds = %3
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @GXV_TRACE(i8* %55)
  %57 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %58 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %57)
  br label %115

59:                                               ; preds = %46
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @FT_NEXT_ULONG(i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, 1073741823
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %66, 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %59
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sub nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @GXV_TRACE(i8* %81)
  %83 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %84 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %83)
  br label %114

85:                                               ; preds = %59
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = icmp sgt i32 %87, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %85
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 %105, 2
  %107 = sub nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @GXV_TRACE(i8* %109)
  %111 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %112 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %111)
  br label %113

113:                                              ; preds = %96, %85
  br label %114

114:                                              ; preds = %113, %72
  br label %115

115:                                              ; preds = %114, %50
  br label %116

116:                                              ; preds = %115, %37
  ret void
}

declare dso_local i32 @GXV_32BIT_ALIGNMENT_VALIDATE(i64) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

declare dso_local i32 @FT_NEXT_ULONG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
