; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_GetFontTexel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_GetFontTexel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@sys_fontwidthtab = common dso_local global i32* null, align 8
@sys_fontimage = common dso_local global i32* null, align 8
@sys_fontdata = common dso_local global %struct.TYPE_2__* null, align 8
@sys_fontcharsinsheet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_GetFontTexel(i32 %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %20 = load i32*, i32** @sys_fontwidthtab, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32*, i32** @sys_fontimage, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %5
  br label %180

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %26
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %48

42:                                               ; preds = %32
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @sys_fontcharsinsheet, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @sys_fontcharsinsheet, align 4
  %54 = srem i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %55, %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32*, i32** @sys_fontimage, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  store i32* %80, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %170, %48
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %173

87:                                               ; preds = %81
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %94, %87
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %170

94:                                               ; preds = %88
  %95 = load i32*, i32** %17, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 8
  %100 = shl i32 %99, 5
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = sdiv i32 %103, 8
  %105 = mul nsw i32 %100, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %95, i64 %106
  store i32* %107, i32** %18, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  %112 = sdiv i32 %111, 8
  %113 = shl i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %108, i64 %114
  store i32* %115, i32** %18, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %117, %118
  %120 = srem i32 %119, 8
  %121 = shl i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32* %123, i32** %18, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %125, %126
  %128 = srem i32 %127, 8
  %129 = sdiv i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  store i32* %131, i32** %18, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sdiv i32 %133, 8
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %135, 1
  %137 = sdiv i32 %136, 8
  %138 = shl i32 %137, 5
  %139 = mul nsw i32 %134, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr i8, i8* %132, i64 %140
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %19, align 8
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %144, %145
  %147 = sdiv i32 %146, 8
  %148 = shl i32 %147, 5
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  store i32* %150, i32** %19, align 8
  %151 = load i32*, i32** %19, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %152, %153
  %155 = srem i32 %154, 8
  %156 = sdiv i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %151, i64 %157
  store i32* %158, i32** %19, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = load i32, i32* %16, align 4
  %161 = srem i32 %160, 8
  %162 = shl i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  store i32* %164, i32** %19, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %19, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %15, align 4
  br label %88

170:                                              ; preds = %88
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %81

173:                                              ; preds = %81
  %174 = load i32*, i32** @sys_fontwidthtab, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %10, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %173, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
