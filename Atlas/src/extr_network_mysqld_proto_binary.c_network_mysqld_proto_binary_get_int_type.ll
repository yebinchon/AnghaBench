; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_int_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @network_mysqld_proto_binary_get_int_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_proto_binary_get_int_type(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %105 [
    i32 128, label %13
    i32 129, label %36
    i32 131, label %59
    i32 132, label %59
    i32 130, label %82
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @network_mysqld_proto_get_int8(i32* %17, i32* %6)
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ true, %13 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @network_mysqld_type_set_int(%struct.TYPE_4__* %26, i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %25, %20
  %34 = phi i1 [ true, %20 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %106

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @network_mysqld_proto_get_int16(i32* %40, i32* %7)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ true, %36 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @network_mysqld_type_set_int(%struct.TYPE_4__* %49, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %48, %43
  %57 = phi i1 [ true, %43 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %106

59:                                               ; preds = %2, %2
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @network_mysqld_proto_get_int32(i32* %63, i32* %8)
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ true, %59 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @network_mysqld_type_set_int(%struct.TYPE_4__* %72, i32 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %71, %66
  %80 = phi i1 [ true, %66 ], [ %78, %71 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %106

82:                                               ; preds = %2
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @network_mysqld_proto_get_int64(i32* %86, i32* %9)
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ true, %82 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @network_mysqld_type_set_int(%struct.TYPE_4__* %95, i32 %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %94, %89
  %103 = phi i1 [ true, %89 ], [ %101, %94 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %5, align 4
  br label %106

105:                                              ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %102, %79, %56, %33
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 -1, i32 0
  ret i32 %110
}

declare dso_local i32 @network_mysqld_proto_get_int8(i32*, i32*) #1

declare dso_local i32 @network_mysqld_type_set_int(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @network_mysqld_proto_get_int16(i32*, i32*) #1

declare dso_local i32 @network_mysqld_proto_get_int32(i32*, i32*) #1

declare dso_local i32 @network_mysqld_proto_get_int64(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
