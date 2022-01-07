; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_single_load.c_load_binary.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_single_load.c_load_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32** }

@O_RDONLY = common dso_local global i32 0, align 4
@BYTES_PER_LINE = common dso_local global i32 0, align 4
@binary = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_SLICE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\\\\x%02X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_binary(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %110

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %20, %15
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @read(i32 %17, i8* %9, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %16

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sitofp i32 %26 to float
  %28 = load i32, i32* @BYTES_PER_LINE, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %27, %29
  %31 = fptosi float %30 to i32
  %32 = call i32 @ceil(i32 %31)
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 0), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 0), align 8
  %34 = call i8* @calloc(i32 %33, i32 8)
  %35 = bitcast i8* %34 to i32**
  store i32** %35, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 1), align 8
  %36 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 1), align 8
  %37 = icmp eq i32** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %110

39:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 0), align 8
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32, i32* @MAX_SLICE_LENGTH, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i8* @calloc(i32 1, i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 1), align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* %48, i32** %52, align 8
  %53 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 1), align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %110

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = call i32 @open(i8* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %110

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %104, %70
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BYTES_PER_LINE, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @read(i32 %77, i8* %9, i32 1)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %101

82:                                               ; preds = %76
  %83 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 1), align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @binary, i32 0, i32 1), align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @strlen(i32* %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %87, i64 %94
  %96 = load i8, i8* %9, align 1
  %97 = call i32 @sprintf(i32* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 zeroext %96)
  br label %98

98:                                               ; preds = %82
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %72

101:                                              ; preds = %81, %72
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %71, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @close(i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %107, %69, %59, %38, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ceil(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
