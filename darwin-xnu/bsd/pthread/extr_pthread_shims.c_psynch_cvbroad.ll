; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_psynch_cvbroad.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_psynch_cvbroad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)* }
%struct.psynch_cvbroad_args = type { i32, i32, i32, i32, i32, i32, i32 }

@pthread_functions = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psynch_cvbroad(i32 %0, %struct.psynch_cvbroad_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psynch_cvbroad_args*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.psynch_cvbroad_args* %1, %struct.psynch_cvbroad_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pthread_functions, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %12 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %15 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %18 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %21 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %24 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %27 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.psynch_cvbroad_args*, %struct.psynch_cvbroad_args** %5, align 8
  %30 = getelementptr inbounds %struct.psynch_cvbroad_args, %struct.psynch_cvbroad_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 %9(i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32* %32)
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
