; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_equality_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_equality_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@OP_EQ = common dso_local global i32 0, align 4
@OP_NE = common dso_local global i32 0, align 4
@type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @read_equality_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @read_equality_expr() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = call %struct.TYPE_6__* (...) @read_relational_expr()
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @OP_EQ, align 4
  %6 = call i64 @next_token(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @OP_EQ, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = call i32 @conv(%struct.TYPE_6__* %10)
  %12 = call %struct.TYPE_6__* @read_equality_expr()
  %13 = call i32 @conv(%struct.TYPE_6__* %12)
  %14 = call %struct.TYPE_6__* @binop(i32 %9, i32 %11, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %3, align 8
  br label %29

15:                                               ; preds = %0
  %16 = load i32, i32* @OP_NE, align 4
  %17 = call i64 @next_token(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @OP_NE, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = call i32 @conv(%struct.TYPE_6__* %21)
  %23 = call %struct.TYPE_6__* @read_equality_expr()
  %24 = call i32 @conv(%struct.TYPE_6__* %23)
  %25 = call %struct.TYPE_6__* @binop(i32 %20, i32 %22, i32 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %3, align 8
  br label %28

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %1, align 8
  br label %34

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %8
  %30 = load i32, i32* @type_int, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %1, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %35
}

declare dso_local %struct.TYPE_6__* @read_relational_expr(...) #1

declare dso_local i64 @next_token(i32) #1

declare dso_local %struct.TYPE_6__* @binop(i32, i32, i32) #1

declare dso_local i32 @conv(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
