; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_date_type.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network_mysqld_proto_binary.c_network_mysqld_proto_binary_get_date_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @network_mysqld_proto_binary_get_date_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_proto_binary_get_date_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @network_mysqld_proto_get_int8(i32* %12, i32* %7)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %20 [
    i32 11, label %19
    i32 7, label %19
    i32 4, label %19
    i32 0, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15
  br label %21

20:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %122

21:                                               ; preds = %19
  %22 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 28)
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %31 = call i64 @network_mysqld_proto_get_int16(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ true, %25 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %41 = call i64 @network_mysqld_proto_get_int8(i32* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %51 = call i64 @network_mysqld_proto_get_int8(i32* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ true, %43 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 4
  br i1 %57, label %58, label %103

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %64 = call i64 @network_mysqld_proto_get_int8(i32* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ true, %58 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %74 = call i64 @network_mysqld_proto_get_int8(i32* %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ true, %66 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %84 = call i64 @network_mysqld_proto_get_int8(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ true, %76 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 7
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %97 = call i64 @network_mysqld_proto_get_int32(i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %94, %91
  %100 = phi i1 [ true, %91 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %86
  br label %103

103:                                              ; preds = %102, %53
  br label %104

104:                                              ; preds = %103, %21
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 0, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** %5, align 8
  %112 = call i64 @network_mysqld_type_set_date(i32* %111, %struct.TYPE_4__* %8)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ true, %107 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %104
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 -1, i32 0
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @network_mysqld_proto_get_int16(i32*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_int32(i32*, i32*) #1

declare dso_local i64 @network_mysqld_type_set_date(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
