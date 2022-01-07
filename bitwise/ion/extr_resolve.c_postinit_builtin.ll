; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_postinit_builtin.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_postinit_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@current_package = common dso_local global i64 0, align 8
@builtin_package = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Allocator\00", align 1
@SYM_TYPE = common dso_local global i64 0, align 8
@type_allocator = common dso_local global i32 0, align 4
@type_allocator_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postinit_builtin() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i64, i64* @current_package, align 8
  %3 = load i64, i64* @builtin_package, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = call i32 @str_intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.TYPE_3__* @resolve_name(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %1, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SYM_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* @type_allocator, align 4
  %22 = load i32, i32* @type_allocator, align 4
  %23 = call i32 @type_ptr(i32 %22)
  store i32 %23, i32* @type_allocator_ptr, align 4
  br label %24

24:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @resolve_name(i32) #1

declare dso_local i32 @str_intern(i8*) #1

declare dso_local i32 @type_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
