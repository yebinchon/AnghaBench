; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_append_int_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_append_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @network_mysqld_proto_binary_append_int_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_proto_binary_append_int_type(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = call i64 @network_mysqld_type_get_int(%struct.TYPE_4__* %14, i8** %6, i32* null)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %80

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %74 [
    i32 128, label %27
    i32 129, label %39
    i32 131, label %51
    i32 132, label %51
    i32 130, label %63
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @network_mysqld_proto_append_int8(i32* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ true, %27 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %75

39:                                               ; preds = %23
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @network_mysqld_proto_append_int16(i32* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ true, %39 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %75

51:                                               ; preds = %23, %23
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @network_mysqld_proto_append_int32(i32* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ true, %51 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %10, align 4
  br label %75

63:                                               ; preds = %23
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @network_mysqld_proto_append_int64(i32* %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i1 [ true, %63 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %75

74:                                               ; preds = %23
  store i32 -1, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %71, %60, %48, %36
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 -1, i32 0
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @network_mysqld_type_get_int(%struct.TYPE_4__*, i8**, i32*) #1

declare dso_local i32 @network_mysqld_proto_append_int8(i32*, i8*) #1

declare dso_local i32 @network_mysqld_proto_append_int16(i32*, i8*) #1

declare dso_local i32 @network_mysqld_proto_append_int32(i32*, i8*) #1

declare dso_local i32 @network_mysqld_proto_append_int64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
