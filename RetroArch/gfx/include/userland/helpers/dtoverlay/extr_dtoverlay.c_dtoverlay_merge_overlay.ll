; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_merge_overlay.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_merge_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"fragment@\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fragment-\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Found fragment %s (offset %d)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"__dormant__\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"fragment %s disabled\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"no overlay in fragment %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"invalid target-path '%.*s'\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"no target or target-path\00", align 1
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"invalid target\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"merge failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtoverlay_merge_overlay(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fdt_first_subnode(i32 %17, i32 0)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %148, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %154

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @fdt_get_name(i32 %25, i32 %26, i32* null)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %148

36:                                               ; preds = %31, %22
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 9
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @fdt_subnode_offset(i32 %44, i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %36
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @fdt_subnode_offset(i32 %52, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i8*, i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  br label %62

59:                                               ; preds = %49
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %148

63:                                               ; preds = %36
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i8* @fdt_getprop(i32 %66, i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %12)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %102

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %74, %71
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @fdt_path_offset_namelen(i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %96, i8* %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @NON_FATAL(i32 %99)
  store i32 %100, i32* %3, align 4
  br label %160

101:                                              ; preds = %86
  br label %136

102:                                              ; preds = %63
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i8* @fdt_getprop(i32 %105, i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* %12)
  store i8* %107, i8** %14, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @NON_FATAL(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %160

114:                                              ; preds = %102
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 4
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %119 = call i32 @NON_FATAL(i32 %118)
  store i32 %119, i32* %3, align 4
  br label %160

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @fdt32_to_cpu(i32 %126)
  %128 = call i32 @fdt_node_offset_by_phandle(i32 %123, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @NON_FATAL(i32 %133)
  store i32 %134, i32* %3, align 4
  br label %160

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %101
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @dtoverlay_merge_fragment(%struct.TYPE_6__* %137, i32 %138, %struct.TYPE_6__* %139, i32 %140, i32 0)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %3, align 4
  br label %160

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %62, %35
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @fdt_next_subnode(i32 %151, i32 %152)
  store i32 %153, i32* %6, align 4
  br label %19

154:                                              ; preds = %19
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %154, %144, %131, %117, %110, %95
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @fdt_first_subnode(i32, i32) #1

declare dso_local i8* @fdt_get_name(i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dtoverlay_debug(i8*, i8*, ...) #1

declare dso_local i32 @fdt_subnode_offset(i32, i32, i8*) #1

declare dso_local i32 @dtoverlay_error(i8*, ...) #1

declare dso_local i8* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdt_path_offset_namelen(i32, i8*, i32) #1

declare dso_local i32 @NON_FATAL(i32) #1

declare dso_local i32 @fdt_node_offset_by_phandle(i32, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @dtoverlay_merge_fragment(%struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fdt_next_subnode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
