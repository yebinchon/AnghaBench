; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_n_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_n_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_select_args = type { i8*, i32, i32*, i32*, i32, i32*, i32, i32, %struct.waitq*, %struct.waitq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i32, i32, i8*, i32*, i32, i32, i32*)* @waitq_select_n_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_select_n_locked(%struct.waitq* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.waitq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.waitq_select_args, align 8
  store %struct.waitq* %0, %struct.waitq** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %19 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 0
  %20 = load i8*, i8** %12, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 1
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 2
  store i32* %17, i32** %23, align 8
  %24 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 3
  %25 = load i32*, i32** %16, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 5
  %29 = load i32*, i32** %13, align 8
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 6
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 7
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 8
  %35 = load %struct.waitq*, %struct.waitq** %9, align 8
  store %struct.waitq* %35, %struct.waitq** %34, align 8
  %36 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %18, i32 0, i32 9
  %37 = load %struct.waitq*, %struct.waitq** %9, align 8
  store %struct.waitq* %37, %struct.waitq** %36, align 8
  %38 = call i32 @do_waitq_select_n_locked(%struct.waitq_select_args* %18)
  %39 = load i32, i32* %17, align 4
  ret i32 %39
}

declare dso_local i32 @do_waitq_select_n_locked(%struct.waitq_select_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
