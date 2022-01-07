; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvgsub.c_otv_ReverseChainSingleSubst_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvgsub.c_otv_ReverseChainSingleSubst_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ReverseChainSingleSubst\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" (format %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" (BacktrackGlyphCount = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" (LookaheadGlyphCount = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" (GlyphCount = %d)\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @otv_ReverseChainSingleSubst_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_ReverseChainSingleSubst_validate(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  %12 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @FT_NEXT_USHORT(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @OTV_TRACE(i8* %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %111 [
    i32 1, label %21
  ]

21:                                               ; preds = %2
  %22 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FT_NEXT_USHORT(i32 %24)
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FT_NEXT_USHORT(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @OTV_TRACE(i8* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = call i32 @otv_Coverage_validate(i32 %33, %struct.TYPE_4__* %34, i32 -1)
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 2
  %39 = call i32 @OTV_LIMIT_CHECK(i32 %38)
  br label %40

40:                                               ; preds = %50, %21
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FT_NEXT_USHORT(i32 %45)
  %47 = add nsw i32 %44, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = call i32 @otv_Coverage_validate(i32 %47, %struct.TYPE_4__* %48, i32 -1)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @FT_NEXT_USHORT(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @OTV_TRACE(i8* %58)
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %61, 2
  %63 = call i32 @OTV_LIMIT_CHECK(i32 %62)
  br label %64

64:                                               ; preds = %74, %53
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @FT_NEXT_USHORT(i32 %69)
  %71 = add nsw i32 %68, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = call i32 @otv_Coverage_validate(i32 %71, %struct.TYPE_4__* %72, i32 -1)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @FT_NEXT_USHORT(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @OTV_TRACE(i8* %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @otv_Coverage_get_count(i32 %85)
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %91, 2
  %93 = call i32 @OTV_LIMIT_CHECK(i32 %92)
  br label %94

94:                                               ; preds = %107, %90
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @FT_NEXT_USHORT(i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %106

106:                                              ; preds = %104, %97
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %10, align 4
  br label %94

110:                                              ; preds = %94
  br label %113

111:                                              ; preds = %2
  %112 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @otv_Coverage_validate(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @otv_Coverage_get_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
