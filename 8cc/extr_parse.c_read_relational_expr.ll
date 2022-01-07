; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_relational_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_relational_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@OP_LE = common dso_local global i8 0, align 1
@OP_GE = common dso_local global i8 0, align 1
@type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @read_relational_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @read_relational_expr() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = call %struct.TYPE_6__* (...) @read_shift_expr()
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  br label %3

3:                                                ; preds = %48, %0
  %4 = call i64 @next_token(i8 signext 60)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %8 = call i32 @conv(%struct.TYPE_6__* %7)
  %9 = call %struct.TYPE_6__* (...) @read_shift_expr()
  %10 = call i32 @conv(%struct.TYPE_6__* %9)
  %11 = call %struct.TYPE_6__* @binop(i8 signext 60, i32 %8, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %1, align 8
  br label %48

12:                                               ; preds = %3
  %13 = call i64 @next_token(i8 signext 62)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = call %struct.TYPE_6__* (...) @read_shift_expr()
  %17 = call i32 @conv(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = call i32 @conv(%struct.TYPE_6__* %18)
  %20 = call %struct.TYPE_6__* @binop(i8 signext 60, i32 %17, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %1, align 8
  br label %47

21:                                               ; preds = %12
  %22 = load i8, i8* @OP_LE, align 1
  %23 = call i64 @next_token(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8, i8* @OP_LE, align 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = call i32 @conv(%struct.TYPE_6__* %27)
  %29 = call %struct.TYPE_6__* (...) @read_shift_expr()
  %30 = call i32 @conv(%struct.TYPE_6__* %29)
  %31 = call %struct.TYPE_6__* @binop(i8 signext %26, i32 %28, i32 %30)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %1, align 8
  br label %46

32:                                               ; preds = %21
  %33 = load i8, i8* @OP_GE, align 1
  %34 = call i64 @next_token(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8, i8* @OP_LE, align 1
  %38 = call %struct.TYPE_6__* (...) @read_shift_expr()
  %39 = call i32 @conv(%struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = call i32 @conv(%struct.TYPE_6__* %40)
  %42 = call %struct.TYPE_6__* @binop(i8 signext %37, i32 %39, i32 %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %1, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %44

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %15
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32, i32* @type_int, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %3
}

declare dso_local %struct.TYPE_6__* @read_shift_expr(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local %struct.TYPE_6__* @binop(i8 signext, i32, i32) #1

declare dso_local i32 @conv(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
