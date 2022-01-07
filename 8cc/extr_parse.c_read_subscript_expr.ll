; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_subscript_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_subscript_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"subscription expected\00", align 1
@AST_DEREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @read_subscript_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @read_subscript_expr(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = call i32* (...) @peek()
  store i32* %6, i32** %3, align 8
  %7 = call %struct.TYPE_11__* (...) @read_expr()
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @errort(i32* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 @expect(i8 signext 93)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i32 @conv(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call i32 @conv(%struct.TYPE_11__* %17)
  %19 = call %struct.TYPE_11__* @binop(i8 signext 43, i32 %16, i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load i32, i32* @AST_DEREF, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = call %struct.TYPE_11__* @ast_uop(i32 %20, i32 %25, %struct.TYPE_11__* %26)
  ret %struct.TYPE_11__* %27
}

declare dso_local i32* @peek(...) #1

declare dso_local %struct.TYPE_11__* @read_expr(...) #1

declare dso_local i32 @errort(i32*, i8*) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local %struct.TYPE_11__* @binop(i8 signext, i32, i32) #1

declare dso_local i32 @conv(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @ast_uop(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
