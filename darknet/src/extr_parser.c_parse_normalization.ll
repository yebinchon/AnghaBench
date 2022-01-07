; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_normalization.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_normalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"kappa\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_normalization(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 4
  store i32* %0, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call float @option_find_float(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store float %15, float* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call float @option_find_float(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store float %17, float* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call float @option_find_float(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store float %19, float* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @option_find_int(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 5)
  store i32 %21, i32* %9, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load float, float* %6, align 4
  %32 = load float, float* %7, align 4
  %33 = load float, float* %8, align 4
  %34 = call i32 @make_normalization_layer(i32 %23, i32 %25, i32 %27, i32 %29, i32 %30, float %31, float %32, float %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local float @option_find_float(i32*, i8*, i32) #1

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i32 @make_normalization_layer(i32, i32, i32, i32, i32, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
