; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_hit_test_face.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_hit_test_face.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hit_test_face(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %12, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @hit_test(i32 0, i64 %26, i32 %29, i64 %32, i32 %35, i32 %38, i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @is_obstacle(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %157

46:                                               ; preds = %5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hit_test(i32 1, i64 %49, i32 %52, i64 %55, i32 %58, i32 %61, i32* %14, i32* %15, i32* %16)
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %85

77:                                               ; preds = %46
  %78 = load i32, i32* %18, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %19, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  store i32 0, i32* %84, align 4
  store i32 1, i32* %6, align 4
  br label %158

85:                                               ; preds = %80, %77, %46
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %18, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32*, i32** %11, align 8
  store i32 1, i32* %95, align 4
  store i32 1, i32* %6, align 4
  br label %158

96:                                               ; preds = %91, %88, %85
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* %18, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %19, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32*, i32** %11, align 8
  store i32 2, i32* %106, align 4
  store i32 1, i32* %6, align 4
  br label %158

107:                                              ; preds = %102, %99, %96
  %108 = load i32, i32* %17, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %19, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32*, i32** %11, align 8
  store i32 3, i32* %117, align 4
  store i32 1, i32* %6, align 4
  br label %158

118:                                              ; preds = %113, %110, %107
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load i32, i32* %18, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %156

124:                                              ; preds = %121
  %125 = load i32, i32* %19, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = sub nsw i64 %130, %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %136, %138
  %140 = call i32 @atan2f(i64 %133, i64 %139)
  %141 = call i32 @DEGREES(i32 %140)
  %142 = call i32 @roundf(i32 %141)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %127
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 360
  store i32 %147, i32* %20, align 4
  br label %148

148:                                              ; preds = %145, %127
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 45
  %151 = sdiv i32 %150, 90
  %152 = srem i32 %151, 4
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 4, %153
  %155 = load i32*, i32** %11, align 8
  store i32 %154, i32* %155, align 4
  store i32 1, i32* %6, align 4
  br label %158

156:                                              ; preds = %124, %121, %118
  br label %157

157:                                              ; preds = %156, %5
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %148, %116, %105, %94, %83
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @hit_test(i32, i64, i32, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @is_obstacle(i32) #1

declare dso_local i32 @roundf(i32) #1

declare dso_local i32 @DEGREES(i32) #1

declare dso_local i32 @atan2f(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
