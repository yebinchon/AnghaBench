; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_crnn.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_crnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"output_filters\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"hidden_filters\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"logistic\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"batch_normalize\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"shortcut\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_crnn(i32* %0, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @option_find_int(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @option_find_int(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @option_find_str(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @get_activation(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @option_find_int_quiet(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @make_crnn_layer(i32 %22, i32 %24, i32 %26, i32 %28, i32 %29, i32 %30, i32 %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @option_find_int_quiet(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  ret i8* %41
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i8* @make_crnn_layer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
