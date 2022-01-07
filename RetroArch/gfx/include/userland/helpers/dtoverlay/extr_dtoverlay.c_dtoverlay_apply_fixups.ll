; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_apply_fixups.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_apply_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@FIXUP_RELATIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"  phandle fixup %d+%d->%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  phandle ref '%s'->%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64, i64)* @dtoverlay_apply_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_apply_fixups(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %10, align 8
  br label %20

20:                                               ; preds = %126, %4
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %133

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 58)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %134

33:                                               ; preds = %25
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 58)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %134

43:                                               ; preds = %33
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i64 @strtoul(i8* %46, i8** %13, i32 10)
  store i64 %47, i64* %17, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %43
  %58 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %134

60:                                               ; preds = %51
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8*, i8** %10, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @fdt_path_offset_namelen(i32 %63, i8* %64, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %5, align 4
  br label %134

77:                                               ; preds = %60
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = load i8*, i8** %11, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @fdt_getprop_namelen(i32 %80, i32 %81, i8* %82, i32 %89, i32* %15)
  store i8* %90, i8** %14, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %5, align 4
  br label %134

95:                                               ; preds = %77
  %96 = load i64, i64* %17, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %134

104:                                              ; preds = %95
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* @FIXUP_RELATIVE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i64 @dtoverlay_read_u32(i8* %110, i64 %111)
  %113 = add nsw i64 %109, %112
  store i64 %113, i64* %18, align 8
  %114 = load i64, i64* %8, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %8, align 8
  %118 = sub nsw i64 %116, %117
  %119 = load i64, i64* %18, align 8
  %120 = call i32 (i8*, i8*, i64, ...) @phandle_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %115, i64 %118, i64 %119)
  br label %126

121:                                              ; preds = %104
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %18, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i64, i64* %18, align 8
  %125 = call i32 (i8*, i8*, i64, ...) @phandle_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %123, i64 %124)
  br label %126

126:                                              ; preds = %121, %108
  %127 = load i8*, i8** %14, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %18, align 8
  %130 = call i32 @dtoverlay_write_u32(i8* %127, i64 %128, i64 %129)
  %131 = load i8*, i8** %13, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8* %132, i8** %10, align 8
  br label %20

133:                                              ; preds = %20
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %101, %93, %75, %57, %40, %30
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fdt_path_offset_namelen(i32, i8*, i32) #1

declare dso_local i8* @fdt_getprop_namelen(i32, i32, i8*, i32, i32*) #1

declare dso_local i64 @dtoverlay_read_u32(i8*, i64) #1

declare dso_local i32 @phandle_debug(i8*, i8*, i64, ...) #1

declare dso_local i32 @dtoverlay_write_u32(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
