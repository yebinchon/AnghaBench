; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_binary_row.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_binary_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: coulnd't create type = %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_binary_row(i32* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @network_mysqld_proto_get_int8(i32* %17, i64* %11)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i1 [ true, %20 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 7
  %35 = add nsw i32 %34, 2
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.TYPE_17__* @g_string_sized_new(i32 %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = call i64 @network_mysqld_proto_get_gstring_len(i32* %42, i32 %43, %struct.TYPE_17__* %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %28
  %48 = phi i1 [ true, %28 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %112, %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 0, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i1 [ false, %50 ], [ %58, %53 ]
  br i1 %60, label %61, label %115

61:                                               ; preds = %59
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.TYPE_16__* @g_ptr_array_index(%struct.TYPE_15__* %62, i32 %63)
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %13, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_14__* @network_mysqld_type_new(i32 %67)
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %12, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = icmp eq %struct.TYPE_14__* null, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i32, i32* @G_STRLOC, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @g_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  store i32 -1, i32* %7, align 4
  br label %115

77:                                               ; preds = %61
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 2
  %83 = sdiv i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 2
  %89 = srem i32 %88, 8
  %90 = shl i32 1, %89
  %91 = and i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %77
  %94 = load i32, i32* @TRUE, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %108

97:                                               ; preds = %77
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = call i64 @network_mysqld_proto_binary_get_type(i32* %101, %struct.TYPE_14__* %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi i1 [ true, %97 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %93
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = call i32 @g_ptr_array_add(i32* %109, %struct.TYPE_14__* %110)
  br label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %50

115:                                              ; preds = %71, %59
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i32 @g_string_free(%struct.TYPE_17__* %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 -1, i32 0
  ret i32 %122
}

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i64*) #1

declare dso_local %struct.TYPE_17__* @g_string_sized_new(i32) #1

declare dso_local i64 @network_mysqld_proto_get_gstring_len(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @g_ptr_array_index(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @network_mysqld_type_new(i32) #1

declare dso_local i32 @g_debug(i8*, i32, i32) #1

declare dso_local i64 @network_mysqld_proto_binary_get_type(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @g_ptr_array_add(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
