; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_decl_init.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_decl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*)* @read_decl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_decl_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = call i32* (...) @make_vector()
  store i32* %5, i32** %3, align 8
  %6 = call i32 (...) @peek()
  %7 = call i64 @is_keyword(i32 %6, i8 signext 123)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call i64 @is_string(%struct.TYPE_13__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 @read_initializer_list(i32* %14, %struct.TYPE_13__* %15, i32 0, i32 0)
  br label %45

17:                                               ; preds = %9
  %18 = call i32 (...) @read_assignment_expr()
  %19 = call %struct.TYPE_14__* @conv(i32 %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = call i64 @is_arithtype(%struct.TYPE_15__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = call %struct.TYPE_14__* @ast_conv(%struct.TYPE_13__* %36, %struct.TYPE_14__* %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %4, align 8
  br label %39

39:                                               ; preds = %35, %25, %17
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @ast_init(%struct.TYPE_14__* %41, %struct.TYPE_13__* %42, i32 0)
  %44 = call i32 @vec_push(i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %13
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32* @make_vector(...) #1

declare dso_local i64 @is_keyword(i32, i8 signext) #1

declare dso_local i32 @peek(...) #1

declare dso_local i64 @is_string(%struct.TYPE_13__*) #1

declare dso_local i32 @read_initializer_list(i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @conv(i32) #1

declare dso_local i32 @read_assignment_expr(...) #1

declare dso_local i64 @is_arithtype(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @ast_conv(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @ast_init(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
