; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_DrawLineCallback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_DrawLineCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64 }

@leftColumnColor = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vdp1pixelsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* @DrawLineCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawLineCallback(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %19, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @leftColumnColor, i32 0, i32 2), align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @leftColumnColor, i32 0, i32 2), align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @leftColumnColor, i32 0, i32 1), align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @leftColumnColor, i32 0, i32 1), align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @leftColumnColor, i32 0, i32 0), align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @leftColumnColor, i32 0, i32 0), align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %18, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i64 @getpixel(i32 %50, i32 %51, i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %8
  %57 = load i32, i32* %18, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %62, %56
  br label %89

71:                                               ; preds = %8
  %72 = load i32, i32* @vdp1pixelsize, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @putpixel(i32 %75, i32 %76, i32* %77, i32* %78, i32* %79)
  br label %88

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = call i32 @putpixel8(i32 %82, i32 %83, i32* %84, i32* %85, i32* %86)
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 -1, i32* %9, align 4
  br label %96

95:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i64 @getpixel(i32, i32, i32*, i32*) #1

declare dso_local i32 @putpixel(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @putpixel8(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
