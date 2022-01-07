; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_defined_op.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_defined_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@TIDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"identifier expected, but got %s\00", align 1
@macros = common dso_local global i32 0, align 4
@cpp_token_one = common dso_local global %struct.TYPE_9__* null, align 8
@cpp_token_zero = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* ()* @read_defined_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @read_defined_op() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = call %struct.TYPE_9__* (...) @lex()
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %1, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %4 = call i64 @is_keyword(%struct.TYPE_9__* %3, i8 signext 40)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call %struct.TYPE_9__* (...) @lex()
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %1, align 8
  %8 = call i32 @expect(i8 signext 41)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TIDENT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %18 = call i32 @tok2s(%struct.TYPE_9__* %17)
  %19 = call i32 @errort(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* @macros, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @map_get(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_token_one, align 8
  br label %31

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_token_zero, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi %struct.TYPE_9__* [ %28, %27 ], [ %30, %29 ]
  ret %struct.TYPE_9__* %32
}

declare dso_local %struct.TYPE_9__* @lex(...) #1

declare dso_local i64 @is_keyword(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @errort(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_9__*) #1

declare dso_local i64 @map_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
