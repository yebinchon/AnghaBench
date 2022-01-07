; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_apply_fixups_node.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_apply_fixups_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"  phandle fixup %d+%d->%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @dtoverlay_apply_fixups_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_apply_fixups_node(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fdt_first_property_offset(i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %97, %4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %103

37:                                               ; preds = %35
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @fdt_getprop_by_offset(i32 %40, i32 %41, i8** %13, i32* %15)
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %149

48:                                               ; preds = %37
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call i8* @fdt_getprop_w(i32 %51, i32 %52, i8* %53, i32* %17)
  store i8* %54, i8** %16, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %149

60:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %62, 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %61
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @dtoverlay_read_u32(i8* %67, i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %149

77:                                               ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %16, align 8
  %80 = load i32, i32* %20, align 4
  %81 = call i32 @dtoverlay_read_u32(i8* %79, i32 %80)
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @phandle_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86, i32 %87)
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %19, align 4
  %92 = call i32 @dtoverlay_write_u32(i8* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %18, align 4
  br label %61

96:                                               ; preds = %61
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @fdt_next_property_offset(i32 %100, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %29

103:                                              ; preds = %35
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @fdt_first_subnode(i32 %106, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %141, %103
  %110 = load i32, i32* %12, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i1 [ false, %109 ], [ %114, %112 ]
  br i1 %116, label %117, label %147

117:                                              ; preds = %115
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i8* @fdt_get_name(i32 %120, i32 %121, i32* %22)
  store i8* %122, i8** %21, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** %21, align 8
  %128 = load i32, i32* %22, align 4
  %129 = call i32 @fdt_subnode_offset_namelen(i32 %125, i32 %126, i8* %127, i32 %128)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %117
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @dtoverlay_apply_fixups_node(%struct.TYPE_3__* %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %10, align 4
  br label %140

138:                                              ; preds = %117
  %139 = load i32, i32* %23, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %138, %132
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @fdt_next_subnode(i32 %144, i32 %145)
  store i32 %146, i32* %12, align 4
  br label %109

147:                                              ; preds = %115
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %74, %57, %45
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @fdt_first_property_offset(i32, i32) #1

declare dso_local i8* @fdt_getprop_by_offset(i32, i32, i8**, i32*) #1

declare dso_local i8* @fdt_getprop_w(i32, i32, i8*, i32*) #1

declare dso_local i32 @dtoverlay_read_u32(i8*, i32) #1

declare dso_local i32 @phandle_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @dtoverlay_write_u32(i8*, i32, i32) #1

declare dso_local i32 @fdt_next_property_offset(i32, i32) #1

declare dso_local i32 @fdt_first_subnode(i32, i32) #1

declare dso_local i8* @fdt_get_name(i32, i32, i32*) #1

declare dso_local i32 @fdt_subnode_offset_namelen(i32, i32, i8*, i32) #1

declare dso_local i32 @fdt_next_subnode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
