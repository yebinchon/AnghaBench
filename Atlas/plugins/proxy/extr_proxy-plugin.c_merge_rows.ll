; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_merge_rows.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_merge_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_34__*, %struct.TYPE_30__* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_35__ = type { %struct.TYPE_32__*, %struct.TYPE_28__*, i32, i32, %struct.TYPE_31__, i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_28__*, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_36__ = type { i64, %struct.TYPE_33__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_rows(%struct.TYPE_37__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_36__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %17, %2
  br label %146

33:                                               ; preds = %26
  %34 = call %struct.TYPE_35__* (...) @proxy_resultset_new()
  store %struct.TYPE_35__* %34, %struct.TYPE_35__** %5, align 8
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 2
  %48 = bitcast %struct.TYPE_31__* %45 to i8*
  %49 = bitcast %struct.TYPE_31__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %61 = call i32 @parse_resultset_fields(%struct.TYPE_35__* %60)
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %63, align 8
  store %struct.TYPE_28__* %64, %struct.TYPE_28__** %6, align 8
  br label %65

65:                                               ; preds = %139, %33
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %67 = icmp ne %struct.TYPE_28__* %66, null
  br i1 %67, label %68, label %143

68:                                               ; preds = %65
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  store %struct.TYPE_33__* %71, %struct.TYPE_33__** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = call i32 @network_mysqld_proto_skip_network_header(%struct.TYPE_36__* %7)
  %75 = call i32 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_36__* %7, i32* %8)
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %81 [
    i32 130, label %77
    i32 131, label %77
    i32 129, label %80
    i32 128, label %80
  ]

77:                                               ; preds = %68, %68
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %79 = call i32 @proxy_resultset_free(%struct.TYPE_35__* %78)
  br label %146

80:                                               ; preds = %68, %68
  br label %81

81:                                               ; preds = %68, %80
  %82 = call %struct.TYPE_27__* (...) @g_ptr_array_new()
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %9, align 8
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %88

88:                                               ; preds = %114, %81
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = call i32 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_36__* %7, i32* %8)
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %112 [
    i32 128, label %95
    i32 129, label %97
  ]

95:                                               ; preds = %92
  %96 = call i32 @network_mysqld_proto_skip(%struct.TYPE_36__* %7, i32 1)
  br label %113

97:                                               ; preds = %92
  %98 = call i32 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_36__* %7, i32* %12)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %103, %105
  %107 = load i32, i32* %12, align 4
  %108 = call %struct.TYPE_27__* @g_strndup(i64 %106, i32 %107)
  %109 = call i32 @g_ptr_array_add(%struct.TYPE_27__* %99, %struct.TYPE_27__* %108)
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @network_mysqld_proto_skip(%struct.TYPE_36__* %7, i32 %110)
  br label %113

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %97, %95
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %11, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %88

117:                                              ; preds = %88
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %121, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %124 = call i32 @g_ptr_array_add(%struct.TYPE_27__* %122, %struct.TYPE_27__* %123)
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %117
  br label %143

139:                                              ; preds = %117
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  store %struct.TYPE_28__* %142, %struct.TYPE_28__** %6, align 8
  br label %65

143:                                              ; preds = %138, %65
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %145 = call i32 @proxy_resultset_free(%struct.TYPE_35__* %144)
  br label %146

146:                                              ; preds = %143, %77, %32
  ret void
}

declare dso_local %struct.TYPE_35__* @proxy_resultset_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_resultset_fields(%struct.TYPE_35__*) #1

declare dso_local i32 @network_mysqld_proto_skip_network_header(%struct.TYPE_36__*) #1

declare dso_local i32 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @proxy_resultset_free(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_27__* @g_ptr_array_new(...) #1

declare dso_local i32 @network_mysqld_proto_skip(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @g_ptr_array_add(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @g_strndup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
