; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_free.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i64, i64, i64, %struct.TYPE_13__*, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 (i64)* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_mysqld_con_free(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = icmp ne %struct.TYPE_14__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %169

11:                                               ; preds = %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32 (i64)*, i32 (i64)** %20, align 8
  %22 = icmp ne i32 (i64)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32 (i64)*, i32 (i64)** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 %27(i64 %31)
  br label %33

33:                                               ; preds = %23, %17, %11
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 10
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 10
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @network_socket_free(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @network_socket_free(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %3, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = icmp ne %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = call i32 @g_atomic_int_compare_and_exchange(i32* %68, i32 0, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = call i32 @g_atomic_int_dec_and_test(i32* %75)
  br label %77

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %59, %53
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @g_string_free(i64 %81, i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @g_string_free(i64 %86, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @g_string_free(i64 %91, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @g_hash_table_remove_all(i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @g_hash_table_destroy(i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = icmp ne %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %155

106:                                              ; preds = %78
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %4, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %150

114:                                              ; preds = %106
  store i64 0, i64* %5, align 8
  br label %115

115:                                              ; preds = %143, %114
  %116 = load i64, i64* %5, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %115
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call %struct.TYPE_14__* @g_ptr_array_index(%struct.TYPE_14__* %122, i64 %123)
  store %struct.TYPE_14__* %124, %struct.TYPE_14__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %125

125:                                              ; preds = %136, %121
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call %struct.TYPE_14__* @g_ptr_array_index(%struct.TYPE_14__* %132, i64 %133)
  %135 = call i32 @g_free(%struct.TYPE_14__* %134)
  br label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %125

139:                                              ; preds = %125
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @g_ptr_array_free(%struct.TYPE_14__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %5, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %5, align 8
  br label %115

146:                                              ; preds = %115
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i32 @g_ptr_array_free(%struct.TYPE_14__* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %106
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = call i32 @g_free(%struct.TYPE_14__* %153)
  br label %155

155:                                              ; preds = %150, %78
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @TRUE, align 4
  %165 = call i32 @g_string_free(i64 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %168 = call i32 @g_free(%struct.TYPE_14__* %167)
  br label %169

169:                                              ; preds = %166, %10
  ret void
}

declare dso_local i32 @network_socket_free(i64) #1

declare dso_local i32 @g_atomic_int_compare_and_exchange(i32*, i32, i32) #1

declare dso_local i32 @g_atomic_int_dec_and_test(i32*) #1

declare dso_local i32 @g_string_free(i64, i32) #1

declare dso_local i32 @g_hash_table_remove_all(i32) #1

declare dso_local i32 @g_hash_table_destroy(i32) #1

declare dso_local %struct.TYPE_14__* @g_ptr_array_index(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @g_free(%struct.TYPE_14__*) #1

declare dso_local i32 @g_ptr_array_free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
