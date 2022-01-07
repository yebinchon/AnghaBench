; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_read_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32*)* @qsynth_read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsynth_read_event(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @qsynth_read_variable(i32* %19, i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %89

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %14, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @qsynth_read_variable(i32* %40, i32* %15)
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %53

46:                                               ; preds = %28
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %50, i32* %7, align 4
  br label %152

51:                                               ; preds = %46
  %52 = load i32*, i32** %13, align 8
  store i32 1, i32* %52, align 4
  br label %85

53:                                               ; preds = %28
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 81
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %60, i32* %7, align 4
  br label %152

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %67, %74
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %75, %81
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %61, %53
  br label %85

85:                                               ; preds = %84, %51
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %14, align 4
  br label %148

89:                                               ; preds = %6
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 240
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 247
  br i1 %102, label %103, label %115

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @qsynth_read_variable(i32* %109, i32* %17)
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %147

115:                                              ; preds = %96
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 128
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %18, align 4
  br label %136

125:                                              ; preds = %115
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %125, %122
  %137 = load i32, i32* %18, align 4
  switch i32 %137, label %144 [
    i32 8, label %138
    i32 9, label %138
    i32 10, label %138
    i32 11, label %138
    i32 14, label %138
    i32 12, label %141
    i32 13, label %141
  ]

138:                                              ; preds = %136, %136, %136, %136, %136
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %14, align 4
  br label %146

141:                                              ; preds = %136, %136
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %145, i32* %7, align 4
  br label %152

146:                                              ; preds = %141, %138
  br label %147

147:                                              ; preds = %146, %103
  br label %148

148:                                              ; preds = %147, %85
  %149 = load i32, i32* %14, align 4
  %150 = load i32*, i32** %9, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %144, %59, %49
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @qsynth_read_variable(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
