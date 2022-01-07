; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_processor_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_processor_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64, i32, i64, i64, i32, i8*, i32, i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { i64, i64, i64*, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32 }
%struct.processor = type { i32 }

@MAX_CPUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"phys_id %u is too large for MAX_CPUS (%u)\00", align 1
@avail_cpus = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@BootCpuData = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@master_processor = common dso_local global i32 0, align 4
@cpu_signal_handler = common dso_local global i32 0, align 4
@cpu_idle_tickle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ml_processor_register(%struct.TYPE_11__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_CPUS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAX_CPUS, align 8
  %20 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @avail_cpus, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 (...) @ml_get_max_cpu_number()
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21
  %34 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %34, i64* %4, align 8
  br label %189

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 (...) @ml_get_boot_cpu_number()
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = call %struct.TYPE_12__* @cpu_data_alloc(i64 %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %8, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = call i32 @cpu_data_init(%struct.TYPE_12__* %45)
  br label %49

47:                                               ; preds = %35
  store %struct.TYPE_12__* @BootCpuData, %struct.TYPE_12__** %8, align 8
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 13
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i8* @console_cpu_alloc(i64 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %181

64:                                               ; preds = %49
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = call i64 @cpu_data_register(%struct.TYPE_12__* %68)
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %181

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %64
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 11
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 10
  %92 = call i32 @nanoseconds_to_absolutetime(i32 %89, i32* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @kvtophys(i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %155, label %133

133:                                              ; preds = %74
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.processor*
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @master_processor, align 4
  %142 = call i32 @processor_pset(i32 %141)
  %143 = call i32 @processor_init(%struct.processor* %137, i32 %140, i32 %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %133
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @master_processor, align 4
  %153 = call i32 @processor_set_primary(i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %133
  br label %155

155:                                              ; preds = %154, %74
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %6, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i32, i32* @cpu_signal_handler, align 4
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = icmp ne i64* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %155
  %167 = load i64, i64* @cpu_idle_tickle, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i64*, i64** %169, align 8
  store i64 %167, i64* %170, align 8
  br label %171

171:                                              ; preds = %166, %155
  %172 = load i64, i64* %9, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %171
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @early_random_cpu_init(i32 %177)
  br label %179

179:                                              ; preds = %174, %171
  %180 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %180, i64* %4, align 8
  br label %189

181:                                              ; preds = %72, %63
  %182 = load i64, i64* %9, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %186 = call i32 @cpu_data_free(%struct.TYPE_12__* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %188, i64* %4, align 8
  br label %189

189:                                              ; preds = %187, %179, %33
  %190 = load i64, i64* %4, align 8
  ret i64 %190
}

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i64 @ml_get_max_cpu_number(...) #1

declare dso_local i64 @ml_get_boot_cpu_number(...) #1

declare dso_local %struct.TYPE_12__* @cpu_data_alloc(i64) #1

declare dso_local i32 @cpu_data_init(%struct.TYPE_12__*) #1

declare dso_local i8* @console_cpu_alloc(i64) #1

declare dso_local i64 @cpu_data_register(%struct.TYPE_12__*) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

declare dso_local i32 @kvtophys(i32) #1

declare dso_local i32 @processor_init(%struct.processor*, i32, i32) #1

declare dso_local i32 @processor_pset(i32) #1

declare dso_local i32 @processor_set_primary(i64, i32) #1

declare dso_local i32 @early_random_cpu_init(i32) #1

declare dso_local i32 @cpu_data_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
