; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_cube.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cube(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %166

27:                                               ; preds = %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MIN(i32 %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MIN(i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MIN(i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MAX(i32 %54, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MAX(i32 %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MAX(i32 %68, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = add nsw i32 %76, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = add nsw i32 %81, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %163, %27
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %166

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %159, %92
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %162

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %155, %98
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %158

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %149, label %107

107:                                              ; preds = %104
  store i32 0, i32* %18, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %112, %113
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ true, %107 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %124, %125
  br label %127

127:                                              ; preds = %123, %115
  %128 = phi i1 [ true, %115 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %136, %137
  br label %139

139:                                              ; preds = %135, %127
  %140 = phi i1 [ true, %127 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %155

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %104
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @builder_block(i32 %150, i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %149, %147
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %100

158:                                              ; preds = %100
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %94

162:                                              ; preds = %94
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %88

166:                                              ; preds = %26, %88
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @builder_block(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
