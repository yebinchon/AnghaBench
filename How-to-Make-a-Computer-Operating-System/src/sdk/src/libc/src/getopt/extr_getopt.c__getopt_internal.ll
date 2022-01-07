; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/getopt/extr_getopt.c__getopt_internal.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/getopt/extr_getopt.c__getopt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.option = type { i32 }

@optind = common dso_local global i32 0, align 4
@getopt_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@opterr = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optopt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.option* %3, %struct.option** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @optind, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @getopt_data, i32 0, i32 2), align 4
  %15 = load i32, i32* @opterr, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @getopt_data, i32 0, i32 3), align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.option*, %struct.option** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @_getopt_internal_r(i32 %16, i8** %17, i8* %18, %struct.option* %19, i32* %20, i32 %21, %struct.TYPE_3__* @getopt_data)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @getopt_data, i32 0, i32 2), align 4
  store i32 %23, i32* @optind, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @getopt_data, i32 0, i32 1), align 4
  store i32 %24, i32* @optarg, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @getopt_data, i32 0, i32 0), align 4
  store i32 %25, i32* @optopt, align 4
  %26 = load i32, i32* %13, align 4
  ret i32 %26
}

declare dso_local i32 @_getopt_internal_r(i32, i8**, i8*, %struct.option*, i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
