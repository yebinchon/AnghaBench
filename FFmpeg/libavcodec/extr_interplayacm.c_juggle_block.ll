; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_juggle_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_juggle_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @juggle_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @juggle_block(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %115

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 9
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 2048, %25
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %28, %103
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = mul i32 %50, 2
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @juggle(i32* %52, i32* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = mul i32 %57, 2
  %59 = load i32*, i32** %8, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  store i32 0, i32* %7, align 4
  %62 = load i32*, i32** %9, align 8
  store i32* %62, i32** %10, align 8
  br label %63

63:                                               ; preds = %76, %45
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %63

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %83, %79
  %81 = load i32, i32* %4, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = udiv i32 %84, 2
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %3, align 4
  %87 = mul i32 %86, 2
  store i32 %87, i32* %3, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @juggle(i32* %88, i32* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = mul i32 %93, 2
  %95 = load i32*, i32** %8, align 8
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %8, align 8
  br label %80

98:                                               ; preds = %80
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ule i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %115

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %107, %110
  %112 = load i32*, i32** %9, align 8
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %9, align 8
  br label %35

115:                                              ; preds = %15, %102
  ret void
}

declare dso_local i32 @juggle(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
