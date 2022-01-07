; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_paste.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

@g = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @paste() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
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
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %1, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %2, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i32 @SIGN(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = call i32 @SIGN(i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @SIGN(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = call i32 @SIGN(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @ABS(i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = call i32 @ABS(i64 %77)
  store i32 %78, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %140, %0
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 256
  br i1 %81, label %82, label %143

82:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %136, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %139

87:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %132, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %135

92:                                               ; preds = %88
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %95, %99
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %104, %108
  %110 = call i32 @get_block(i64 %100, i32 %101, i64 %109)
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @builder_block(i64 %118, i32 %121, i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %92
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %88

135:                                              ; preds = %88
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %83

139:                                              ; preds = %83
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %79

143:                                              ; preds = %79
  ret void
}

declare dso_local i32 @SIGN(i64) #1

declare dso_local i32 @ABS(i64) #1

declare dso_local i32 @get_block(i64, i32, i64) #1

declare dso_local i32 @builder_block(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
