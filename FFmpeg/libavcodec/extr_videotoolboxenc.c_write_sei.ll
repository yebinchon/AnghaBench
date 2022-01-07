; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_write_sei.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_write_sei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@AVERROR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*, i64)* @write_sei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_sei(%struct.TYPE_3__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @AVERROR_BUFFER_TOO_SMALL, align 4
  store i32 %26, i32* %5, align 4
  br label %122

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 255, %39 ], [ %41, %40 ]
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %12, align 8
  br label %28

53:                                               ; preds = %34
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @AVERROR_BUFFER_TOO_SMALL, align 4
  store i32 %57, i32* %5, align 4
  br label %122

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ false, %59 ], [ %64, %62 ]
  br i1 %66, label %67, label %86

67:                                               ; preds = %65
  %68 = load i64, i64* %11, align 8
  %69 = icmp ugt i64 %68, 255
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %11, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i64 [ 255, %70 ], [ %72, %71 ]
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %11, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %8, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %12, align 8
  br label %59

86:                                               ; preds = %65
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @AVERROR_BUFFER_TOO_SMALL, align 4
  store i32 %93, i32* %5, align 4
  br label %122

94:                                               ; preds = %86
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %15, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @copy_emulation_prev(i32 %105, i64 %108, i32* %109, i32 %110, i64 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %94
  %116 = load i32, i32* @AVERROR_BUFFER_TOO_SMALL, align 4
  store i32 %116, i32* %5, align 4
  br label %122

117:                                              ; preds = %94
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %115, %92, %56, %25
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @copy_emulation_prev(i32, i64, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
