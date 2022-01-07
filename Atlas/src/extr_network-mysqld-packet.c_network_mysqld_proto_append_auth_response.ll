; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_append_auth_response.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_append_auth_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@CLIENT_PROTOCOL_41 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_append_auth_response(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @network_mysqld_proto_append_int16(i32* %13, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @network_mysqld_proto_append_int24(i32* %18, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %12
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @S(%struct.TYPE_5__* %33)
  %35 = call i32 @g_string_append_len(i32* %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %12
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @network_mysqld_proto_append_int8(i32* %37, i32 0)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @S(%struct.TYPE_5__* %49)
  %51 = call i32 @g_string_append_len(i32* %46, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @network_mysqld_proto_append_int8(i32* %52, i32 0)
  br label %54

54:                                               ; preds = %45, %36
  br label %119

55:                                               ; preds = %2
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @network_mysqld_proto_append_int32(i32* %56, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @network_mysqld_proto_append_int32(i32* %61, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @network_mysqld_proto_append_int8(i32* %66, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %77, %55
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 23
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @network_mysqld_proto_append_int8(i32* %75, i32 0)
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %71

80:                                               ; preds = %71
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = call i32 @S(%struct.TYPE_5__* %91)
  %93 = call i32 @g_string_append_len(i32* %88, i32 %92)
  br label %94

94:                                               ; preds = %87, %80
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @network_mysqld_proto_append_int8(i32* %95, i32 0)
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = call i32 @S(%struct.TYPE_5__* %100)
  %102 = call i32 @network_mysqld_proto_append_lenenc_string_len(i32* %97, i32 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %94
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = call i32 @S(%struct.TYPE_5__* %113)
  %115 = call i32 @g_string_append_len(i32* %110, i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @network_mysqld_proto_append_int8(i32* %116, i32 0)
  br label %118

118:                                              ; preds = %109, %94
  br label %119

119:                                              ; preds = %118, %54
  ret i32 0
}

declare dso_local i32 @network_mysqld_proto_append_int16(i32*, i32) #1

declare dso_local i32 @network_mysqld_proto_append_int24(i32*, i32) #1

declare dso_local i32 @g_string_append_len(i32*, i32) #1

declare dso_local i32 @S(%struct.TYPE_5__*) #1

declare dso_local i32 @network_mysqld_proto_append_int8(i32*, i32) #1

declare dso_local i32 @network_mysqld_proto_append_int32(i32*, i32) #1

declare dso_local i32 @network_mysqld_proto_append_lenenc_string_len(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
