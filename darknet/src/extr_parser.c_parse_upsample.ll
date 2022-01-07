; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_upsample.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_upsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"scale\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_upsample(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_6__* %6 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %2, i64* %12, align 4
  store i32* %0, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @option_find_int(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @make_upsample_layer(i32 %16, i32 %18, i32 %20, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @option_find_float_quiet(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i32 @make_upsample_layer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @option_find_float_quiet(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
