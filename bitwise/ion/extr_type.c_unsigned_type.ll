; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_type.c_unsigned_type.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_type.c_unsigned_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@type_bool = common dso_local global %struct.TYPE_10__* null, align 8
@type_uchar = common dso_local global %struct.TYPE_10__* null, align 8
@type_ushort = common dso_local global %struct.TYPE_10__* null, align 8
@type_uint = common dso_local global %struct.TYPE_10__* null, align 8
@type_ulong = common dso_local global %struct.TYPE_10__* null, align 8
@type_ullong = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @unsigned_type(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 139, label %7
    i32 138, label %9
    i32 134, label %9
    i32 132, label %9
    i32 133, label %11
    i32 128, label %11
    i32 137, label %13
    i32 131, label %13
    i32 135, label %15
    i32 129, label %15
    i32 136, label %17
    i32 130, label %17
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @type_bool, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %2, align 8
  br label %21

9:                                                ; preds = %1, %1, %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @type_uchar, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %2, align 8
  br label %21

11:                                               ; preds = %1, %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @type_ushort, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %2, align 8
  br label %21

13:                                               ; preds = %1, %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @type_uint, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %2, align 8
  br label %21

15:                                               ; preds = %1, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @type_ulong, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %2, align 8
  br label %21

17:                                               ; preds = %1, %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @type_ullong, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %2, align 8
  br label %21

19:                                               ; preds = %1
  %20 = call i32 @assert(i32 0)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9, %7
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %22
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
