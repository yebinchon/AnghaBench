; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_modify_user.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_modify_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32* }
%struct.TYPE_35__ = type { %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_30__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_36__ = type { i32 }

@COM_CHANGE_USER = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_28__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modify_user(%struct.TYPE_35__* %0) #0 {
  %2 = alloca %struct.TYPE_35__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %2, align 8
  %10 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %13 = icmp eq %struct.TYPE_30__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %125

15:                                               ; preds = %1
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %3, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %4, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = call i32 @g_string_equal(%struct.TYPE_26__* %30, %struct.TYPE_26__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %125, label %34

34:                                               ; preds = %15
  %35 = call %struct.TYPE_26__* @g_string_new(i32* null)
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %5, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %37 = load i32, i32* @COM_CHANGE_USER, align 4
  %38 = call i32 @g_string_append_c(%struct.TYPE_26__* %36, i32 %37)
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 (%struct.TYPE_26__*, i32, ...) @g_string_append_len(%struct.TYPE_26__* %39, i32 %42, i32 %46)
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** @config, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** @config, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_26__* @g_hash_table_lookup(i32 %55, i32 %58)
  store %struct.TYPE_26__* %59, %struct.TYPE_26__** %6, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %61 = icmp ne %struct.TYPE_26__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %34
  br label %125

63:                                               ; preds = %34
  %64 = call %struct.TYPE_26__* @g_string_sized_new(i32 20)
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %7, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = call i32 @S(%struct.TYPE_26__* %72)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = call i32 @S(%struct.TYPE_26__* %74)
  %76 = call i32 @network_mysqld_proto_password_scramble(%struct.TYPE_26__* %65, i32 %73, i32 %75)
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  %82 = call i32 @g_string_append_c(%struct.TYPE_26__* %77, i32 %81)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = call i32 @S(%struct.TYPE_26__* %84)
  %86 = call i32 (%struct.TYPE_26__*, i32, ...) @g_string_append_len(%struct.TYPE_26__* %83, i32 %85)
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %88 = call i32 @g_string_append_c(%struct.TYPE_26__* %87, i32 0)
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = call %struct.TYPE_36__* @injection_new(i32 6, %struct.TYPE_26__* %89)
  store %struct.TYPE_36__* %90, %struct.TYPE_36__** %8, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %95, align 8
  store %struct.TYPE_34__* %96, %struct.TYPE_34__** %9, align 8
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %102 = call i32 @g_queue_push_head(i32 %100, %struct.TYPE_36__* %101)
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @g_string_truncate(i32 %109, i32 0)
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @g_string_assign(i32 %117, i32 %120)
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @g_string_free(%struct.TYPE_26__* %122, i32 %123)
  br label %125

125:                                              ; preds = %14, %62, %63, %15
  ret void
}

declare dso_local i32 @g_string_equal(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @g_string_new(i32*) #1

declare dso_local i32 @g_string_append_c(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @g_string_append_len(%struct.TYPE_26__*, i32, ...) #1

declare dso_local %struct.TYPE_26__* @g_hash_table_lookup(i32, i32) #1

declare dso_local %struct.TYPE_26__* @g_string_sized_new(i32) #1

declare dso_local i32 @network_mysqld_proto_password_scramble(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @S(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_36__* @injection_new(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @g_queue_push_head(i32, %struct.TYPE_36__*) #1

declare dso_local i32 @g_string_truncate(i32, i32) #1

declare dso_local i32 @g_string_assign(i32, i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
