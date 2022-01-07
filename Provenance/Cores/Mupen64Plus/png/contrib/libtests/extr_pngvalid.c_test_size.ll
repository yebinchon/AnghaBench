; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_test_size.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_test_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@test_size.hinc = internal constant [5 x i32] [i32 1, i32 3, i32 11, i32 1, i32 5], align 16
@test_size.winc = internal constant [5 x i32] [i32 1, i32 9, i32 5, i32 7, i32 1], align 16
@PNG_INTERLACE_NONE = common dso_local global i32 0, align 4
@PNG_INTERLACE_ADAM7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @test_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_size(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %99, %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %16
  store i32 1, i32* %11, align 4
  br label %21

21:                                               ; preds = %91, %20
  %22 = load i32, i32* %11, align 4
  %23 = icmp sle i32 %22, 16
  br i1 %23, label %24, label %98

24:                                               ; preds = %21
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %83, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp sle i32 %26, 16
  br i1 %27, label %28, label %90

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @DEPTH(i32 %32)
  %34 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @FILEID(i32 %31, i32 %33, i32 0, i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @standard_test(i32* %30, i32 %37, i32 0, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = call i64 @fail(%struct.TYPE_4__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %137

46:                                               ; preds = %28
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @DEPTH(i32 %50)
  %52 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @FILEID(i32 %49, i32 %51, i32 0, i32 %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @standard_test(i32* %48, i32 %55, i32 0, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = call i64 @fail(%struct.TYPE_4__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %137

64:                                               ; preds = %46
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @DEPTH(i32 %68)
  %70 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @FILEID(i32 %67, i32 %69, i32 0, i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @standard_test(i32* %66, i32 %73, i32 1, i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = call i64 @fail(%struct.TYPE_4__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %137

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* @test_size.winc, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %25

90:                                               ; preds = %25
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* @test_size.hinc, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %21

98:                                               ; preds = %21
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %16

102:                                              ; preds = %16
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %133, %102
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %104
  store i32 1, i32* %13, align 4
  br label %109

109:                                              ; preds = %125, %108
  %110 = load i32, i32* %13, align 4
  %111 = icmp sle i32 %110, 16
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  store i32 1, i32* %14, align 4
  br label %113

113:                                              ; preds = %117, %112
  %114 = load i32, i32* %14, align 4
  %115 = icmp sle i32 %114, 16
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* @test_size.winc, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %14, align 4
  br label %113

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* @test_size.hinc, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %109

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %104

136:                                              ; preds = %104
  store i32 1, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %81, %63, %45
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @standard_test(i32*, i32, i32, i32) #1

declare dso_local i32 @FILEID(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DEPTH(i32) #1

declare dso_local i64 @fail(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
