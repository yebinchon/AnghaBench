; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_shift_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_shift_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@OP_SAL = common dso_local global i32 0, align 4
@OP_SAR = common dso_local global i32 0, align 4
@OP_SHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* ()* @read_shift_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @read_shift_expr() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = call %struct.TYPE_8__* (...) @read_additive_expr()
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %1, align 8
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* @OP_SAL, align 4
  %7 = call i64 @next_token(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* @OP_SAL, align 4
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %5
  %12 = load i32, i32* @OP_SAR, align 4
  %13 = call i64 @next_token(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @OP_SHR, align 4
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @OP_SAR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %11
  br label %45

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %9
  %31 = call %struct.TYPE_8__* (...) @read_additive_expr()
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %3, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %33 = call i32 @ensure_inttype(%struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call i32 @ensure_inttype(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %41 = call i32 @conv(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = call i32 @conv(%struct.TYPE_8__* %42)
  %44 = call %struct.TYPE_8__* @ast_binop(%struct.TYPE_9__* %38, i32 %39, i32 %41, i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %1, align 8
  br label %5

45:                                               ; preds = %28
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  ret %struct.TYPE_8__* %46
}

declare dso_local %struct.TYPE_8__* @read_additive_expr(...) #1

declare dso_local i64 @next_token(i32) #1

declare dso_local i32 @ensure_inttype(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @ast_binop(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @conv(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
