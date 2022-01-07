; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_compatible_pointer_arith.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_compatible_pointer_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@type_void = common dso_local global %struct.TYPE_9__* null, align 8
@type_char = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compatible_pointer_arith(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = call i64 @is_ptr_type(%struct.TYPE_9__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = call i64 @is_ptr_type(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_9__* @unqualify_type(i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_9__* @unqualify_type(i32 %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %11, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = icmp eq %struct.TYPE_9__* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %68

32:                                               ; preds = %19
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @type_void, align 8
  %35 = icmp eq %struct.TYPE_9__* %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @type_char, align 8
  %39 = icmp eq %struct.TYPE_9__* %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @type_char, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @qualify_type(%struct.TYPE_9__* %42, i32 %45)
  %47 = call i32 @type_ptr(i32 %46)
  %48 = call i32 @set_pointer_promo_type(i32* %41, i32 %47)
  store i32 1, i32* %5, align 4
  br label %68

49:                                               ; preds = %36, %32
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @type_char, align 8
  %52 = icmp eq %struct.TYPE_9__* %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @type_void, align 8
  %56 = icmp eq %struct.TYPE_9__* %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @type_char, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @qualify_type(%struct.TYPE_9__* %59, i32 %62)
  %64 = call i32 @type_ptr(i32 %63)
  %65 = call i32 @set_pointer_promo_type(i32* %58, i32 %64)
  store i32 1, i32* %5, align 4
  br label %68

66:                                               ; preds = %53, %49
  br label %67

67:                                               ; preds = %66, %15, %4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %57, %40, %31
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @is_ptr_type(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @unqualify_type(i32) #1

declare dso_local i32 @set_pointer_promo_type(i32*, i32) #1

declare dso_local i32 @type_ptr(i32) #1

declare dso_local i32 @qualify_type(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
