; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt3_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt3_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@GXV_KERN_SUBTABLE_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"kern subtable format 3\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"maxGID=%d, but glyphCount=%d\0A\00", align 1
@FT_INVALID_GLYPH_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"kern subtable fmt3 has nonzero value (%d) in unused flag\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@FT_INVALID_OFFSET = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_6__*)* @gxv_kern_subtable_fmt3_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_kern_subtable_fmt3_validate(i64 %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @GXV_KERN_SUBTABLE_HEADER_SIZE, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @GXV_LIMIT_CHECK(i32 6)
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @FT_NEXT_USHORT(i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @FT_NEXT_BYTE(i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @FT_NEXT_BYTE(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @FT_NEXT_BYTE(i64 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @FT_NEXT_BYTE(i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @GXV_TRACE(i8* %48)
  %50 = load i32, i32* @FT_INVALID_GLYPH_ID, align 4
  %51 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %50)
  br label %52

52:                                               ; preds = %41, %3
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %12, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @GXV_TRACE(i8* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i64, i64* %9, align 8
  %61 = mul nsw i64 2, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @GXV_LIMIT_CHECK(i32 %62)
  %64 = load i64, i64* %9, align 8
  %65 = mul nsw i64 2, %64
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @GXV_LIMIT_CHECK(i32 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = call i32 @gxv_array_getlimits_byte(i64 %71, i64 %74, i64* %13, i64* %14, %struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %59
  %86 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %87

87:                                               ; preds = %85, %59
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @GXV_LIMIT_CHECK(i32 %89)
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = call i32 @gxv_array_getlimits_byte(i64 %91, i64 %94, i64* %15, i64* %16, %struct.TYPE_6__* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %16, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %107

107:                                              ; preds = %105, %87
  store i64 0, i64* %17, align 8
  br label %108

108:                                              ; preds = %130, %107
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  store i64 0, i64* %18, align 8
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = call i32 @GXV_LIMIT_CHECK(i32 1)
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @FT_NEXT_BYTE(i64 %120)
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @FT_INVALID_OFFSET, align 4
  br label %125

125:                                              ; preds = %123, %117
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %18, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %18, align 8
  br label %113

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %17, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %17, align 8
  br label %108

133:                                              ; preds = %108
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %4, align 8
  %136 = sub nsw i64 %134, %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i64 @FT_NEXT_USHORT(i64) #1

declare dso_local i64 @FT_NEXT_BYTE(i64) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

declare dso_local i32 @gxv_array_getlimits_byte(i64, i64, i64*, i64*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
