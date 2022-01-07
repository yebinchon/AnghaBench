; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_davs2.c_avs2_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_davs2.c_avs2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @avs2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avs2_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @AV_RB32(i32* %25)
  %27 = icmp ne i32 %26, 432
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %91, %29
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @avpriv_find_start_code(i32* %35, i32* %36, i32* %4)
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, -256
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %43, label %91

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @ISUNIT(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %43
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %50, %47
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @ISSQH(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ISAVS2(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %105

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  store i32* %72, i32** %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %89

75:                                               ; preds = %61
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @ISPIC(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %88

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @ISEND(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %92

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %79
  br label %89

89:                                               ; preds = %88, %71
  br label %90

90:                                               ; preds = %89, %43
  br label %91

91:                                               ; preds = %90, %34
  br label %30

92:                                               ; preds = %86, %30
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = icmp sge i32 %96, 21
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %98, %95, %92
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %101, %70, %28
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i32*) #1

declare dso_local i64 @ISUNIT(i32) #1

declare dso_local i64 @ISSQH(i32) #1

declare dso_local i32 @ISAVS2(i32) #1

declare dso_local i64 @ISPIC(i32) #1

declare dso_local i64 @ISEND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
