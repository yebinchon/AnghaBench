; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_parsedate.c_Curl_gmtime.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_parsedate.c_Curl_gmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_gmtime(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tm* %1, %struct.tm** %5, align 8
  %7 = call %struct.tm* @gmtime(i32* %4)
  store %struct.tm* %7, %struct.tm** %6, align 8
  %8 = load %struct.tm*, %struct.tm** %6, align 8
  %9 = icmp ne %struct.tm* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.tm*, %struct.tm** %5, align 8
  %12 = load %struct.tm*, %struct.tm** %6, align 8
  %13 = bitcast %struct.tm* %11 to i8*
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.tm*, %struct.tm** %6, align 8
  %17 = icmp ne %struct.tm* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @CURLE_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.tm* @gmtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
