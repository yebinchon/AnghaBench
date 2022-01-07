; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_process_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_process_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FLOAT_EXCEPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @process_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_float(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_exponent(i32 %11)
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @FLOAT_EXCEPTIONS, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  store i32 16777216, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @get_exponent(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @get_exponent(i32 %28)
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @get_mantissa(i32 %31)
  %33 = add nsw i32 8388608, %32
  store i32 %33, i32* %6, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i32 [ %43, %39 ], [ 0, %44 ]
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @get_mantissa(i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %24
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 25
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %58

57:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @get_exponent(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @get_mantissa(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %84

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @get_sign(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %74
  br label %84

84:                                               ; preds = %83, %69
  br label %122

85:                                               ; preds = %58
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 1, %89
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @get_mantissa(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %120

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @get_mantissa(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %119

114:                                              ; preds = %102
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %97
  br label %121

121:                                              ; preds = %120, %85
  br label %122

122:                                              ; preds = %121, %84
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @get_sign(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 0, %132
  br label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %131
  %137 = phi i32 [ %133, %131 ], [ %135, %134 ]
  %138 = load i32*, i32** %4, align 8
  store i32 %137, i32* %138, align 4
  ret void
}

declare dso_local i32 @get_exponent(i32) #1

declare dso_local i32 @get_mantissa(i32) #1

declare dso_local i64 @get_sign(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
