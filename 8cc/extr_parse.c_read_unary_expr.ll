; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_unary_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_unary_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@TKEYWORD = common dso_local global i64 0, align 8
@OP_PRE_INC = common dso_local global i32 0, align 4
@OP_PRE_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_unary_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_unary_expr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = call %struct.TYPE_7__* (...) @get()
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TKEYWORD, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %40 [
    i32 131, label %13
    i32 132, label %15
    i32 129, label %17
    i32 130, label %20
    i32 128, label %23
    i32 38, label %26
    i32 42, label %28
    i32 43, label %31
    i32 45, label %33
    i32 126, label %35
    i32 33, label %38
  ]

13:                                               ; preds = %9
  %14 = call i32* (...) @read_sizeof_operand()
  store i32* %14, i32** %1, align 8
  br label %45

15:                                               ; preds = %9
  %16 = call i32* (...) @read_alignof_operand()
  store i32* %16, i32** %1, align 8
  br label %45

17:                                               ; preds = %9
  %18 = load i32, i32* @OP_PRE_INC, align 4
  %19 = call i32* @read_unary_incdec(i32 %18)
  store i32* %19, i32** %1, align 8
  br label %45

20:                                               ; preds = %9
  %21 = load i32, i32* @OP_PRE_DEC, align 4
  %22 = call i32* @read_unary_incdec(i32 %21)
  store i32* %22, i32** %1, align 8
  br label %45

23:                                               ; preds = %9
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = call i32* @read_label_addr(%struct.TYPE_7__* %24)
  store i32* %25, i32** %1, align 8
  br label %45

26:                                               ; preds = %9
  %27 = call i32* (...) @read_unary_addr()
  store i32* %27, i32** %1, align 8
  br label %45

28:                                               ; preds = %9
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = call i32* @read_unary_deref(%struct.TYPE_7__* %29)
  store i32* %30, i32** %1, align 8
  br label %45

31:                                               ; preds = %9
  %32 = call i32* (...) @read_cast_expr()
  store i32* %32, i32** %1, align 8
  br label %45

33:                                               ; preds = %9
  %34 = call i32* (...) @read_unary_minus()
  store i32* %34, i32** %1, align 8
  br label %45

35:                                               ; preds = %9
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = call i32* @read_unary_bitnot(%struct.TYPE_7__* %36)
  store i32* %37, i32** %1, align 8
  br label %45

38:                                               ; preds = %9
  %39 = call i32* (...) @read_unary_lognot()
  store i32* %39, i32** %1, align 8
  br label %45

40:                                               ; preds = %9
  br label %41

41:                                               ; preds = %40, %0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = call i32 @unget_token(%struct.TYPE_7__* %42)
  %44 = call i32* (...) @read_postfix_expr()
  store i32* %44, i32** %1, align 8
  br label %45

45:                                               ; preds = %41, %38, %35, %33, %31, %28, %26, %23, %20, %17, %15, %13
  %46 = load i32*, i32** %1, align 8
  ret i32* %46
}

declare dso_local %struct.TYPE_7__* @get(...) #1

declare dso_local i32* @read_sizeof_operand(...) #1

declare dso_local i32* @read_alignof_operand(...) #1

declare dso_local i32* @read_unary_incdec(i32) #1

declare dso_local i32* @read_label_addr(%struct.TYPE_7__*) #1

declare dso_local i32* @read_unary_addr(...) #1

declare dso_local i32* @read_unary_deref(%struct.TYPE_7__*) #1

declare dso_local i32* @read_cast_expr(...) #1

declare dso_local i32* @read_unary_minus(...) #1

declare dso_local i32* @read_unary_bitnot(%struct.TYPE_7__*) #1

declare dso_local i32* @read_unary_lognot(...) #1

declare dso_local i32 @unget_token(%struct.TYPE_7__*) #1

declare dso_local i32* @read_postfix_expr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
