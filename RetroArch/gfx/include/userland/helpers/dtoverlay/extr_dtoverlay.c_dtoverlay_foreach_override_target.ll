; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_foreach_override_target.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_foreach_override_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"  out of memory\00", align 1
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  phandle %d not found\00", align 1
@DTOVERRIDE_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtoverlay_foreach_override_target(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i32, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i32, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i32, i8*)* %4, i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i32, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %112

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %35 = call i32 @NON_FATAL(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %112

36:                                               ; preds = %27
  %37 = load i8*, i8** %16, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %16, align 8
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %107, %36
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %108

45:                                               ; preds = %42
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @dtoverlay_extract_override(i8* %46, i32* %15, i8** %10, i32* %11, i8** %17, i32* %19, i32* %20, i32* %21)
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @fdt_node_offset_by_phandle(i32 %53, i32 %54)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %23, align 4
  %62 = call i32 @NON_FATAL(i32 %61)
  store i32 %62, i32* %14, align 4
  br label %108

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i8*, i8** %17, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i8* @malloc(i32 %69)
  store i8* %70, i8** %18, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %76 = call i32 @NON_FATAL(i32 %75)
  store i32 %76, i32* %14, align 4
  br label %108

77:                                               ; preds = %67
  %78 = load i8*, i8** %18, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @memcpy(i8* %78, i8* %79, i32 %80)
  %82 = load i8*, i8** %18, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %77, %64
  %87 = load i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i32, i8*)*, i32 (i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i32, i8*)** %12, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = load i32, i32* %23, align 4
  %91 = load i8*, i8** %18, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 %87(i32 %88, %struct.TYPE_5__* %89, i32 %90, i8* %91, i32 %92, i32 %93, i32 %94, i8* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i8*, i8** %18, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i8*, i8** %18, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %99, %86
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* @DTOVERRIDE_END, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %108

107:                                              ; preds = %102
  br label %42

108:                                              ; preds = %106, %73, %58, %42
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %32, %26
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @dtoverlay_error(i8*, ...) #1

declare dso_local i32 @NON_FATAL(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dtoverlay_extract_override(i8*, i32*, i8**, i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @fdt_node_offset_by_phandle(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
