; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"logistic\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"batch_normalize\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"shortcut\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_rnn(i32* %0, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @option_find_int(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @option_find_str(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @get_activation(i8* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @option_find_int_quiet(i32* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @make_rnn_layer(i32 %19, i32 %21, i32 %22, i32 %24, i32 %25, i32 %26, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @option_find_int_quiet(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  ret i8* %37
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i8* @make_rnn_layer(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
