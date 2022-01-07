; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_merge_fragment.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_merge_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fdt_property = type { i8* }

@dtoverlay_debug_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"merge_fragment(%s,%s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  +prop(%s)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"merge_fragment() end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32, i32)* @dtoverlay_merge_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_merge_fragment(%struct.TYPE_4__* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [256 x i8], align 16
  %15 = alloca [256 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.fdt_property*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %24 = load i64, i64* @dtoverlay_debug_enabled, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %32 = call i32 @fdt_get_path(i32 %29, i32 %30, i8* %31, i32 256)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %38 = call i32 @fdt_get_path(i32 %35, i32 %36, i8* %37, i32 256)
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %41 = call i32 (i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %26, %5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @fdt_first_property_offset(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %127, %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %133

56:                                               ; preds = %54
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @fdt_getprop_by_offset(i32 %59, i32 %60, i8** %16, i32* %18)
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** %16, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %16, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68, %56
  br label %127

77:                                               ; preds = %72, %65
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 (i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %16, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = call %struct.fdt_property* @fdt_get_property_w(i32 %86, i32 %87, i8* %88, i32* %20)
  store %struct.fdt_property* %89, %struct.fdt_property** %19, align 8
  %90 = icmp ne %struct.fdt_property* %89, null
  br i1 %90, label %91, label %117

91:                                               ; preds = %83
  %92 = load i32, i32* %20, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.fdt_property*, %struct.fdt_property** %19, align 8
  %96 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %94
  %102 = load %struct.fdt_property*, %struct.fdt_property** %19, align 8
  %103 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 32, i8* %108, align 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @fdt_appendprop(i32 %111, i32 %112, i8* %113, i8* %114, i32 %115)
  store i32 %116, i32* %13, align 4
  br label %126

117:                                              ; preds = %94, %91, %83, %77
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i8*, i8** %16, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @fdt_setprop(i32 %120, i32 %121, i8* %122, i8* %123, i32 %124)
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %117, %101
  br label %127

127:                                              ; preds = %126, %76
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @fdt_next_property_offset(i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %48

133:                                              ; preds = %54
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @fdt_first_subnode(i32 %136, i32 %137)
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %184, %133
  %140 = load i32, i32* %12, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi i1 [ false, %139 ], [ %144, %142 ]
  br i1 %146, label %147, label %190

147:                                              ; preds = %145
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i8* @fdt_get_name(i32 %150, i32 %151, i32* %22)
  store i8* %152, i8** %21, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i8*, i8** %21, align 8
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @fdt_subnode_offset_namelen(i32 %155, i32 %156, i8* %157, i32 %158)
  store i32 %159, i32* %23, align 4
  %160 = load i32, i32* %23, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %147
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i8*, i8** %21, align 8
  %168 = load i32, i32* %22, align 4
  %169 = call i32 @fdt_add_subnode_namelen(i32 %165, i32 %166, i8* %167, i32 %168)
  store i32 %169, i32* %23, align 4
  br label %170

170:                                              ; preds = %162, %147
  %171 = load i32, i32* %23, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = load i32, i32* %23, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @dtoverlay_merge_fragment(%struct.TYPE_4__* %174, i32 %175, %struct.TYPE_4__* %176, i32 %177, i32 %179)
  store i32 %180, i32* %13, align 4
  br label %183

181:                                              ; preds = %170
  %182 = load i32, i32* %23, align 4
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %181, %173
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @fdt_next_subnode(i32 %187, i32 %188)
  store i32 %189, i32* %12, align 4
  br label %139

190:                                              ; preds = %145
  %191 = call i32 (i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* %13, align 4
  ret i32 %192
}

declare dso_local i32 @fdt_get_path(i32, i32, i8*, i32) #1

declare dso_local i32 @dtoverlay_debug(i8*, ...) #1

declare dso_local i32 @fdt_first_property_offset(i32, i32) #1

declare dso_local i8* @fdt_getprop_by_offset(i32, i32, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property_w(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdt_appendprop(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @fdt_setprop(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @fdt_next_property_offset(i32, i32) #1

declare dso_local i32 @fdt_first_subnode(i32, i32) #1

declare dso_local i8* @fdt_get_name(i32, i32, i32*) #1

declare dso_local i32 @fdt_subnode_offset_namelen(i32, i32, i8*, i32) #1

declare dso_local i32 @fdt_add_subnode_namelen(i32, i32, i8*, i32) #1

declare dso_local i32 @fdt_next_subnode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
