; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_log_sql.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_log_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_28__*, %struct.TYPE_24__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { double, double, %struct.TYPE_29__*, %struct.TYPE_25__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i64, i32, i64 }

@sql_log_type = common dso_local global i64 0, align 8
@OFF = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"[%02d/%02d/%d %02d:%02d:%02d] C:%s S:\00", align 1
@MYSQLD_PACKET_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s OK %.3f \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s ERR %.3f \22%s\22\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@REALTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_sql(%struct.TYPE_30__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load i64, i64* @sql_log_type, align 8
  %10 = load i64, i64* @OFF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %131

13:                                               ; preds = %2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = fsub double %16, %19
  %21 = fdiv double %20, 1.000000e+03
  %22 = fptrunc double %21 to float
  store float %22, float* %5, align 4
  %23 = load float, float* %5, align 4
  %24 = fptosi float %23 to i64
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** @config, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %131

30:                                               ; preds = %13
  %31 = call %struct.TYPE_20__* @g_string_new(i32* null)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %6, align 8
  %32 = call i32 @time(i32* null)
  store i32 %32, i32* %7, align 4
  %33 = call %struct.tm* @localtime(i32* %7)
  store %struct.tm* %33, %struct.tm** %8, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = load %struct.tm*, %struct.tm** %8, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.tm*, %struct.tm** %8, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tm*, %struct.tm** %8, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1900
  %46 = load %struct.tm*, %struct.tm** %8, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tm*, %struct.tm** %8, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tm*, %struct.tm** %8, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @g_string_printf(%struct.TYPE_20__* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %41, i64 %45, i32 %48, i32 %51, i32 %54, i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MYSQLD_PACKET_OK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %30
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load float, float* %5, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 @g_string_append_printf(%struct.TYPE_20__* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %81, float %82, i64 %88)
  br label %109

90:                                               ; preds = %30
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load float, float* %5, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  %108 = call i32 @g_string_append_printf(%struct.TYPE_20__* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %100, float %101, i64 %107)
  br label %109

109:                                              ; preds = %90, %71
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** @config, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @fwrite(i32 %112, i32 %115, i32 1, i32 %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @g_string_free(%struct.TYPE_20__* %120, i32 %121)
  %123 = load i64, i64* @sql_log_type, align 8
  %124 = load i64, i64* @REALTIME, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %109
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** @config, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @fflush(i32 %129)
  br label %131

131:                                              ; preds = %12, %29, %126, %109
  ret void
}

declare dso_local %struct.TYPE_20__* @g_string_new(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @g_string_printf(%struct.TYPE_20__*, i8*, i64, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_20__*, i8*, i32, float, i64) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
