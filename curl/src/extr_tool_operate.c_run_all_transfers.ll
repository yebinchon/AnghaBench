; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_run_all_transfers.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_run_all_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_transfer = type { i32 }
%struct.GlobalConfig = type { i32, i32, i64 }

@transfers = common dso_local global %struct.per_transfer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.GlobalConfig*, i32*, i32)* @run_all_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_all_transfers(%struct.GlobalConfig* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.GlobalConfig*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.per_transfer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %13 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %16 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %3
  %21 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %22 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @parallel_transfers(%struct.GlobalConfig* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @serial_transfers(%struct.GlobalConfig* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.per_transfer*, %struct.per_transfer** @transfers, align 8
  store %struct.per_transfer* %35, %struct.per_transfer** %9, align 8
  br label %36

36:                                               ; preds = %48, %34
  %37 = load %struct.per_transfer*, %struct.per_transfer** %9, align 8
  %38 = icmp ne %struct.per_transfer* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %41 = load %struct.per_transfer*, %struct.per_transfer** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @post_per_transfer(%struct.GlobalConfig* %40, %struct.per_transfer* %41, i32 %42, i32* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = load %struct.per_transfer*, %struct.per_transfer** %9, align 8
  %50 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clean_getout(i32 %51)
  %53 = load %struct.per_transfer*, %struct.per_transfer** %9, align 8
  %54 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clean_metalink(i32 %55)
  %57 = load %struct.per_transfer*, %struct.per_transfer** %9, align 8
  %58 = call %struct.per_transfer* @del_per_transfer(%struct.per_transfer* %57)
  store %struct.per_transfer* %58, %struct.per_transfer** %9, align 8
  br label %36

59:                                               ; preds = %36
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %62 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %65 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @parallel_transfers(%struct.GlobalConfig*, i32*) #1

declare dso_local i32 @serial_transfers(%struct.GlobalConfig*, i32*) #1

declare dso_local i32 @post_per_transfer(%struct.GlobalConfig*, %struct.per_transfer*, i32, i32*) #1

declare dso_local i32 @clean_getout(i32) #1

declare dso_local i32 @clean_metalink(i32) #1

declare dso_local %struct.per_transfer* @del_per_transfer(%struct.per_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
