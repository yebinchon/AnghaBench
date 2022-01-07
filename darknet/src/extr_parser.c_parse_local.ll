; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_local.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"logistic\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Layer before local layer must output image.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_local(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %1, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %2, i64* %19, align 4
  store i32* %0, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @option_find_int(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @option_find_int(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @option_find_int(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @option_find_int(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @option_find_str(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @get_activation(i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %42, %3
  %49 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @make_local_layer(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  ret i32 %61
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @make_local_layer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
