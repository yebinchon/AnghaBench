; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_do_read_conditional_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_do_read_conditional_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @do_read_conditional_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @do_read_conditional_expr(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = call i32 (...) @read_comma_expr()
  %10 = call %struct.TYPE_11__* @conv(i32 %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = call i32 @expect(i8 signext 58)
  %12 = call i32 (...) @read_conditional_expr()
  %13 = call %struct.TYPE_11__* @conv(i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32* [ %19, %16 ], [ %23, %20 ]
  store i32* %25, i32** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @is_arithtype(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @is_arithtype(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @usual_arith_conv(i32* %37, i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call %struct.TYPE_11__* @wrap(i32* %45, %struct.TYPE_11__* %46)
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi %struct.TYPE_11__* [ %47, %44 ], [ null, %48 ]
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = call %struct.TYPE_11__* @wrap(i32* %51, %struct.TYPE_11__* %52)
  %54 = call %struct.TYPE_11__* @ast_ternary(i32* %40, %struct.TYPE_11__* %41, %struct.TYPE_11__* %50, %struct.TYPE_11__* %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %2, align 8
  br label %61

55:                                               ; preds = %32, %24
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = call %struct.TYPE_11__* @ast_ternary(i32* %56, %struct.TYPE_11__* %57, %struct.TYPE_11__* %58, %struct.TYPE_11__* %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %2, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %62
}

declare dso_local %struct.TYPE_11__* @conv(i32) #1

declare dso_local i32 @read_comma_expr(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @read_conditional_expr(...) #1

declare dso_local i64 @is_arithtype(i32*) #1

declare dso_local i32* @usual_arith_conv(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @ast_ternary(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @wrap(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
