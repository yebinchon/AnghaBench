; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvjust.c_gxv_just_justData_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvjust.c_gxv_just_justData_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@odtect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"just justData\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c" (justClassTableOffset = 0x%04x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" (wdcTableOffset = 0x%04x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" (pcTableOffset = 0x%04x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"just_LookupTable\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"just_wdcTable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"just_pcTable\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"just_justClassTable\00", align 1
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_10__*)* @gxv_just_justData_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_just_justData_validate(i64 %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* @odtect, align 4
  %13 = call i32 @GXV_ODTECT(i32 4, i32 %12)
  %14 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @odtect, align 4
  %16 = call i32 @GXV_ODTECT_INIT(i32 %15)
  %17 = call i32 @GXV_LIMIT_CHECK(i32 6)
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @FT_NEXT_USHORT(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @FT_NEXT_USHORT(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @FT_NEXT_USHORT(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @GXV_TRACE(i8* %25)
  %27 = load i64, i64* %8, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @GXV_TRACE(i8* %28)
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @GXV_TRACE(i8* %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = call i32 @gxv_just_justData_lookuptable_validate(i64 %33, i64 %34, %struct.TYPE_10__* %35)
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @odtect, align 4
  %42 = call i32 @gxv_odtect_add_range(i64 %37, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i32 @gxv_just_widthDeltaClusters_validate(i64 %52, i64 %53, %struct.TYPE_10__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @odtect, align 4
  %67 = call i32 @gxv_odtect_add_range(i64 %62, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %45, %3
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = call i32 @gxv_just_postcompTable_validate(i64 %78, i64 %79, %struct.TYPE_10__* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @odtect, align 4
  %93 = call i32 @gxv_odtect_add_range(i64 %88, i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %71, %68
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = call i32 @gxv_just_justClassTable_validate(i64 %104, i64 %105, %struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @odtect, align 4
  %119 = call i32 @gxv_odtect_add_range(i64 %114, i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %97, %94
  %121 = load i32, i32* @odtect, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = call i32 @gxv_odtect_validate(i32 %121, %struct.TYPE_10__* %122)
  %124 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_ODTECT(i32, i32) #1

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_ODTECT_INIT(i32) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i64 @FT_NEXT_USHORT(i64) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @gxv_just_justData_lookuptable_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_odtect_add_range(i64, i32, i8*, i32) #1

declare dso_local i32 @gxv_just_widthDeltaClusters_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_just_postcompTable_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_just_justClassTable_validate(i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @gxv_odtect_validate(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
