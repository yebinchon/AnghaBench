; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_is_null_ptr.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_is_null_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i64 }

@type_ullong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_null_ptr(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @is_ptr_type(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @is_integer_type(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11, %6
  %17 = load i32, i32* @type_ullong, align 4
  %18 = call i32 @cast_operand(%struct.TYPE_6__* %0, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @is_ptr_type(i32) #1

declare dso_local i64 @is_integer_type(i32) #1

declare dso_local i32 @cast_operand(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
