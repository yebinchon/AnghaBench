; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_resolve_fixups.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_resolve_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"/__fixups__\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/__symbols__\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No symbols found\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"__fixups__ are borked\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"can't find symbol '%s'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s '%s' is invalid\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"failed to add a phandle\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  phandle '%s'->%d\00", align 1
@FIXUP_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*)* @dtoverlay_resolve_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_resolve_fixups(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @fdt_path_offset(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %140

23:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fdt_first_property_offset(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fdt_path_offset(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %142

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %23
  br label %44

44:                                               ; preds = %133, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %139

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @fdt_getprop_by_offset(i32 %50, i32 %51, i8** %11, i32* %7)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %139

57:                                               ; preds = %47
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i8*, i8** %11, align 8
  store i8* %64, i8** %12, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %78

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @fdt_getprop(i32 %68, i32 %69, i8* %70, i32* %7)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %139

77:                                               ; preds = %65
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @fdt_path_offset(i32 %81, i8* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %7, align 4
  br label %139

91:                                               ; preds = %78
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @fdt_get_phandle(i32 %94, i32 %95)
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @cpu_to_fdt32(i64 %104)
  store i32 %105, i32* %16, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @fdt_setprop(i32 %108, i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* %16, i32 4)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %139

115:                                              ; preds = %99
  %116 = load i8*, i8** %12, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @phandle_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %116, i64 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @fdt_path_offset(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %115, %91
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i32, i32* @FIXUP_ABSOLUTE, align 4
  %128 = call i32 @dtoverlay_apply_fixups(%struct.TYPE_5__* %124, i8* %125, i64 %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %139

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @fdt_next_property_offset(i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  br label %44

139:                                              ; preds = %131, %113, %86, %74, %55, %44
  br label %140

140:                                              ; preds = %139, %2
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %38
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @fdt_path_offset(i32, i8*) #1

declare dso_local i32 @fdt_first_property_offset(i32, i32) #1

declare dso_local i32 @dtoverlay_error(i8*, ...) #1

declare dso_local i8* @fdt_getprop_by_offset(i32, i32, i8**, i32*) #1

declare dso_local i8* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i64 @fdt_get_phandle(i32, i32) #1

declare dso_local i32 @cpu_to_fdt32(i64) #1

declare dso_local i32 @fdt_setprop(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @phandle_debug(i8*, i8*, i64) #1

declare dso_local i32 @dtoverlay_apply_fixups(%struct.TYPE_5__*, i8*, i64, i32) #1

declare dso_local i32 @fdt_next_property_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
