; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_verify_expr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_verify_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @verify_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_expr(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %149

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %122 [
    i32 128, label %11
    i32 148, label %11
    i32 146, label %12
    i32 145, label %12
    i32 131, label %12
    i32 139, label %12
    i32 144, label %12
    i32 140, label %12
    i32 141, label %12
    i32 147, label %12
    i32 150, label %12
    i32 129, label %12
    i32 134, label %12
    i32 132, label %12
    i32 137, label %12
    i32 135, label %12
    i32 133, label %12
    i32 136, label %31
    i32 143, label %59
    i32 142, label %59
    i32 130, label %59
    i32 151, label %95
    i32 149, label %95
    i32 138, label %95
  ]

11:                                               ; preds = %7, %7
  store i32 1, i32* %2, align 4
  br label %149

12:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call i32 @verify_expr(%struct.TYPE_3__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %12
  %29 = phi i1 [ false, %12 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %149

31:                                               ; preds = %7
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @verify_expr(%struct.TYPE_3__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %42, i64 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @verify_expr(%struct.TYPE_3__* %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %46, %39
  %55 = phi i1 [ true, %39 ], [ %53, %46 ]
  br label %56

56:                                               ; preds = %54, %31
  %57 = phi i1 [ false, %31 ], [ %55, %54 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %149

59:                                               ; preds = %7, %7, %7
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @verify_expr(%struct.TYPE_3__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @verify_expr(%struct.TYPE_3__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %78, i64 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %85, i64 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @verify_expr(%struct.TYPE_3__* %87)
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %82, %75
  %91 = phi i1 [ true, %75 ], [ %89, %82 ]
  br label %92

92:                                               ; preds = %90, %67, %59
  %93 = phi i1 [ false, %67 ], [ false, %59 ], [ %91, %90 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %149

95:                                               ; preds = %7, %7, %7
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %98, i64 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = call i32 @verify_expr(%struct.TYPE_3__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %95
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %106, i64 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call i32 @verify_expr(%struct.TYPE_3__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %114, i64 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = call i32 @verify_expr(%struct.TYPE_3__* %116)
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %111, %103, %95
  %120 = phi i1 [ false, %103 ], [ false, %95 ], [ %118, %111 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %2, align 4
  br label %149

122:                                              ; preds = %7
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %125, i64 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = call i32 @verify_expr(%struct.TYPE_3__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %122
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = call i32 @verify_expr(%struct.TYPE_3__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %141, i64 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = icmp ne %struct.TYPE_3__* %143, null
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %138, %130, %122
  %147 = phi i1 [ false, %130 ], [ false, %122 ], [ %145, %138 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %146, %119, %92, %56, %28, %11, %6
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
