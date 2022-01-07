; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvprop.c_gxv_prop_property_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvprop.c_gxv_prop_property_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GXV_PROP_FLOATER = common dso_local global i64 0, align 8
@GXV_PROP_USE_COMPLEMENTARY_BRACKET = common dso_local global i64 0, align 8
@GXV_PROP_COMPLEMENTARY_BRACKET_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"  found zero offset to property\0A\00", align 1
@FT_INVALID_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"  found non-positive glyph complement\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"glyph %d cannot have complementary bracketing\0A\00", align 1
@GXV_PROP_ATTACHING_TO_RIGHT = common dso_local global i64 0, align 8
@version = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"  found older version (1.0) in new version table\0A\00", align 1
@GXV_PROP_RESERVED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"  found non-zero bits in reserved bits\0A\00", align 1
@GXV_PROP_DIRECTIONALITY_CLASS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"  found too old version in directionality class\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @gxv_prop_property_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_prop_property_validate(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @GXV_PROP_FLOATER, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @gxv_prop_zero_advance_validate(i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %11, %3
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @GXV_PROP_USE_COMPLEMENTARY_BRACKET, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @GXV_PROP_COMPLEMENTARY_BRACKET_OFFSET, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @FT_INVALID_OFFSET, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i64, i64* %7, align 8
  %36 = ashr i64 %35, 8
  %37 = trunc i64 %36 to i8
  store i8 %37, i8* %8, align 1
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 7
  %46 = add nsw i32 %45, 1
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %8, align 1
  %48 = load i64, i64* %5, align 8
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i64
  %51 = icmp sle i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %55

55:                                               ; preds = %52, %42
  br label %63

56:                                               ; preds = %34
  %57 = load i64, i64* %5, align 8
  %58 = load i8, i8* %8, align 1
  %59 = sext i8 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @gxv_glyphid_validate(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %55
  br label %74

64:                                               ; preds = %20
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @GXV_PROP_COMPLEMENTARY_BRACKET_OFFSET, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* %5, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @GXV_TRACE(i8* %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @GXV_PROP_ATTACHING_TO_RIGHT, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32, i32* @version, align 4
  %81 = call i32 @GXV_PROP_DATA(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, 65536
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @GXV_PROP_RESERVED, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @GXV_PROP_DIRECTIONALITY_CLASS, align 8
  %99 = and i64 %97, %98
  %100 = icmp sgt i64 %99, 11
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load i32, i32* @version, align 4
  %103 = call i32 @GXV_PROP_DATA(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = icmp eq i64 %104, 65536
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @version, align 4
  %108 = call i32 @GXV_PROP_DATA(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %109, 131072
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %101
  %112 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %96
  ret void
}

declare dso_local i32 @gxv_prop_zero_advance_validate(i64, i32) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @gxv_glyphid_validate(i64, i32) #1

declare dso_local i32 @GXV_PROP_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
