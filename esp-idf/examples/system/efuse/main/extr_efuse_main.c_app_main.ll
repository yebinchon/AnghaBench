; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/efuse/main/extr_efuse_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/efuse/main/extr_efuse_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"This example does not burn any efuse in reality only virtually\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"The part of the code that writes efuse fields is disabled\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = call i32 (...) @get_coding_scheme()
  store i32 %3, i32* %1, align 4
  %4 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 24, i1 false)
  %5 = call i32 @read_efuse_fields(%struct.TYPE_5__* %2)
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 @ESP_LOGW(i32 %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGW(i32 %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @get_coding_scheme(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @read_efuse_fields(%struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
