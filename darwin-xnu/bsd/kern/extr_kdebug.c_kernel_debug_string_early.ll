; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_string_early.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_string_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE_INFO_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_debug_string_early(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x i64], align 16
  store i8* %0, i8** %2, align 8
  %4 = bitcast [4 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %6 = bitcast i64* %5 to i8*
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @MIN(i32 32, i32 %9)
  %11 = call i32 @strncpy(i8* %6, i8* %7, i32 %10)
  %12 = load i32, i32* @TRACE_INFO_STRING, align 4
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %14 = load i64, i64* %13, align 16
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %18 = load i64, i64* %17, align 16
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @KERNEL_DEBUG_EARLY(i32 %12, i64 %14, i64 %16, i64 %18, i64 %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @KERNEL_DEBUG_EARLY(i32, i64, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
