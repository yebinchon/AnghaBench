; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_mysql-myisam-dump.c_network_mysqld_frm_free.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_mysql-myisam-dump.c_network_mysqld_frm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__** }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_mysqld_frm_free(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %156

9:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %11, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = call i32 @network_mysqld_keyinfo_free(%struct.TYPE_11__* %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %34, i32 %35)
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %55, %31
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %50, i64 %51
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = call i32 @network_mysqld_column_def_free(%struct.TYPE_11__* %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %61, i32 %62)
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %82, %58
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %65, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %77, i64 %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call i32 @network_mysqld_screen_free(%struct.TYPE_11__* %80)
  br label %82

82:                                               ; preds = %72
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %3, align 8
  br label %64

85:                                               ; preds = %64
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %88, i32 %89)
  store i64 0, i64* %3, align 8
  br label %91

91:                                               ; preds = %130, %85
  %92 = load i64, i64* %3, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %92, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %91
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %103, align 8
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %104, i64 %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %5, align 8
  store i64 0, i64* %4, align 8
  br label %108

108:                                              ; preds = %123, %99
  %109 = load i64, i64* %4, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = load i64, i64* %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @g_string_free(%struct.TYPE_11__* %120, i32 %121)
  br label %123

123:                                              ; preds = %114
  %124 = load i64, i64* %4, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %4, align 8
  br label %108

126:                                              ; preds = %108
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  br label %91

133:                                              ; preds = %91
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load i32, i32* @TRUE, align 4
  %138 = call i32 @g_ptr_array_free(%struct.TYPE_11__* %136, i32 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i32 @g_string_free(%struct.TYPE_11__* %141, i32 %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @g_string_free(%struct.TYPE_11__* %146, i32 %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i32, i32* @TRUE, align 4
  %153 = call i32 @g_string_free(%struct.TYPE_11__* %151, i32 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = call i32 @g_free(%struct.TYPE_10__* %154)
  br label %156

156:                                              ; preds = %133, %8
  ret void
}

declare dso_local i32 @network_mysqld_keyinfo_free(%struct.TYPE_11__*) #1

declare dso_local i32 @g_ptr_array_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @network_mysqld_column_def_free(%struct.TYPE_11__*) #1

declare dso_local i32 @network_mysqld_screen_free(%struct.TYPE_11__*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @g_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
