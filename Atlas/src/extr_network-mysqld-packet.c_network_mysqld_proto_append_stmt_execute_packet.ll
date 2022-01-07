; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_append_stmt_execute_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_append_stmt_execute_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }

@COM_STMT_EXECUTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_append_stmt_execute_packet(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 7
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_19__* @g_string_sized_new(i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %8, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memset(i32* %21, i32 0, i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %54, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.TYPE_17__* @g_ptr_array_index(%struct.TYPE_16__* %33, i32 %34)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %11, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = srem i32 %41, 8
  %43 = shl i32 1, %42
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %43
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %40, %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %26

57:                                               ; preds = %26
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = load i64, i64* @COM_STMT_EXECUTE, align 8
  %60 = call i32 @network_mysqld_proto_append_int8(%struct.TYPE_19__* %58, i64 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @network_mysqld_proto_append_int32(%struct.TYPE_19__* %61, i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @network_mysqld_proto_append_int8(%struct.TYPE_19__* %66, i64 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @network_mysqld_proto_append_int32(%struct.TYPE_19__* %71, i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %78 = call i32 @S(%struct.TYPE_19__* %77)
  %79 = call i32 @g_string_append_len(%struct.TYPE_19__* %76, i32 %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @network_mysqld_proto_append_int8(%struct.TYPE_19__* %80, i64 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %153

89:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %110, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %91, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %90
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call %struct.TYPE_17__* @g_ptr_array_index(%struct.TYPE_16__* %101, i32 %102)
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %12, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @network_mysqld_proto_append_int16(%struct.TYPE_19__* %104, i32 %108)
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %90

113:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %149, %113
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 0, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %118, %123
  br label %125

125:                                              ; preds = %117, %114
  %126 = phi i1 [ false, %114 ], [ %124, %117 ]
  br i1 %126, label %127, label %152

127:                                              ; preds = %125
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call %struct.TYPE_17__* @g_ptr_array_index(%struct.TYPE_16__* %130, i32 %131)
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %13, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %143 = call i64 @network_mysqld_proto_binary_append_type(%struct.TYPE_19__* %141, %struct.TYPE_17__* %142)
  %144 = icmp ne i64 %143, 0
  br label %145

145:                                              ; preds = %140, %137
  %146 = phi i1 [ true, %137 ], [ %144, %140 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %127
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %114

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152, %57
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 -1, i32 0
  ret i32 %157
}

declare dso_local %struct.TYPE_19__* @g_string_sized_new(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @g_ptr_array_index(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @network_mysqld_proto_append_int8(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @network_mysqld_proto_append_int32(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @g_string_append_len(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @S(%struct.TYPE_19__*) #1

declare dso_local i32 @network_mysqld_proto_append_int16(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @network_mysqld_proto_binary_append_type(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
