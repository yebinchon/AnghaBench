; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_print_search_results.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_print_search_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i8*, i32, i64, i64, i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [58 x i8] c"%s [%ld x %ld %d bpp %s, %lu bytes] %lu -> %lu with '%s'\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @print_search_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_search_results(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  store %struct.display* %0, %struct.display** %2, align 8
  %3 = load %struct.display*, %struct.display** %2, align 8
  %4 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.display*, %struct.display** %2, align 8
  %10 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.display*, %struct.display** %2, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.display*, %struct.display** %2, align 8
  %16 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.display*, %struct.display** %2, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.display*, %struct.display** %2, align 8
  %22 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cts(i32 %23)
  %25 = load %struct.display*, %struct.display** %2, align 8
  %26 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.display*, %struct.display** %2, align 8
  %29 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.display*, %struct.display** %2, align 8
  %32 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.display*, %struct.display** %2, align 8
  %35 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %11, i64 %14, i64 %17, i32 %20, i32 %24, i64 %27, i64 %30, i64 %33, i32 %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @fflush(i32 %38)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64, i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @cts(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
