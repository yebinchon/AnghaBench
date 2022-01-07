; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvgpos.c_otv_SinglePos_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvgpos.c_otv_SinglePos_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"SinglePos\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" (format %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" (ValueCount = %d)\0A\00", align 1
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @otv_SinglePos_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_SinglePos_validate(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @FT_NEXT_USHORT(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @OTV_TRACE(i8* %20)
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %80 [
    i32 1, label %26
    i32 2, label %41
  ]

26:                                               ; preds = %2
  %27 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @FT_NEXT_USHORT(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @FT_NEXT_USHORT(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = call i32 @otv_Coverage_validate(i32 %34, %struct.TYPE_5__* %35, i32 -1)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = call i32 @otv_ValueRecord_validate(i32 %37, i32 %38, %struct.TYPE_5__* %39)
  br label %82

41:                                               ; preds = %2
  %42 = call i32 @OTV_LIMIT_CHECK(i32 6)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @FT_NEXT_USHORT(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FT_NEXT_USHORT(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @FT_NEXT_USHORT(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @OTV_TRACE(i8* %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @otv_value_length(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @otv_Coverage_validate(i32 %57, %struct.TYPE_5__* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = call i32 @OTV_LIMIT_CHECK(i32 %63)
  br label %65

65:                                               ; preds = %76, %41
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = call i32 @otv_ValueRecord_validate(i32 %69, i32 %70, %struct.TYPE_5__* %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %11, align 4
  br label %65

79:                                               ; preds = %65
  br label %82

80:                                               ; preds = %2
  %81 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %82

82:                                               ; preds = %80, %79, %26
  %83 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @otv_Coverage_validate(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @otv_ValueRecord_validate(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @otv_value_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
