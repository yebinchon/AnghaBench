; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_unary_minus.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_unary_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* ()* @read_unary_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @read_unary_minus() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = call %struct.TYPE_12__* (...) @read_cast_expr()
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = call i32 @ensure_arithtype(%struct.TYPE_12__* %4)
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @is_inttype(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_12__* @ast_inttype(i32 %14, i32 0)
  %16 = call %struct.TYPE_12__* @conv(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = call %struct.TYPE_12__* @conv(%struct.TYPE_12__* %17)
  %19 = call %struct.TYPE_12__* @binop(i8 signext 45, %struct.TYPE_12__* %16, %struct.TYPE_12__* %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %1, align 8
  br label %27

20:                                               ; preds = %0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_12__* @ast_floattype(i32 %23, i32 0)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = call %struct.TYPE_12__* @binop(i8 signext 45, %struct.TYPE_12__* %24, %struct.TYPE_12__* %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %1, align 8
  br label %27

27:                                               ; preds = %20, %11
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  ret %struct.TYPE_12__* %28
}

declare dso_local %struct.TYPE_12__* @read_cast_expr(...) #1

declare dso_local i32 @ensure_arithtype(%struct.TYPE_12__*) #1

declare dso_local i64 @is_inttype(i32) #1

declare dso_local %struct.TYPE_12__* @binop(i8 signext, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @conv(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @ast_inttype(i32, i32) #1

declare dso_local %struct.TYPE_12__* @ast_floattype(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
