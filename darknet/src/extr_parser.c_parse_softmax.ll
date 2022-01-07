; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_softmax.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_softmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"noloss\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_softmax(%struct.TYPE_7__* noalias sret %0, i32* %1, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @option_find_int_quiet(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  call void @make_softmax_layer(%struct.TYPE_7__* sret %0, i32 %11, i32 %13, i32 %14)
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @option_find_float_quiet(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  store i8* %16, i8** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @option_find_str(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @read_tree(i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @option_find_float_quiet(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @option_find_int_quiet(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  ret void
}

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local void @make_softmax_layer(%struct.TYPE_7__* sret, i32, i32, i32) #1

declare dso_local i8* @option_find_float_quiet(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i32) #1

declare dso_local i32 @read_tree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
