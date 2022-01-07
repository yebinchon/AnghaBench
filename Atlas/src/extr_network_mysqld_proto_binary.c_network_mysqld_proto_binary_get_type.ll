; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_binary_get_type(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 130, label %9
    i32 134, label %9
    i32 139, label %9
    i32 140, label %9
    i32 138, label %9
    i32 144, label %13
    i32 143, label %13
    i32 131, label %13
    i32 132, label %17
    i32 141, label %21
    i32 142, label %25
    i32 146, label %29
    i32 135, label %29
    i32 145, label %29
    i32 129, label %29
    i32 136, label %29
    i32 137, label %29
    i32 133, label %29
    i32 128, label %29
  ]

9:                                                ; preds = %2, %2, %2, %2, %2
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i32 @network_mysqld_proto_binary_get_int_type(i32* %10, %struct.TYPE_9__* %11)
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2, %2, %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = call i32 @network_mysqld_proto_binary_get_date_type(i32* %14, %struct.TYPE_9__* %15)
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = call i32 @network_mysqld_proto_binary_get_time_type(i32* %18, %struct.TYPE_9__* %19)
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @network_mysqld_proto_binary_get_float_type(i32* %22, %struct.TYPE_9__* %23)
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 @network_mysqld_proto_binary_get_double_type(i32* %26, %struct.TYPE_9__* %27)
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = call i32 @network_mysqld_proto_binary_get_string_type(i32* %30, %struct.TYPE_9__* %31)
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29, %25, %21, %17, %13, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @network_mysqld_proto_binary_get_int_type(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @network_mysqld_proto_binary_get_date_type(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @network_mysqld_proto_binary_get_time_type(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @network_mysqld_proto_binary_get_float_type(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @network_mysqld_proto_binary_get_double_type(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @network_mysqld_proto_binary_get_string_type(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
