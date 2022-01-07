; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_work_func.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_work_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_13__**, i32*, i32* }
%struct.TYPE_13__ = type { i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"Starting work at: %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%d job(s) to process\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"json job:\0A%s\00", align 1
@HB_ERROR_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Finished work at: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @work_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @work_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @time(i32* null)
  store i32 %13, i32* %5, align 4
  %14 = call i32 @localtime(i32* %5)
  %15 = call i32 @asctime(i32 %14)
  %16 = call i32 @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @hb_list_count(i32* %19)
  %21 = call i32 @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %165, %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call %struct.TYPE_13__* @hb_list_item(i32* %31, i32 0)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %4, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ false, %22 ], [ %33, %28 ]
  br i1 %35, label %36, label %169

36:                                               ; preds = %34
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = call i32 @hb_list_rem(i32* %42, %struct.TYPE_13__* %43)
  %45 = call i32* (...) @hb_list_init()
  store i32* %45, i32** %7, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %96

50:                                               ; preds = %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @hb_deep_log(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = call i32 @InitWorkState(%struct.TYPE_13__* %55, i32 0, i32 0)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @hb_json_job_scan(i32* %59, i32* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call %struct.TYPE_13__* @hb_json_to_job(i32* %66, i32* %69)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %8, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = icmp eq %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %50
  %74 = call i32 @hb_job_close(%struct.TYPE_13__** %4)
  %75 = call i32 @hb_list_close(i32** %7)
  %76 = load i32, i32* @HB_ERROR_INIT, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  store i32 %76, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32 1, i32* %82, align 4
  br label %169

83:                                               ; preds = %50
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = call i32 @hb_job_close(%struct.TYPE_13__** %4)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %4, align 8
  br label %96

96:                                               ; preds = %83, %36
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @hb_job_setup_passes(i32* %99, %struct.TYPE_13__* %100, i32* %101)
  %103 = call i32 @hb_job_close(%struct.TYPE_13__** %4)
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @hb_list_count(i32* %104)
  store i32 %105, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %144, %96
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %110, %106
  %118 = phi i1 [ false, %106 ], [ %116, %110 ]
  br i1 %118, label %119, label %147

119:                                              ; preds = %117
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call %struct.TYPE_13__* @hb_list_item(i32* %120, i32 %121)
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %4, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %135, align 8
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %136, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @InitWorkState(%struct.TYPE_13__* %137, i32 %139, i32 %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = call i32 @do_job(%struct.TYPE_13__* %142)
  br label %144

144:                                              ; preds = %119
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %106

147:                                              ; preds = %117
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = call i32 @SetWorkStateInfo(%struct.TYPE_13__* %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %151, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %152, align 8
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %162, %147
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call %struct.TYPE_13__* @hb_list_item(i32* %158, i32 %159)
  store %struct.TYPE_13__* %160, %struct.TYPE_13__** %4, align 8
  %161 = call i32 @hb_job_close(%struct.TYPE_13__** %4)
  br label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %153

165:                                              ; preds = %153
  %166 = call i32 @hb_list_close(i32** %7)
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @hb_force_rescan(i32* %167)
  br label %22

169:                                              ; preds = %73, %34
  %170 = call i32 @time(i32* null)
  store i32 %170, i32* %5, align 4
  %171 = call i32 @localtime(i32* %5)
  %172 = call i32 @asctime(i32 %171)
  %173 = call i32 @hb_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %175 = call i32 @free(%struct.TYPE_12__* %174)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @hb_log(i8*, i32) #1

declare dso_local i32 @asctime(i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @hb_list_count(i32*) #1

declare dso_local %struct.TYPE_13__* @hb_list_item(i32*, i32) #1

declare dso_local i32 @hb_list_rem(i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @hb_list_init(...) #1

declare dso_local i32 @hb_deep_log(i32, i8*, i32*) #1

declare dso_local i32 @InitWorkState(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @hb_json_job_scan(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @hb_json_to_job(i32*, i32*) #1

declare dso_local i32 @hb_job_close(%struct.TYPE_13__**) #1

declare dso_local i32 @hb_list_close(i32**) #1

declare dso_local i32 @hb_job_setup_passes(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @do_job(%struct.TYPE_13__*) #1

declare dso_local i32 @SetWorkStateInfo(%struct.TYPE_13__*) #1

declare dso_local i32 @hb_force_rescan(i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
