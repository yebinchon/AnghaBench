; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_eq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.expr* }
%struct.TYPE_3__ = type { i32 }

@trans_count = common dso_local global i32 0, align 4
@DEBUG_EXPR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" ?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expr*, %struct.expr*)* @expr_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_eq(%struct.expr* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %8 = load %struct.expr*, %struct.expr** %4, align 8
  %9 = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.expr*, %struct.expr** %5, align 8
  %12 = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.expr*, %struct.expr** %4, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %100 [
    i32 139, label %20
    i32 138, label %20
    i32 137, label %20
    i32 136, label %20
    i32 134, label %20
    i32 128, label %20
    i32 129, label %43
    i32 132, label %54
    i32 140, label %64
    i32 131, label %64
    i32 135, label %99
    i32 130, label %99
    i32 133, label %99
  ]

20:                                               ; preds = %16, %16, %16, %16, %16, %16
  %21 = load %struct.expr*, %struct.expr** %4, align 8
  %22 = getelementptr inbounds %struct.expr, %struct.expr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.expr*, %struct.expr** %5, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load %struct.expr*, %struct.expr** %4, align 8
  %32 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.expr*, %struct.expr** %5, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %34, %38
  br label %40

40:                                               ; preds = %30, %20
  %41 = phi i1 [ false, %20 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %113

43:                                               ; preds = %16
  %44 = load %struct.expr*, %struct.expr** %4, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.expr*, %struct.expr** %5, align 8
  %49 = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %47, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %113

54:                                               ; preds = %16
  %55 = load %struct.expr*, %struct.expr** %4, align 8
  %56 = getelementptr inbounds %struct.expr, %struct.expr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.expr*, %struct.expr** %57, align 8
  %59 = load %struct.expr*, %struct.expr** %5, align 8
  %60 = getelementptr inbounds %struct.expr, %struct.expr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.expr*, %struct.expr** %61, align 8
  %63 = call i32 @expr_eq(%struct.expr* %58, %struct.expr* %62)
  store i32 %63, i32* %3, align 4
  br label %113

64:                                               ; preds = %16, %16
  %65 = load %struct.expr*, %struct.expr** %4, align 8
  %66 = call %struct.expr* @expr_copy(%struct.expr* %65)
  store %struct.expr* %66, %struct.expr** %4, align 8
  %67 = load %struct.expr*, %struct.expr** %5, align 8
  %68 = call %struct.expr* @expr_copy(%struct.expr* %67)
  store %struct.expr* %68, %struct.expr** %5, align 8
  %69 = load i32, i32* @trans_count, align 4
  store i32 %69, i32* %7, align 4
  %70 = call i32 @expr_eliminate_eq(%struct.expr** %4, %struct.expr** %5)
  %71 = load %struct.expr*, %struct.expr** %4, align 8
  %72 = getelementptr inbounds %struct.expr, %struct.expr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 129
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load %struct.expr*, %struct.expr** %5, align 8
  %77 = getelementptr inbounds %struct.expr, %struct.expr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.expr*, %struct.expr** %4, align 8
  %82 = getelementptr inbounds %struct.expr, %struct.expr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.expr*, %struct.expr** %5, align 8
  %86 = getelementptr inbounds %struct.expr, %struct.expr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %84, %88
  br label %90

90:                                               ; preds = %80, %75, %64
  %91 = phi i1 [ false, %75 ], [ false, %64 ], [ %89, %80 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %6, align 4
  %93 = load %struct.expr*, %struct.expr** %4, align 8
  %94 = call i32 @expr_free(%struct.expr* %93)
  %95 = load %struct.expr*, %struct.expr** %5, align 8
  %96 = call i32 @expr_free(%struct.expr* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* @trans_count, align 4
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %113

99:                                               ; preds = %16, %16, %16
  br label %100

100:                                              ; preds = %99, %16
  %101 = load i64, i64* @DEBUG_EXPR, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.expr*, %struct.expr** %4, align 8
  %105 = load i32, i32* @stdout, align 4
  %106 = call i32 @expr_fprint(%struct.expr* %104, i32 %105)
  %107 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.expr*, %struct.expr** %5, align 8
  %109 = load i32, i32* @stdout, align 4
  %110 = call i32 @expr_fprint(%struct.expr* %108, i32 %109)
  %111 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %103, %100
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %90, %54, %43, %40, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local i32 @expr_eliminate_eq(%struct.expr**, %struct.expr**) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local i32 @expr_fprint(%struct.expr*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
