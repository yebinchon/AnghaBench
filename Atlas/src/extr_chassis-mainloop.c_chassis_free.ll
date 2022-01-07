; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-mainloop.c_chassis_free.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-mainloop.c_chassis_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_10__*, %struct.TYPE_11__*, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32 (i32)* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chassis_free(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %172

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %11
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 11
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %24, i64 %25
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = call i32 @g_assert(i32 (i32)* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @chassis_shutdown_hooks_call(i32 %45)
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %66, %42
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 11
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 11
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %5, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = call i32 @chassis_plugin_free(%struct.TYPE_9__* %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %47

69:                                               ; preds = %47
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 11
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %72, i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 10
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 10
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @g_free(%struct.TYPE_10__* %82)
  br label %84

84:                                               ; preds = %79, %69
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 9
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i32 @g_free(%struct.TYPE_10__* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = icmp ne %struct.TYPE_10__* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i32 @g_free(%struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @chassis_stats_free(i64 %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = call i32 @chassis_timestamps_global_free(i32* null)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %6, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = icmp ne %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %143

121:                                              ; preds = %114
  store i64 0, i64* %3, align 8
  br label %122

122:                                              ; preds = %136, %121
  %123 = load i64, i64* %3, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %130, align 8
  %132 = load i64, i64* %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %131, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = call i32 @chassis_event_thread_free(%struct.TYPE_9__* %134)
  br label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %122

139:                                              ; preds = %122
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %114
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = call i32 @g_free(%struct.TYPE_10__* %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = call i32 @g_free(%struct.TYPE_10__* %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @chassis_shutdown_hooks_free(i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @lua_scope_free(i32 %164)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @network_backends_free(i32 %168)
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %171 = call i32 @g_free(%struct.TYPE_10__* %170)
  br label %172

172:                                              ; preds = %153, %9
  ret void
}

declare dso_local i32 @g_assert(i32 (i32)*) #1

declare dso_local i32 @chassis_shutdown_hooks_call(i32) #1

declare dso_local i32 @chassis_plugin_free(%struct.TYPE_9__*) #1

declare dso_local i32 @g_ptr_array_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @g_free(%struct.TYPE_10__*) #1

declare dso_local i32 @chassis_stats_free(i64) #1

declare dso_local i32 @chassis_timestamps_global_free(i32*) #1

declare dso_local i32 @chassis_event_thread_free(%struct.TYPE_9__*) #1

declare dso_local i32 @chassis_shutdown_hooks_free(i32) #1

declare dso_local i32 @lua_scope_free(i32) #1

declare dso_local i32 @network_backends_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
